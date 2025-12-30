unit UIndOperacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Mask,
  ToolEdit, Buttons, FMTBcd, DB, DBClient, Provider, SqlExpr, NxCollection,
  ExtCtrls, AdvPanel, Grids;

type
  TfrmIndOperacao = class(TForm)
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
    procedure ImportarIndOp;

  public
    { Public declarations }
  end;

var
  frmIndOperacao: TfrmIndOperacao;

implementation

uses
  DmdDatabase, uUtilPadrao, StrUtils, UTransactionHelper;

{$R *.dfm}

procedure TfrmIndOperacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmIndOperacao.btnImportarClick(Sender: TObject);
begin
  if trim(FilenameEdit1.Text) = '' then
  begin
    ShowMessage('Aquivo não informado!');
    exit;
  end;
  vArquivo := fnc_verifica_Arquivo(FilenameEdit1.Text,'L');

  ImportarIndOp;
end;

procedure TfrmIndOperacao.ImportarIndOp;
var
  SL: TStringList;
  Linha, Codigo, Nome: string;
  i, p: Integer;
  Qry: TSQLQuery;
begin
  SL  := TStringList.Create;
  Qry := TSQLQuery.Create(nil);
  try
    Qry.SQLConnection := dmDatabase.scoDados;

    // ?? LEIA O ARQUIVO DIRETAMENTE
    SL.LoadFromFile(vArquivo);

    // ?? DEBUG (vai mostrar > 0 agora)
    Label3.Caption := IntToStr(SL.Count);

    for i := 0 to SL.Count - 1 do
    begin
      Label5.Caption := IntToStr(i);
      Application.ProcessMessages;

      // ?? CONVERTE UTF-8 ? ANSI POR LINHA
      Linha := Utf8ToAnsiD7(AnsiString(SL[i]));
      Linha := Trim(Linha);

      if Linha = '' then
        Continue;

      p := Pos(';', Linha);
      if p = 0 then
        Continue;

      Codigo := Trim(Copy(Linha, 1, p - 1));
      Nome   := Trim(Copy(Linha, p + 1, MaxInt));

      // ignora cabeçalho ou lixo
      if (Codigo = '') or (Pos('C', Codigo) > 0) then
        Continue;

      Qry.SQL.Text :=
        'INSERT INTO TAB_IND_OPERACAO ' +
        '(ID, CODIGO, NOME, INATIVO) ' +
        'VALUES ' +
        '(NEXT VALUE FOR GEN_TAB_IND_OPERACAO_ID, :COD, :NOME, ''N'')';

      Qry.ParamByName('COD').AsString  := Codigo;
      Qry.ParamByName('NOME').AsString := Nome;

      Qry.ExecSQL;
    end;

  finally
    Qry.Free;
    SL.Free;
  end;
end;

function TfrmIndOperacao.Utf8ToAnsiD7(const S: AnsiString): AnsiString;
var
  W: WideString;
begin
  // Converte UTF-8 (bytes) -> Unicode (WideString)
  W := UTF8Decode(S);
  // Converte Unicode -> ANSI (no codepage do Windows, geralmente 1252)
  Result := AnsiString(W);
end;


function TfrmIndOperacao.fnc_verifica_Arquivo(NomeArquivo,
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

end.

