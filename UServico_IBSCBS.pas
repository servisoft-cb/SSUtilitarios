unit UServico_IBSCBS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Mask,
  ToolEdit, Buttons, FMTBcd, DB, DBClient, Provider, SqlExpr, NxCollection,
  ExtCtrls, AdvPanel, Grids;

type
  TfrmServico_IBSCBS = class(TForm)
    pnlPrincipal: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    FilenameEdit1: TFilenameEdit;
    btnImportar: TNxButton;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImportarClick(Sender: TObject);
  private
    { Private declarations }
    vArquivo: String;
    
    function Utf8ToAnsiD7(const S: AnsiString): AnsiString;
    function fnc_verifica_Arquivo(NomeArquivo, Le_Grava : String) : String;
    procedure ImportarServicoIBSCBS;

  public
    { Public declarations }
  end;

var
  frmServico_IBSCBS: TfrmServico_IBSCBS;

implementation

uses
  DmdDatabase, uUtilPadrao, StrUtils, UTransactionHelper;

{$R *.dfm}

procedure TfrmServico_IBSCBS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmServico_IBSCBS.btnImportarClick(Sender: TObject);
begin
  if trim(FilenameEdit1.Text) = '' then
  begin
    ShowMessage('Aquivo não informado!');
    exit;
  end;
  vArquivo := fnc_verifica_Arquivo(FilenameEdit1.Text,'L');

  ImportarServicoIBSCBS;
end;

function TfrmServico_IBSCBS.Utf8ToAnsiD7(const S: AnsiString): AnsiString;
var
  W: WideString;
begin
  // Converte UTF-8 (bytes) -> Unicode (WideString)
  W := UTF8Decode(S);
  // Converte Unicode -> ANSI (no codepage do Windows, geralmente 1252)
  Result := AnsiString(W);
end;

function TfrmServico_IBSCBS.fnc_verifica_Arquivo(NomeArquivo,
  Le_Grava: String): String;
begin
  if copy(NomeArquivo,1,1) = '"' then
    delete(NomeArquivo,1,1);
  if copy(NomeArquivo,Length(NomeArquivo),1) = '"' then
    delete(NomeArquivo,Length(NomeArquivo),1);
  if (Le_Grava = 'G') and (copy(NomeArquivo,Length(NomeArquivo),1) = '\') then
    delete(NomeArquivo,Length(NomeArquivo),1);
  Result := NomeArquivo;
end;

procedure TfrmServico_IBSCBS.ImportarServicoIBSCBS;
var
  Bytes: TMemoryStream;
  ConteudoUtf8, ConteudoAnsi: AnsiString;
  SL, Cols: TStringList;
  Linha: string;
  i: Integer;

  // valores da linha (efetivos)
  CodLC116, DescLC116, CodNBS, PsOnerosa, AdqExterior, IndOp, CClassTrib: string;

  // valores herdados (contexto)
  UltLC116, UltDescLC116, UltNBS, UltPsOnerosa, UltAdqExterior, UltIndOp, UltCClassTrib: string;

  QryBusca, QryIns, QryServico: TSQLQuery;
  IDServico: Integer;

  procedure SplitLinha(const ALinha: string; ACols: TStringList);
  var
    k: Integer;
    tmp: string;
  begin
    ACols.Clear;
    tmp := '';
    for k := 1 to Length(ALinha) do
    begin
      if ALinha[k] = ';' then
      begin
        ACols.Add(tmp);
        tmp := '';
      end
      else
        tmp := tmp + ALinha[k];
    end;
    ACols.Add(tmp);
  end;

begin
  Bytes := TMemoryStream.Create;
  SL    := TStringList.Create;
  Cols  := TStringList.Create;
  QryBusca   := TSQLQuery.Create(nil);
  QryIns     := TSQLQuery.Create(nil);
  QryServico := TSQLQuery.Create(nil);
  try
    QryBusca.SQLConnection   := dmDatabase.scoDados;
    QryIns.SQLConnection     := dmDatabase.scoDados;
    QryServico.SQLConnection := dmDatabase.scoDados;

    // inicializa contexto
    UltLC116       := '';
    UltDescLC116   := '';
    UltNBS         := '';
    UltPsOnerosa   := '';
    UltAdqExterior := '';
    UltIndOp       := '';
    UltCClassTrib  := '';

    // 1) lê arquivo como bytes
    Bytes.LoadFromFile(vArquivo);
    SetLength(ConteudoUtf8, Bytes.Size);
    if Bytes.Size > 0 then
    begin
      Bytes.Position := 0;
      Bytes.ReadBuffer(ConteudoUtf8[1], Bytes.Size);
    end;

    // 2) UTF8 -> ANSI
    ConteudoAnsi := Utf8ToAnsiD7(ConteudoUtf8);

    // 3) remove BOM
    if (Length(ConteudoAnsi) >= 3) and
       (Ord(ConteudoAnsi[1]) = $EF) and
       (Ord(ConteudoAnsi[2]) = $BB) and
       (Ord(ConteudoAnsi[3]) = $BF) then
      Delete(ConteudoAnsi, 1, 3);

    // 4) carrega linhas
    while Pos(#0, ConteudoAnsi) > 0 do
      Delete(ConteudoAnsi, Pos(#0, ConteudoAnsi), 1);
    SetString(Linha, PAnsiChar(ConteudoAnsi), Length(ConteudoAnsi));
    SL.Text := Linha;

    // 1) carrega arquivo DIRETO no TStringList
    SL.LoadFromFile(vArquivo);

    // remove BOM se existir (Excel UTF-8)
    if (SL.Count > 0) and (Copy(SL[0],1,1) = #$FEFF) then
      SL[0] := Copy(SL[0],2,MaxInt);

    Label3.Caption := IntToStr(SL.Count);

    Label3.Caption := IntToStr(SL.Count);

    // começa em 1 para ignorar cabeçalho
    for i := 1 to SL.Count - 1 do
    begin
      Label5.Caption := IntToStr(i);
      Application.ProcessMessages;

      Linha := Trim(SL[i]);
      if Linha = '' then
        Continue;

      SplitLinha(Linha, Cols);

      // AGORA tem 7 colunas (incluiu a descrição)
      if Cols.Count < 7 then
        Continue;

      // ===== atualiza contexto (SE vier valor) =====
      if Trim(Cols[0]) <> '' then UltLC116       := Trim(Cols[0]); // LC116
      if Trim(Cols[1]) <> '' then UltDescLC116   := Trim(Cols[1]); // Descrição LC116
      if Trim(Cols[2]) <> '' then UltNBS         := Trim(Cols[2]); // NBS
      if Trim(Cols[3]) <> '' then UltPsOnerosa   := Trim(Cols[3]); // PS
      if Trim(Cols[4]) <> '' then UltAdqExterior := Trim(Cols[4]); // ADQ
      if Trim(Cols[5]) <> '' then UltIndOp       := Trim(Cols[5]); // INDOP
      if Trim(Cols[6]) <> '' then UltCClassTrib  := Trim(Cols[6]); // cClasstrib

      // monta valores efetivos (sempre herdando)
      CodLC116     := UltLC116;
      DescLC116    := UltDescLC116;
      CodNBS       := UltNBS;
      PsOnerosa    := UltPsOnerosa;
      AdqExterior  := UltAdqExterior;
      IndOp        := UltIndOp;
      CClassTrib   := UltCClassTrib;

      // se ainda não tem contexto mínimo, pula (só no início do arquivo)
      if (CodLC116 = '') and (CodNBS = '') then
        Continue;

      // busca ID do serviço
      QryBusca.Close;
      QryBusca.SQL.Text :=
        'SELECT ID FROM SERVICO WHERE CODIGO = :COD';
      QryBusca.ParamByName('COD').AsString := CodLC116;
      QryBusca.Open;

      // NÃO ACHOU? cria o serviço e busca o ID
      if QryBusca.IsEmpty then
      begin
        QryServico.Close;
        QryServico.SQL.Text :=
          'INSERT INTO SERVICO (ID, CODIGO, NOME, TIPO_AS) ' +
          'VALUES (NEXT VALUE FOR GEN_SERVICO_ID, :COD, :NOME, ''A'')';
        QryServico.ParamByName('COD').AsString  := CodLC116;
        QryServico.ParamByName('NOME').AsString := Copy(DescLC116, 1, 500);
        QryServico.ExecSQL;

        QryBusca.Close;
        QryBusca.Open;
      end;

      if QryBusca.IsEmpty then
        Continue;

      IDServico := QryBusca.FieldByName('ID').AsInteger;

      // insert
      QryIns.Close;
      QryIns.SQL.Text :=
        'INSERT INTO SERVICO_IBSCBS ' +
        '(ID, ID_SERVICO, CODIGO_NBS, PS_ONEROSA, ADQ_EXTERIOR, IND_OP, CCLASSTRIB, INATIVO) ' +
        'VALUES ' +
        '(NEXT VALUE FOR GEN_SERVICO_IBSCBS_ID, :IDSERV, :NBS, :PS, :ADQ, :INDOP, :CC, ''N'')';

      QryIns.ParamByName('IDSERV').AsInteger := IDServico;
      QryIns.ParamByName('NBS').AsString    := Copy(CodNBS, 1, 15);
      QryIns.ParamByName('PS').AsString     := Copy(PsOnerosa, 1, 1);
      QryIns.ParamByName('ADQ').AsString    := Copy(AdqExterior, 1, 1);
      QryIns.ParamByName('INDOP').AsString  := Copy(IndOp, 1, 6);
      QryIns.ParamByName('CC').AsString     := Monta_Numero(Copy(CClassTrib, 1, 6),6);

      QryIns.ExecSQL;
    end;

  finally
    QryServico.Free;
    QryIns.Free;
    QryBusca.Free;
    Cols.Free;
    SL.Free;
    Bytes.Free;
  end;
end;

end.

