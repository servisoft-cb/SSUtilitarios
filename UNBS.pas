unit UNBS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Mask,
  ToolEdit, Buttons, FMTBcd, DB, DBClient, Provider, SqlExpr, NxCollection,
  ExtCtrls, AdvPanel, Grids;

type
  TfrmNBS = class(TForm)
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
    
    procedure ImportarNBS;
    function Utf8ToAnsiD7(const S: AnsiString): AnsiString;
    function fnc_verifica_Arquivo(NomeArquivo, Le_Grava : String) : String;

  public
    { Public declarations }
  end;

var
  frmNBS: TfrmNBS;

implementation

uses
  DmdDatabase, uUtilPadrao, StrUtils, UTransactionHelper;

{$R *.dfm}

procedure TfrmNBS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmNBS.btnImportarClick(Sender: TObject);
begin
  if trim(FilenameEdit1.Text) = '' then
  begin
    ShowMessage('Aquivo não informado!');
    exit;
  end;
  vArquivo := fnc_verifica_Arquivo(FilenameEdit1.Text,'L');

  ImportarNBS;

end;

procedure TfrmNBS.ImportarNBS;
var
  Bytes: TMemoryStream;
  ConteudoUtf8, ConteudoAnsi: AnsiString;
  SL: TStringList;
  Linha, CodNBS, DescNBS, CodNum, Tipo: string;
  i, p: Integer;
  Qry: TSQLQuery;
  vCont: Integer;
begin
  Bytes := TMemoryStream.Create;
  SL    := TStringList.Create;
  Qry   := TSQLQuery.Create(nil);
  try
    // 1) Lê o arquivo como bytes (não como texto ANSI)
    Bytes.LoadFromFile(vArquivo);
    SetLength(ConteudoUtf8, Bytes.Size);
    if Bytes.Size > 0 then
    begin
      Bytes.Position := 0;
      Bytes.ReadBuffer(ConteudoUtf8[1], Bytes.Size);
    end;

    // 2) Converte UTF-8 -> ANSI (corrige acentos no Delphi 7)
    ConteudoAnsi := Utf8ToAnsiD7(ConteudoUtf8);

    // 3) Joga em TStringList para separar por linhas
    SL.Text := ConteudoAnsi;

    Qry.SQLConnection := dmDatabase.scoDados;
    Label3.Caption := FormatFloat('###,###',SL.Count-1);
    vCont := 0;

    for i := 0 to SL.Count - 1 do
    begin
      vCont := vCont + 1;
      Label5.Caption := FormatFloat('###,###',vCont);
      Application.ProcessMessages;

      Linha := Trim(SL[i]);
      if Linha = '' then
        Continue;

      p := Pos(';', Linha);
      if p = 0 then
        Continue;

      CodNBS  := Trim(Copy(Linha, 1, p - 1));
      DescNBS := Trim(Copy(Linha, p + 1, MaxInt));

      if (CodNBS = '') or (posex('NBS',CodNBS) > 0) then
        Continue;

      CodNum := StringReplace(CodNBS, '.', '', [rfReplaceAll]);

      if Length(CodNum) = 9 then
        Tipo := 'A'
      else
        Tipo := 'S';

      Qry.SQL.Text :=
        'INSERT INTO TAB_NBS ' +
        '(ID, COD_NBS, COD_NBS_NUM, DESCRICAO, TIPO, INATIVO) ' +
        'VALUES ' +
        '(NEXT VALUE FOR GEN_TAB_NBS_ID, :COD, :NUM, :DESC, :TIPO, ''N'')';

      Qry.ParamByName('COD').AsString  := CodNBS;
      Qry.ParamByName('NUM').AsString  := CodNum;
      Qry.ParamByName('DESC').AsString := TirarAcento( DescNBS);
      Qry.ParamByName('TIPO').AsString := Tipo;

      Qry.ExecSQL;
    end;

  finally
    Qry.Free;
    SL.Free;
    Bytes.Free;
  end;
end;

function TfrmNBS.Utf8ToAnsiD7(const S: AnsiString): AnsiString;
var
  W: WideString;
begin
  // Converte UTF-8 (bytes) -> Unicode (WideString)
  W := UTF8Decode(S);
  // Converte Unicode -> ANSI (no codepage do Windows, geralmente 1252)
  Result := AnsiString(W);
end;


function TfrmNBS.fnc_verifica_Arquivo(NomeArquivo,
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

