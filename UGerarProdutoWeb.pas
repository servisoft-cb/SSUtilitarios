unit UGerarProdutoWeb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxCollection, UDMCadProduto, StdCtrls, Grids, DBGrids, SMDBGrid, SqlExpr;

type
  TfrmGerarProdutoWeb = class(TForm)
    NxPanel1: TNxPanel;
    Label68: TLabel;
    ComboBox2: TComboBox;
    NxButton1: TNxButton;
    SMDBGrid1: TSMDBGrid;
    NxButton2: TNxButton;
    NxLabel1: TNxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
  private
    { Private declarations }
    fDMCadProduto: TdmCadProduto;

    procedure prc_Consultar;

  public
    { Public declarations }
  end;

var
  frmGerarProdutoWeb: TfrmGerarProdutoWeb;

implementation

uses rsDBUtils, uUtilPadrao, DmdDatabase;

{$R *.dfm}

procedure TfrmGerarProdutoWeb.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmGerarProdutoWeb.FormShow(Sender: TObject);
begin
  fDMCadProduto := TdmCadProduto.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadProduto);
end;

procedure TfrmGerarProdutoWeb.NxButton1Click(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmGerarProdutoWeb.prc_Consultar;
var
  vComando : String;
begin
  vComando := ' WHERE PRO.INATIVO = ' + QuotedStr('N') + '  and coalesce(pro.gerar_web,' + QuotedStr('N') + ') = ' + QuotedStr('N');
  case ComboBox2.ItemIndex of
    0 : vComando := vComando + ' AND PRO.TIPO_REG = ' + QuotedStr('P');
    1 : vComando := vComando + ' AND PRO.TIPO_REG = ' + QuotedStr('M');
    2 : vComando := vComando + ' AND PRO.TIPO_REG = ' + QuotedStr('C');
    3 : vComando := vComando + ' AND PRO.TIPO_REG = ' + QuotedStr('I');
    4 : vComando := vComando + ' AND PRO.TIPO_REG = ' + QuotedStr('S');
  end;
  fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.ctConsulta + vComando;
  fDMCadProduto.cdsProduto_Consulta.Open;
end;

procedure TfrmGerarProdutoWeb.NxButton2Click(Sender: TObject);
var
  Form: TForm;
  vContador: Integer;
  sds: TSQLDataSet;
begin
  if not(fDMCadProduto.cdsProduto_Consulta.Active) or (fDMCadProduto.cdsProduto_Consulta.IsEmpty) then
  begin
    MessageDlg('*** Fazer primeiro a consulta!', mtInformation, [mbOk], 0);
    exit;
  end;

  if MessageDlg('Confirma a geração dos produtos selecionados para WEB/APP?',mtConfirmation,[mbYes,mbNo],0) <> mrYes then
    exit;
  vContador := 0;
  Form := TForm.Create(Application);
  sds  := TSQLDataSet.Create(nil);
  SMDBGrid1.DisableScroll;
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    uUtilPadrao.prc_Form_Aguarde(Form);
    fDMCadProduto.cdsProduto_Consulta.First;
    while not fDMCadProduto.cdsProduto_Consulta.Eof do
    begin
      if (SMDBGrid1.SelectedRows.CurrentRowSelected) and (StrToFloat(FormatFloat('0.000',fDMCadProduto.cdsProduto_ConsultaPRECO_VENDA.AsFloat)) > 0) then
      begin
        fDMCadProduto.prc_Localizar(fDMCadProduto.cdsProduto_ConsultaID.AsInteger);
        if fDMCadProduto.cdsProdutoGERAR_WEB.AsString <> 'S' then
        begin
          sds.Close;
          sds.CommandText := 'update PRODUTO P set P.GERAR_WEB = ' + QuotedStr('S') + ' where P.ID = :ID ';
          sds.ParamByName('ID').AsInteger := fDMCadProduto.cdsProduto_ConsultaID.AsInteger;
          sds.ExecSQL;
          vContador := vContador + 1;
        end;
      end;
      fDMCadProduto.cdsProduto_Consulta.Next;
    end;
  finally
    begin
      prc_Consultar;
      SMDBGrid1.ClearFilter;
      SMDBGrid1.UnSelectAllClick(Sender);
      FreeAndNil(Form);
      SMDBGrid1.EnableScroll;
    end;
  end;
  MessageDlg('*** Total de produtos gerados: ' + IntToStr(vContador), mtConfirmation, [mbOk], 0);
end;

end.
