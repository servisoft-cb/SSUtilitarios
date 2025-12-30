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
  CodLC116, CodNBS, PsOnerosa, AdqExterior, IndOp, CClassTrib: string;

  // valores herdados (contexto)
  UltLC116, UltNBS, UltPsOnerosa, UltAdqExterior, UltIndOp, UltCClassTrib: string;

  QryBusca, QryIns: TSQLQuery;
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
  QryBusca := TSQLQuery.Create(nil);
  QryIns   := TSQLQuery.Create(nil);
  try
    QryBusca.SQLConnection := dmDatabase.scoDados;
    QryIns.SQLConnection   := dmDatabase.scoDados;

    // inicializa contexto
    UltLC116       := '';
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
    SetString(Linha, PAnsiChar(ConteudoAnsi), Length(ConteudoAnsi));
    SL.Text := Linha;

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
      if Cols.Count < 6 then
        Continue;

      // ===== atualiza contexto (SE vier valor) =====
      if Trim(Cols[0]) <> '' then UltLC116       := Trim(Cols[0]);
      if Trim(Cols[1]) <> '' then UltNBS         := Trim(Cols[1]);
      if Trim(Cols[2]) <> '' then UltPsOnerosa   := Trim(Cols[2]);
      if Trim(Cols[3]) <> '' then UltAdqExterior := Trim(Cols[3]);
      if Trim(Cols[4]) <> '' then UltIndOp       := Trim(Cols[4]);
      if Trim(Cols[5]) <> '' then UltCClassTrib  := Trim(Cols[5]);

      // monta valores efetivos (sempre herdando)
      CodLC116     := UltLC116;
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
      QryIns.ParamByName('NBS').AsString    := CodNBS;
      QryIns.ParamByName('PS').AsString     := Copy(PsOnerosa, 1, 1);
      QryIns.ParamByName('ADQ').AsString    := Copy(AdqExterior, 1, 1);
      QryIns.ParamByName('INDOP').AsString  := Copy(IndOp, 1, 6);
      QryIns.ParamByName('CC').AsString     := Copy(CClassTrib, 1, 6);

      QryIns.ExecSQL;
    end;

  finally
    QryIns.Free;
    QryBusca.Free;
    Cols.Free;
    SL.Free;
    Bytes.Free;
  end;
end;

end.

