unit UImportarCTN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, FMTBcd, DB, SqlExpr, Provider,
  DBClient, CurrEdit, NxCollection, Grids, ComObj, UDMCadServico;

type
  TfrmImportarCTN = class(TForm)
    Label1: TLabel;
    ceTotal: TCurrencyEdit;
    btnImportar: TNxButton;
    Label4: TLabel;
    ceLidos: TCurrencyEdit;
    Label5: TLabel;
    FilenameEdit2: TFilenameEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImportarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    fDMCadServico : TDMCadServico;

    vArquivo_XLS : String;
    Linha : Integer;
    vArqTxt: TStringList;

    function fnc_verifica_Arquivo(NomeArquivo, Le_Grava : String) : String;
    procedure prc_Le_Arquivo_CSV;

  public
    { Public declarations }
  end;

var
  frmImportarCTN: TfrmImportarCTN;

implementation

uses DmdDatabase, StdConvs, rsDBUtils, uUtilPadrao;

{$R *.dfm}

function TfrmImportarCTN.fnc_verifica_Arquivo(NomeArquivo,
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

procedure TfrmImportarCTN.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmImportarCTN.btnImportarClick(Sender: TObject);
begin
  if (trim(FilenameEdit2.Text) = '') then
  begin
    MessageDlg('*** Arquivo não informado!', mtInformation, [mbOk], 0);
    exit;
  end;
  vArquivo_XLS := fnc_verifica_Arquivo(FilenameEdit2.Text,'L');
  prc_Le_Arquivo_CSV;
end;

procedure TfrmImportarCTN.FormShow(Sender: TObject);
begin
  fDMCadServico := TDMCadServico.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadServico);
end;

procedure TfrmImportarCTN.prc_Le_Arquivo_CSV;
var
  vTexto1 : String;
  sds: TSQLDataSet;
  Form: TForm;
  vArqCSV: TStringList;
  i: Integer;
begin
  vArqCSV := TStringList.Create;
  vArqCSV.LoadFromFile(vArquivo_XLS);
  ceTotal.AsInteger := vArqCSV.Count;
  Linha := 0;
  vArqTxt := TStringList.Create;
  Form := TForm.Create(Application);
  sds := TSQLDataSet.Create(nil);
  try
    uUtilPadrao.prc_Form_Aguarde(Form);
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    for i := 0 to vArqCSV.Count - 1 do
    begin
      Linha := Linha + 1;
      ceLidos.AsInteger := Linha;
      Application.ProcessMessages;
      try
        vTexto1 := vArqCSV.Strings[i];
        if trim(vTexto1) <> '' then
        begin
          fDMCadServico.prc_Localizar(-1);
          fDMCadServico.prc_Inserir;
          fDMCadServico.cdsServicoCODIGO.AsString := copy(vTexto1,1,8);
          delete(vTexto1,1,8);
          fDMCadServico.cdsServicoNOME.AsString     := TirarAcento(vTexto1);
          fDMCadServico.cdsServicoNACIONAL.AsString := 'S';
          fDMCadServico.cdsServicoTIPO_AS.AsString  := 'A';
          fDMCadServico.prc_Gravar;
        end;
      except
        on e: Exception do
          ShowMessage('Ocorreu o seguinte erro ao gravar, Serviço CTN , na linha ' + IntToStr(linha) + ' :' + #13 + e.Message);
      end;
    end;
  finally
    begin
      FreeAndNil(sds);
      FreeAndNil(Form);
      FreeAndNil(vArqTxt);
      FreeAndNil(vArqCSV);
    end;
  end;
  MessageDlg('Tabela do Serviço Nacional CTN Convertida!', mtConfirmation, [mbOk], 0);
end;

end.
