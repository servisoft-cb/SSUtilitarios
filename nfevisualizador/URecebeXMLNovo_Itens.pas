unit uRecebeXMLNovo_Itens;

interface

uses
  inifiles, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, xmldom, Grids, DBGrids, DB,
  Xmlxform, ExtCtrls, StdCtrls, ComCtrls, Mask, DBCtrls, RXDBCtrl, SMDBGrid, Buttons, DBTables, ToolEdit, RxLookup, DBXpress,
  UDMRecebeXML, UCBase, ShellApi, NxCollection, StrUtils, StdConvs, DateUtils, CurrEdit, RxDBComb, DBClient, XMLIntf, msxmldom,
  XMLDoc, RzPanel;

type
  TfrmRecebeXMLNovo_Itens = class(TForm)
    OpenDialog1: TOpenDialog;
    UCControls1: TUCControls;
    XMLDocument1: TXMLDocument;
    gbxVendedor: TRzGroupBox;
    Label94: TLabel;
    Label95: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label104: TLabel;
    Label121: TLabel;
    Label127: TLabel;
    Label128: TLabel;
    Label136: TLabel;
    Label105: TLabel;
    Label137: TLabel;
    Label138: TLabel;
    Label139: TLabel;
    Label140: TLabel;
    Label141: TLabel;
    Label142: TLabel;
    Label143: TLabel;
    Label144: TLabel;
    Label150: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    RxDBLookupCombo3: TRxDBLookupCombo;
    DBEdit66: TDBEdit;
    RxDBLookup_CFOPNFCe: TRxDBLookupCombo;
    DBEdit78: TDBEdit;
    DBEdit79: TDBEdit;
    DBEdit84: TDBEdit;
    DBEdit67: TDBEdit;
    DBEdit85: TDBEdit;
    DBEdit86: TDBEdit;
    DBEdit87: TDBEdit;
    DBEdit88: TDBEdit;
    DBEdit89: TDBEdit;
    DBEdit90: TDBEdit;
    DBEdit91: TDBEdit;
    DBEdit92: TDBEdit;
    DBEdit93: TDBEdit;
    RzGroupBox1: TRzGroupBox;
    RzGroupBox2: TRzGroupBox;
    Label146: TLabel;
    RxDBComboBox3: TRxDBComboBox;
    Label147: TLabel;
    RxDBComboBox4: TRxDBComboBox;
    DBCheckBox11: TDBCheckBox;
    RzGroupBox3: TRzGroupBox;
    Label120: TLabel;
    Label115: TLabel;
    Label124: TLabel;
    Label129: TLabel;
    Label130: TLabel;
    Label135: TLabel;
    Label151: TLabel;
    Label134: TLabel;
    Label154: TLabel;
    dbedtNumLoteControle: TDBEdit;
    RxDBLookupCombo7: TRxDBLookupCombo;
    DBEdit76: TDBEdit;
    DBEdit77: TDBEdit;
    DBEdit80: TDBEdit;
    dbedtCEST_NCM: TDBEdit;
    rxdbTamanho: TRxDBLookupCombo;
    dbEdtNomeContaOrcamento: TDBEdit;
    dbEdtIDContaOrcamento: TDBEdit;
    dbedtIDCentroCusto: TDBEdit;
    dbedtNomeCentroCusto: TDBEdit;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    DBEdit71: TDBEdit;
    DBEdit72: TDBEdit;
    dbedtIDPedido: TDBEdit;
    RzGroupBox4: TRzGroupBox;
    Label106: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label107: TLabel;
    DBEdit69: TDBEdit;
    Label108: TLabel;
    dbedtQtdConv: TDBEdit;
    btnConfirmar_QtdConv: TNxButton;
    btnAjustarUnidade: TBitBtn;
    dbchkConverterUnidade: TDBCheckBox;
    RzGroupBox5: TRzGroupBox;
    NxPanel1: TNxPanel;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    lblVlrVenda_Atual: TLabel;
    lblVlrVenda: TLabel;
    dbedtVlrVenda: TDBEdit;
    dbedtVlrVenda_Atual: TDBEdit;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    btnCalcularVenda: TNxButton;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    SpeedButton2: TSpeedButton;
    lblMarca: TLabel;
    lkcbMarca: TRxDBLookupCombo;
    SpeedButton1: TSpeedButton;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    lblPreco_Custo_Manual: TLabel;
    dbedtPreco_Custo_Manual: TDBEdit;
    Label13: TLabel;
    DBDateEdit1: TDBDateEdit;
    lblMaterialBase: TLabel;
    rxdblookupMaterialBase: TRxDBLookupCombo;
    Label117: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Label14: TLabel;
    DBMemo1: TDBMemo;
    RxDBComboBox2: TRxDBComboBox;
    Label15: TLabel;
    Label16: TLabel;
    edtCodCorForn: TDBEdit;
    Label17: TLabel;
    DBEdit12: TDBEdit;
    Label18: TLabel;
    DBEdit13: TDBEdit;
    Label19: TLabel;
    DBEdit14: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label20: TLabel;
    DBEdit15: TDBEdit;
    gbxDimensoes: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label36: TLabel;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    Label23: TLabel;
    DBEdit16: TDBEdit;
    lblPrecoVarejo: TLabel;
    DBEdit17: TDBEdit;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label131: TLabel;
    DBEdit73: TDBEdit;
    btnCalcular_CustoTotal: TNxButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbedtQtdConvExit(Sender: TObject);
    procedure RxDBLookupCombo3Change(Sender: TObject);
    procedure RxDBComboBox1Click(Sender: TObject);
    procedure RxDBLookup_CFOPNFCeChange(Sender: TObject);
    procedure DBEdit76Exit(Sender: TObject);
    procedure DBEdit76KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBCheckBox3Click(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCalcular_CustoTotalClick(Sender: TObject);
    procedure dbEdtIDContaOrcamentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbEdtIDContaOrcamentoExit(Sender: TObject);
    procedure dbedtIDCentroCustoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbedtQtdConvKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnConfirmar_QtdConvClick(Sender: TObject);
    procedure btnAjustarUnidadeClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure RxDBLookupCombo4Change(Sender: TObject);
    procedure btnCalcularVendaClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure lkcbMarcaChange(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure dbedtIDCentroCustoExit(Sender: TObject);
    procedure rxdblookupMaterialBaseExit(Sender: TObject);
    procedure RzGroupBox4Enter(Sender: TObject);
    procedure RzGroupBox4Exit(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
  private
    { Private declarations }
    vSUB_ICMS_CUSTO: String;
    vUnidade_Ant: String;
    vConverter_Uni_Ant: Boolean;
    vQtd_Convesor_Ant: Real;
    vIDCFOP_Ant: Integer;

    function fnc_Busca_CFOP: Integer;

    procedure Move_Campos(Campo1,Campo2, Soma: String);

    procedure Ajustar_ICMS;

    procedure Atualiza_Preco;

    procedure prc_Mostrar_Cor;

    function fnc_Montar_PrecoCompra(Unidade: String): Real;
    function fnc_Montar_PrecoCustoTotal(Unidade: String; CustoTotal :Boolean = True): Real;

    procedure prc_Monta_Grupo(Mostra_Msg: String);
    procedure prc_Monta_ContaOrc(Mostra_Msg: String);

    procedure prc_verifica_TipoVenda;

    //13/11/2017
    procedure prc_Verifica_Atualizacao_NCM_Custo;

    procedure prc_Busca_CFOPAtual;

    procedure prc_Ajustar_VlrUnitarioConv;
    procedure prc_Muda_QtdConv;

    procedure prc_Grava_ID_CentroCusto_mItens(ID: Integer);


  public
    { Public declarations }
    fDMRecebeXML: TDMRecebeXML;
    vVlrFrete_Nota: Real;

  end;

var
  frmRecebeXMLNovo_Itens: TfrmRecebeXMLNovo_Itens;

implementation

uses
  DmdDatabase, uUtilPadrao, UMenu, rsDBUtils, uNFeComandos, USel_Pessoa, USel_Grupo, USel_Produto_Cor, USel_ContaOrc, VarUtils,
  uRecebeXML_CFOP, USel_CentroCusto, UConsQtdOS_Nota, uUtil_RecebeXML,
  UCadServico_Int, UCadMarca;

{$R *.dfm}

procedure TfrmRecebeXMLNovo_Itens.Move_Campos(Campo1,Campo2, Soma: String);
var
  i: Integer;
//  vAux: String;
begin
  for i:=0 to (fDMRecebeXML.cdsDetalhe.FieldCount-1) do
  begin
    if fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = Campo1 then
    begin
      if fDMRecebeXML.cdsDetalhe.Fields[i].DataType = ftString then
      begin
        fDMRecebeXML.mItensNota.FieldByName(Campo2).AsString := Replace(fDMRecebeXML.cdsDetalhe.FieldByName(Campo1).AssTring,'.',',')
      end
      else
        fDMRecebeXML.mItensNota.FieldByName(Campo2).AsString := fDMRecebeXML.cdsDetalhe.FieldByName(Campo1).AsString;
    end
  end;
end;

procedure TfrmRecebeXMLNovo_Itens.FormShow(Sender: TObject);
var
  i: Integer;
begin
  oDBUtils.SetDataSourceProperties(Self,fDMRecebeXML);

  dbedtNumLoteControle.Enabled  := (fDMRecebeXML.qParametrosUSA_LOTE_CONTROLE.AsString = 'S');
  dbedtNumLoteControle.ReadOnly := not(dbedtNumLoteControle.Enabled);
  dbEdit11.ReadOnly             := dbedtNumLoteControle.ReadOnly;
  DBDateEdit1.ReadOnly          := dbedtNumLoteControle.ReadOnly; 

  dbedtNumLoteControle.Color    := uUtil_RecebeXML.fnc_Cor_Habilitado(dbedtNumLoteControle.Enabled);

  dbedtCEST_NCM.Enabled := (fDMRecebeXML.qParametros_RecXMLATUALIZAR_CEST.AsString = 'S');
  dbedtCEST_NCM.Color   := uUtil_RecebeXML.fnc_Cor_Habilitado(dbedtCEST_NCM.Enabled);

  rxdbTamanho.Enabled := (fDMRecebeXML.qParametrosUSA_GRADE.AsString = 'S');
  rxdbTamanho.Color   := uUtil_RecebeXML.fnc_Cor_Habilitado(rxdbTamanho.Enabled);

  RxDBLookup_CFOPNFCe.Enabled := (fDMRecebeXML.qParametrosUSA_NFCE.AsString = 'S');
  RxDBLookup_CFOPNFCe.Color   := uUtil_RecebeXML.fnc_Cor_Habilitado(RxDBLookup_CFOPNFCe.Enabled);

  dbEdtIDContaOrcamento.Enabled   := ((fDMRecebeXML.qParametrosUSA_CONTA_ORCAMENTO.AsString = 'S') and (fDMRecebeXML.qParametros_NTEUSA_CONTA_ORCAMENTO_ITENS.AsString = 'S'));
  dbEdtIDContaOrcamento.Color     := uUtil_RecebeXML.fnc_Cor_Habilitado(dbEdtIDContaOrcamento.Enabled);
  dbEdtNomeContaOrcamento.Enabled := ((fDMRecebeXML.qParametrosUSA_CONTA_ORCAMENTO.AsString = 'S') and (fDMRecebeXML.qParametros_NTEUSA_CONTA_ORCAMENTO_ITENS.AsString = 'S'));
  dbEdtNomeContaOrcamento.Color   := uUtil_RecebeXML.fnc_Cor_Habilitado(dbEdtNomeContaOrcamento.Enabled);

  dbedtIDCentroCusto.Enabled   := (fDMRecebeXML.qParametros_NTEUSA_CENTRO_CUSTO.AsString = 'S');
  dbedtIDCentroCusto.Color     := uUtil_RecebeXML.fnc_Cor_Habilitado(dbedtIDCentroCusto.Enabled);
  dbedtNomeCentroCusto.Enabled := (fDMRecebeXML.qParametros_NTEUSA_CENTRO_CUSTO.AsString = 'S');
  dbedtNomeCentroCusto.Color   := uUtil_RecebeXML.fnc_Cor_Habilitado(dbedtNomeCentroCusto.Enabled);

  Label7.Visible           := fDMRecebeXML.cdsCFOPBENEFICIAMENTO.AsString = 'S';
  RxDBLookupCombo1.Visible := fDMRecebeXML.cdsCFOPBENEFICIAMENTO.AsString = 'S';
  SpeedButton2.Visible     := fDMRecebeXML.cdsCFOPBENEFICIAMENTO.AsString = 'S';
  fDMRecebeXML.cdsServicoInt.Active := fDMRecebeXML.cdsCFOPBENEFICIAMENTO.AsString = 'S';

  prc_Mostrar_Cor;

  prc_Muda_QtdConv;

  lblMarca.Visible     := (fDMRecebeXML.qParametrosMOSTRAR_MARCAR_PROD.AsString = 'S');
  lkcbMarca.Visible    := (fDMRecebeXML.qParametrosMOSTRAR_MARCAR_PROD.AsString = 'S');
  SpeedButton1.Visible := (fDMRecebeXML.qParametrosMOSTRAR_MARCAR_PROD.AsString = 'S');
  fDMRecebeXML.cdsMarca.Active := (fDMRecebeXML.qParametrosMOSTRAR_MARCAR_PROD.AsString = 'S');

  dbedtVlrVenda_Atual.Visible := (fDMRecebeXML.qParametros_RecXMLMOSTRAR_VLR_VENDA.AsString = 'S');
  dbedtVlrVenda.Visible       := (fDMRecebeXML.qParametros_RecXMLMOSTRAR_VLR_VENDA.AsString = 'S');
  lblVlrVenda.Visible         := dbedtVlrVenda.Visible;
  lblVlrVenda_Atual.Visible   := dbedtVlrVenda.Visible;

  lblPreco_Custo_Manual.Visible   := (SQLLocate('PARAMETROS_RECXML','ID','USAR_PRECO_CUSTO','1') = 'S');
  dbedtPreco_Custo_Manual.Visible := lblPreco_Custo_Manual.Visible;

  lblMaterialBase.Visible := (SQLLocate('PARAMETROS_PROD','ID','PRECO_POR_KG','1') = 'S');
  rxdblookupMaterialBase.Visible := (SQLLocate('PARAMETROS_PROD','ID','PRECO_POR_KG','1') = 'S');

  edtCodCorForn.ReadOnly := False;  //aqui, tratar para beira rio
  if RxDBComboBox1.ItemIndex > 0 then
    RxDBComboBox1.OnClick(Sender);
  gbxDimensoes.Visible := SQLLocate('PARAMETROS','ID','EMPRESA_SUCATA','1') = 'S';

  DBEdit17.Visible       := SQLLocate('CUPOMFISCAL_PARAMETROS','ID','USA_PRECO_REVENDA','1') = 'S';
  lblPrecoVarejo.Visible := DBEdit17.Visible;
end;

procedure TfrmRecebeXMLNovo_Itens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmRecebeXMLNovo_Itens.dbedtQtdConvExit(Sender: TObject);
begin
  if fDMRecebeXML.mItensNota.State in [dsEdit] then
  begin
    fDMRecebeXML.mItensNotaQtdPacote.AsString := dbedtQtdConv.Text;
    if StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaQtdPacote.AsFloat)) > 0 then
      fDMRecebeXML.mItensNotaConverter_Unid_Medida.AsBoolean := True;
    prc_Ajustar_VlrUnitarioConv;
  end;
end;

procedure TfrmRecebeXMLNovo_Itens.RxDBLookupCombo3Change(Sender: TObject);
begin
  fDMRecebeXML.mItensNotaCodSitTrib.AsString := RxDBLookupCombo3.Text;
end;

procedure TfrmRecebeXMLNovo_Itens.prc_Mostrar_Cor;
begin
  RxDBLookupCombo7.Enabled := (fDMRecebeXML.mItensNotaUsa_Cor.AsString = 'S');
  RxDBLookupCombo7.Color   := uUtil_RecebeXML.fnc_Cor_Habilitado(RxDBLookupCombo7.Enabled);
  if fDMRecebeXML.mItensNotaUsa_Cor.AsString = 'S' then
    fDMRecebeXML.prc_Abrir_Combinacao(fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger);
end;

procedure TfrmRecebeXMLNovo_Itens.RxDBComboBox1Click(Sender: TObject);
begin
  if not (fDMRecebeXML.mItensNota.State in [dsEdit,dsInsert]) then
    fDMRecebeXML.mItensNota.Edit;
  case RxDBComboBox1.ItemIndex of
    0: fDMRecebeXML.mItensNotaTipoVenda.AsString := 'G';
    1: fDMRecebeXML.mItensNotaTipoVenda.AsString := 'C';
    2: fDMRecebeXML.mItensNotaTipoVenda.AsString := 'R';
    3: fDMRecebeXML.mItensNotaTipoVenda.AsString := 'I';
  end;
  fDMRecebeXML.mItensNotaCFOPInterno.AsInteger  := fnc_Busca_CFOP;
  fDMRecebeXML.mItensNotaID_CFOP_NFCe.AsInteger := fDMRecebeXML.vID_CFOP_NFCe_XML;
  fDMRecebeXML.mItensNotaCodCFOP_NFCe.AsString  := fDMRecebeXML.vCODCFOP_NFCe_XML;
  if fDMRecebeXML.mItensNotaCFOPInterno.AsInteger > 0 then
    fDMRecebeXML.mItensNotaCFOP.AsString := fDMRecebeXML.qCFOPCODCFOP.AsString
  else
    fDMRecebeXML.mItensNotaCFOP.AsString := '';
  //13/11/2017  Verifica se atualiza a NCM ou o Preço de custo
  prc_Verifica_Atualizacao_NCM_Custo;
  //**********************
  prc_verifica_TipoVenda;
  btnCalcular_CustoTotalClick(Sender);
  if fDMRecebeXML.mItensNota.State in [dsEdit,dsInsert] then
    fDMRecebeXML.mItensNota.Post;
end;

procedure TfrmRecebeXMLNovo_Itens.RxDBLookup_CFOPNFCeChange(Sender: TObject);
begin
  if fDMRecebeXML.mItensNota.State in [dsEdit] then
  begin
    fDMRecebeXML.mItensNotaCodCFOP_NFCe.AsString := RxDBLookup_CFOPNFCe.Text;
    prc_Busca_CFOPAtual;
  end;
end;

function TfrmRecebeXMLNovo_Itens.fnc_Montar_PrecoCompra(Unidade: String): Real;
var
  vVlrAux: Real;
begin
  vVlrAux := fDMRecebeXML.mItensNotaVlrUnitario.AsFloat;
  if (Unidade <> fDMRecebeXML.mItensNotaUnidade.AsString) and
     (StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrUnitario.AsFloat)) > 0) and
     (StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaQtdPacote.AsFloat)) > 0) and
     (StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaQtd.AsFloat)) > 0) then
  begin
    //Alterado dia 12/05/2015
    //vVlrAux := StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrUnitario.AsFloat / (fDMRecebeXML.mItensNotaQtdPacote.AsFloat / fDMRecebeXML.mItensNotaQtd.AsFloat)));
    vVlrAux := StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrUnitario.AsFloat / fDMRecebeXML.mItensNotaQtdPacote.AsFloat));
  end;
  Result := StrToFloat(FormatFloat('0.00000',vVlrAux));
end;

function TfrmRecebeXMLNovo_Itens.fnc_Montar_PrecoCustoTotal(Unidade: String; CustoTotal :Boolean = True): Real;
var
  vVlrAux: Real;
  vVlrIPIAux: Real;
  vVlrFreteAux: Real;
  vVlrStAux: Real;
  vPercFrete: Real;
  vVlrICMSAux: Real;
  vVlrPisCofinsAux: Real;
  //18/01/2018
  vVlrOutro, vVlrAduaneira, vVlrII, vVlrAFRMM, vVlrTaxaSiscomex: Real;
  vVlrIPISub: Real;
  //***************

begin
  vVlrIPIAux       := StrToFloat(FormatFloat('0.00',0));
  vVlrFreteAux     := StrToFloat(FormatFloat('0.00',0));
  vVlrStAux        := StrToFloat(FormatFloat('0.00',0));
  vVlrICMSAux      := StrToFloat(FormatFloat('0.00',0));
  vVlrPisCofinsAux := StrToFloat(FormatFloat('0.00',0));
  vVlrOutro        := StrToFloat(FormatFloat('0.00',0));
  vVlrAduaneira    := StrToFloat(FormatFloat('0.00',0));
  vVlrII           := StrToFloat(FormatFloat('0.00',0));
  vVlrAFRMM        := StrToFloat(FormatFloat('0.00',0));
  vVlrTaxaSiscomex := StrToFloat(FormatFloat('0.00',0));
  vVlrIPISub       := StrToFloat(FormatFloat('0.00',0));
  vVlrAux          := fDMRecebeXML.mItensNotaVlrUnitario.AsFloat;
  //if StrToFloat(FormatFloat('0.00',fDMRecebeXML.cdsCabecalhovFrete.AsFloat)) > 0 then
    vPercFrete := 0;
  //else
  if vVlrFrete_Nota > 0 then
    vPercFrete := StrToFloat(FormatFloat('0.0000',vVlrFrete_Nota / fDMRecebeXML.cdsCabecalhovNF.AsFloat * 100));

  //11/11/2016
  if (StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaVlrIPI.AsFloat)) > 0) then
  begin
    if (fDMRecebeXML.mItensNotaSOMAR_IPI_NO_CUSTO.AsString = 'S') then
      vVlrIPIAux := StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrIPI.AsFloat / fDMRecebeXML.mItensNotaQtd.AsFloat))
    else
    if (fDMRecebeXML.mItensNotaSUB_IPI_Custo.AsString = 'S') then
      vVlrIPISub := StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrIPI.AsFloat / fDMRecebeXML.mItensNotaQtd.AsFloat))
  end;
  if (fDMRecebeXML.mItensNotaSOMAR_FRETE_NO_CUSTO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaVlrFrete.AsFloat)) > 0) then
    vVlrFreteAux := StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrFrete.AsFloat / fDMRecebeXML.mItensNotaQtd.AsFloat));
  //**************************
  //22/02/2017
  if (fDMRecebeXML.mItensNotaSOMAR_ST_NO_CUSTO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaVlrIcmsST.AsFloat)) > 0) then
    vVlrStAux := StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrIcmsST.AsFloat / fDMRecebeXML.mItensNotaQtd.AsFloat));
  //******************
  //02/11/2017
  if (fDMRecebeXML.mItensNotaSUB_ICMS_CUSTO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaVlrIcms.AsFloat)) > 0) and
    (StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaVlrIcmsST.AsFloat)) <= 0 ) then
    vVlrICMSAux := StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrIcms.AsFloat / fDMRecebeXML.mItensNotaQtd.AsFloat));
  if (fDMRecebeXML.mItensNotaSUB_PISCOFINS_CUSTO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaVlrPis.AsFloat + fDMRecebeXML.mItensNotaVlrCofins.AsFloat)) > 0) then
    vVlrPisCofinsAux := StrToFloat(FormatFloat('0.00000',(fDMRecebeXML.mItensNotaVlrPis.AsFloat + fDMRecebeXML.mItensNotaVlrCofins.AsFloat) / fDMRecebeXML.mItensNotaQtd.AsFloat));
  //*************
  //if (fDMRecebeXML.mItensNotaSUB_ICMS_CUSTO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaVlrPis.AsFloat + fDMRecebeXML.mItensNotaVlrCofins.AsFloat)) > 0) then
  //  vVlrPisCofinsAux := StrToFloat(FormatFloat('0.00000',(fDMRecebeXML.mItensNotaVlrPis.AsFloat + fDMRecebeXML.mItensNotaVlrCofins.AsFloat) / fDMRecebeXML.mItensNotaQtd.AsFloat));
  if (Unidade <> fDMRecebeXML.mItensNotaUnidade.AsString) and
     (StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrUnitario.AsFloat)) > 0) and
     (StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaQtdPacote.AsFloat)) > 0) and
     (StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaQtd.AsFloat)) > 0) then
  begin
    //Alterado dia 12/05/2015
    //vVlrAux := StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrUnitario.AsFloat / (fDMRecebeXML.mItensNotaQtdPacote.AsFloat / fDMRecebeXML.mItensNotaQtd.AsFloat)));
    vVlrAux := StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrUnitario.AsFloat / fDMRecebeXML.mItensNotaQtdPacote.AsFloat));
    //11/11/2016
    if (StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaVlrIPI.AsFloat)) > 0) then
    begin
      if (fDMRecebeXML.mItensNotaSOMAR_IPI_NO_CUSTO.AsString = 'S') then
        vVlrIPIAux := StrToFloat(FormatFloat('0.00000',vVlrIPIAux / fDMRecebeXML.mItensNotaQtdPacote.AsFloat))
      else
      if (fDMRecebeXML.mItensNotaSUB_IPI_Custo.AsString = 'S') then
        vVlrIPISub := StrToFloat(FormatFloat('0.00000',vVlrIPISub / fDMRecebeXML.mItensNotaQtdPacote.AsFloat));
    end;
    if (fDMRecebeXML.mItensNotaSOMAR_FRETE_NO_CUSTO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaVlrFrete.AsFloat)) > 0) then
      vVlrFreteAux := StrToFloat(FormatFloat('0.00000',vVlrFreteAux / fDMRecebeXML.mItensNotaQtdPacote.AsFloat));
    //*********************
    //22/02/2017
    if (fDMRecebeXML.mItensNotaSOMAR_ST_NO_CUSTO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaVlrIcmsST.AsFloat)) > 0) then
      vVlrStAux := StrToFloat(FormatFloat('0.00000',vVlrStAux / fDMRecebeXML.mItensNotaQtdPacote.AsFloat));
    //**************
    //02/11/2017
    if (fDMRecebeXML.mItensNotaSUB_ICMS_CUSTO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',vVlrICMSAux)) > 0) then
      vVlrICMSAux := StrToFloat(FormatFloat('0.00000',vVlrICMSAux / fDMRecebeXML.mItensNotaQtdPacote.AsFloat));
    if (fDMRecebeXML.mItensNotaSUB_PISCOFINS_CUSTO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',vVlrPisCofinsAux)) > 0) then
      vVlrPisCofinsAux := StrToFloat(FormatFloat('0.00000',vVlrPisCofinsAux / fDMRecebeXML.mItensNotaQtdPacote.AsFloat));
    //******
  end;
  //21/02/2022 Foi ajustado o esquema do Frete para calcular 
  if StrToFloat(FormatFloat('0.0000',vPercFrete)) > 0 then
    vVlrFreteAux := vVlrFreteAux + (StrToFloat(FormatFloat('0.00', vVlrAux * vPercFrete / 100)));
  vVlrAux := StrToFloat(FormatFloat('0.00000',vVlrAux + vVlrIPIAux + vVlrFreteAux + vVlrStAux));
  vVlrAux := StrToFloat(FormatFloat('0.00000',vVlrAux - vVlrICMSAux - vVlrPisCofinsAux - vVlrIPISub));
  if (fDMRecebeXML.mItensNotaConverter_Unid_Medida.AsBoolean) and (fDMRecebeXML.mItensNotaQtdPacote.AsFloat <> 0) then
    vVlrAux := StrToFloat(FormatFloat('0.00000',vVlrAux / fDMRecebeXML.mItensNotaQtdPacote.AsFloat));
  Result := StrToFloat(FormatFloat('0.00000',vVlrAux ));
end;

procedure TfrmRecebeXMLNovo_Itens.DBEdit76Exit(Sender: TObject);
begin
  prc_Monta_Grupo('S');
end;

procedure TfrmRecebeXMLNovo_Itens.DBEdit76KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    frmSel_Grupo := TfrmSel_Grupo.Create(Self);
    try
      frmSel_Grupo.ShowModal;
      if frmSel_Grupo.ModalResult = mrOk then
      begin
        if not (fDMRecebeXML.mItensNota.State in [dsEdit]) then
          fDMRecebeXML.mItensNota.Edit;
        fDMRecebeXML.mItensNotaID_Grupo.AsInteger := frmSel_Grupo.cdsGrupoID.AsInteger;
        prc_Monta_Grupo('S');
        fDMRecebeXML.mItensNota.Post;
      end;
    finally
      FreeAndNil(frmSel_Grupo);
    end;
  end;
end;

procedure TfrmRecebeXMLNovo_Itens.prc_Monta_Grupo(Mostra_Msg: String);
begin
  if not (fDMRecebeXML.mItensNota.State in [dsEdit,dsInsert]) then
    exit;

  if fDMRecebeXML.mItensNotaID_Grupo.AsInteger > 0 then
  begin
    fDMRecebeXML.qGrupo.Close;
    fDMRecebeXML.qGrupo.ParamByName('ID').AsInteger := fDMRecebeXML.mItensNotaID_Grupo.AsInteger;
    fDMRecebeXML.qGrupo.Open;
    if fDMRecebeXML.qGrupo.IsEmpty then
    begin
      fDMRecebeXML.mItensNotaNome_Grupo.AsString := '';
      fDMRecebeXML.mItensNotaID_Grupo.Clear;
      if Mostra_Msg = 'S' then
        MessageDlg('*** ID do grupo não encontrado!', mtInformation, [mbOk], 0);
    end
    else
      fDMRecebeXML.mItensNotaNome_Grupo.AsString := fDMRecebeXML.qGrupoCODIGO.AsString + ' ' + fDMRecebeXML.qGrupoNOME.AsString;
  end
  else
    fDMRecebeXML.mItensNotaNome_Grupo.AsString := '';
end;

procedure TfrmRecebeXMLNovo_Itens.DBCheckBox3Click(Sender: TObject);
begin
  DBCheckBox4.Visible := DBCheckBox3.Checked;
  DBCheckBox5.Visible := DBCheckBox3.Checked;
  DBCheckBox6.Visible := DBCheckBox3.Checked;
  DBCheckBox7.Visible := DBCheckBox3.Checked;
  DBCheckBox8.Visible := DBCheckBox3.Checked;
end;

procedure TfrmRecebeXMLNovo_Itens.prc_verifica_TipoVenda;
var
  vTexto: String;
begin
  vTexto := 'CON';
  if fDMRecebeXML.mItensNotaTipoVenda.AsString = 'C' then
    vTexto := 'CON'
  else
  if fDMRecebeXML.mItensNotaTipoVenda.AsString = 'R' then
    vTexto := 'REV'
  else
  if fDMRecebeXML.mItensNotaTipoVenda.AsString = 'I' then
    vTexto := 'IND';

  if not(fDMRecebeXML.mItensNota.State in [dsEdit,dsInsert]) then
    fDMRecebeXML.mItensNota.Edit;

  fDMRecebeXML.mItensNotaSOMAR_IPI_NO_CUSTO.AsString  := fDMRecebeXML.qParametros_Custo.FieldByName(vTexto+'_SOMAR_IPI').AsString;
  fDMRecebeXML.mItensNotaSOMAR_ST_NO_CUSTO.AsString   := fDMRecebeXML.qParametros_Custo.FieldByName(vTexto+'_SOMAR_ST').AsString;
  fDMRecebeXML.mItensNotaSUB_ICMS_CUSTO.AsString      := fDMRecebeXML.qParametros_Custo.FieldByName(vTexto+'_SUB_ICMS').AsString;
  fDMRecebeXML.mItensNotaSUB_IPI_Custo.AsString       := fDMRecebeXML.qParametros_Custo.FieldByName(vTexto+'_SUB_IPI').AsString;
  fDMRecebeXML.mItensNotaSUB_PISCOFINS_CUSTO.AsString := fDMRecebeXML.qParametros_Custo.FieldByName(vTexto+'_SUB_PISCOFINS').AsString;
  fDMRecebeXML.mItensNotaSOMAR_FRETE_NO_CUSTO.AsString := fDMRecebeXML.qParametros_Custo.FieldByName(vTexto+'_SOMAR_FRETE').AsString;
end;

procedure TfrmRecebeXMLNovo_Itens.prc_Verifica_Atualizacao_NCM_Custo;
var
  vFlag: Boolean;
begin
  if trim(fDMRecebeXML.mItensNotaCFOPInterno.AsString) = '' then
    exit;
  if not fDMRecebeXML.cdsCFOP.Locate('ID',fDMRecebeXML.mItensNotaCFOPInterno.AsInteger,([LocaseInsensitive])) then
    exit;
  vFlag := False;  
  if not (fDMRecebeXML.mItensNota.State in [dsEdit,dsInsert]) then
  begin
    fDMRecebeXML.mItensNota.Edit;
    vFlag := True;
  end;
  fDMRecebeXML.mItensNotaAtualizarPreco.AsBoolean      := (fDMRecebeXML.cdsCFOPALT_CUSTO.AsString = 'S');
  fDMRecebeXML.mItensNotaAtualizarCustoTotal.AsBoolean := (fDMRecebeXML.cdsCFOPALT_CUSTO.AsString = 'S');
  if fDMRecebeXML.cdsCFOPALT_NCM_CUSTO.AsString = 'S' then
    fDMRecebeXML.mItensNotaAtualizarNCM.AsBoolean := True
  else
    fDMRecebeXML.mItensNotaAtualizarNCM.AsBoolean := False;
  if vFlag then
    fDMRecebeXML.mItensNota.Post;
end;

procedure TfrmRecebeXMLNovo_Itens.RxDBLookupCombo2Exit(Sender: TObject);
begin
  //13/11/2017  Verifica se atualiza a NCM ou o Preço de custo
  uUtil_RecebeXML.prc_Ajusta_CSTICMS(fDMRecebeXML);
  prc_Verifica_Atualizacao_NCM_Custo;
  if (fDMRecebeXML.cdsCFOPGERAR_ESTOQUE.AsString = 'S') or (fDMRecebeXML.cdsCFOPGERAR_ESTOQUE.AsString = 'N') then
    fDMRecebeXML.mItensNotaGerar_Estoque.AsString := fDMRecebeXML.cdsCFOPGERAR_ESTOQUE.AsString
  else
    fDMRecebeXML.mItensNotaGerar_Estoque.AsString := 'S';
  //31/03/2023
  if trim(fDMRecebeXML.mItensNotaCFOPInterno.AsString) <> '' then
    fDMRecebeXML.mItensNotaCFOP.AsString := fDMRecebeXML.cdsCFOPCODCFOP.AsString;
  //07/03/2019  Estoque por beneficiamento e tipo de material  Supplier vai ter esse controle devido ao Algodão e ao Poliester
  if fDMRecebeXML.qParametros_EstUSA_ESTOQUE_TIPO_MAT.AsString = 'S' then
  begin
    if fDMRecebeXML.cdsCFOP.Locate('ID',fDMRecebeXML.mItensNotaCFOPInterno.AsInteger, ([LocaseInsensitive])) then
    begin
      if fDMRecebeXML.cdsProdutoID.AsInteger <> fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger then
        fDMRecebeXML.cdsProduto.Locate('ID',fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger, ([LocaseInsensitive]));
      if (Trim(fDMRecebeXML.cdsProdutoESTOQUE.AsString) <> 'N') and (fDMRecebeXML.cdsCFOPGERAR_ESTOQUE.AsString = 'S')  then
        fDMRecebeXML.mItensNotaGerar_Estoque.AsString := fnc_Estoque_Tipo_Mat(fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger,'E');
    end
  end;
  //***************
  //22/06/2019
  if (fDMRecebeXML.qParametros_LoteLOTE_TEXTIL.AsString = 'S') and (fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger > 0) and
    (fDMRecebeXML.qParametros_LoteOPCAO_ESTOQUE_SEMI.AsString = 'N') then
  begin
    fDMRecebeXML.cdsProduto.Locate('ID',fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger, ([LocaseInsensitive]));
    if (fDMRecebeXML.cdsProdutoTIPO_REG.AsString = 'S') then
      fDMRecebeXML.mItensNotaGerar_Estoque.AsString := 'N';
  end;
  //*****************
  //01/06/2023
  if (StrToIntDef(fDMRecebeXML.mItensNotaCFOPInterno.AsString,0) > 0) and (vIDCFOP_Ant <> StrToIntDef(fDMRecebeXML.mItensNotaCFOPInterno.AsString,0)) then
    fDMRecebeXML.mItensNotaAtualizarPrecoVenda.AsBoolean := uUtil_RecebeXML.fnc_CFOP_Atualiza_PrecoVenda(StrToIntDef(fDMRecebeXML.mItensNotaCFOPInterno.AsString,0));
  //*******************
end;

procedure TfrmRecebeXMLNovo_Itens.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then //CTRL W
    btnAjustarUnidade.Visible := not(btnAjustarUnidade.Visible);
end;

procedure TfrmRecebeXMLNovo_Itens.btnCalcular_CustoTotalClick(Sender: TObject);
begin
  if not(fDMRecebeXML.mItensNota.State in [dsEdit,dsInsert]) then
    fDMRecebeXML.mItensNota.Edit;
  fDMRecebeXML.mItensNotaPreco_Custo_Total.AsFloat := StrToFloat(FormatFloat('0.00000',fnc_Montar_PrecoCustoTotal(fDMRecebeXML.mItensNotaUnidade.AsString)));
  fDMRecebeXML.mItensNota.Post;
end;

procedure TfrmRecebeXMLNovo_Itens.dbEdtIDContaOrcamentoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) and (dbedtIDContaOrcamento.Enabled)  then
  begin
    vID_ContaOrcamento_Pos := fDMRecebeXML.mItensNotaID_ContaOrcamento.AsInteger;
    frmSel_ContaOrc := TfrmSel_ContaOrc.Create(Self);
    frmSel_ContaOrc.ComboBox2.ItemIndex := 2;
    frmSel_ContaOrc.ShowModal;
    if not (fDMRecebeXML.mItensNota.State in [dsEdit]) then
      fDMRecebeXML.mItensNota.Edit;
    fDMRecebeXML.mItensNotaID_ContaOrcamento.AsInteger := vID_ContaOrcamento_Pos;
    prc_Monta_ContaOrc('S');
    fDMRecebeXML.mItensNota.Post;
  end;
end;

procedure TfrmRecebeXMLNovo_Itens.prc_Monta_ContaOrc(Mostra_Msg: String);
begin
  if not (fDMRecebeXML.mItensNota.State in [dsEdit,dsInsert]) then
    exit;

  if fDMRecebeXML.mItensNotaID_ContaOrcamento.AsInteger > 0 then
  begin
    fDMRecebeXML.qConta_Orcamento.Close;
    fDMRecebeXML.qConta_Orcamento.ParamByName('ID').AsInteger := fDMRecebeXML.mItensNotaID_ContaOrcamento.AsInteger;
    fDMRecebeXML.qConta_Orcamento.Open;
    if fDMRecebeXML.qConta_Orcamento.IsEmpty then
    begin
      fDMRecebeXML.mItensNotaNome_ContaOrcamento.AsString := '';
      fDMRecebeXML.mItensNotaID_ContaOrcamento.Clear;
      if Mostra_Msg = 'S' then
        MessageDlg('*** ID da Conta de Orçamento não encontrada!', mtInformation, [mbOk], 0);
    end
    else
      fDMRecebeXML.mItensNotaNome_ContaOrcamento.AsString := fDMRecebeXML.qConta_OrcamentoCODIGO.AsString + ' ' + fDMRecebeXML.qConta_OrcamentoDESCRICAO.AsString;
  end
  else
    fDMRecebeXML.mItensNotaNome_ContaOrcamento.AsString := '';
end;

procedure TfrmRecebeXMLNovo_Itens.dbEdtIDContaOrcamentoExit(Sender: TObject);
begin
  if dbedtIDContaOrcamento.Enabled then
    prc_Monta_ContaOrc('N');
end;

procedure TfrmRecebeXMLNovo_Itens.prc_Busca_CFOPAtual;
begin
  //21/08/2019
  fDMRecebeXML.qCFOP2.Close;
  fDMRecebeXML.qCFOP2.ParamByName('ID').AsInteger := fDMRecebeXML.mItensNotaID_CFOPAtual.AsInteger;
  fDMRecebeXML.qCFOP2.Open;
  fDMRecebeXML.mItensNotaCodCFOPAtual.AsString := fDMRecebeXML.qCFOP2CODCFOP.AsString;
  fDMRecebeXML.qCFOP2.Close;
  fDMRecebeXML.qCFOP2.ParamByName('ID').AsInteger := fDMRecebeXML.mItensNotaID_CFOPNCM.AsInteger;
  fDMRecebeXML.qCFOP2.Open;
  fDMRecebeXML.mItensNotaCodCFOPNCM.AsString := fDMRecebeXML.qCFOP2CODCFOP.AsString;

  fDMRecebeXML.mItensNotaCopiar_CFOP_Prod.AsString := 'N';
  if (trim(fDMRecebeXML.mItensNotaCodCFOP_NFCe.AsString) <> '') then
  begin
    if (trim(fDMRecebeXML.mItensNotaCodCFOPAtual.AsString) <> '')
      and (fDMRecebeXML.mItensNotaCodCFOPAtual.AsString <> fDMRecebeXML.mItensNotaCodCFOP_NFCe.AsString) then
      fDMRecebeXML.mItensNotaCopiar_CFOP_Prod.AsString := ''
    else
    if (trim(fDMRecebeXML.mItensNotaCodCFOPNCM.AsString) <> '') and (trim(fDMRecebeXML.mItensNotaCodCFOPAtual.AsString) = '')
      and (fDMRecebeXML.mItensNotaCodCFOPNCM.AsString <> fDMRecebeXML.mItensNotaCodCFOP_NFCe.AsString) then
      fDMRecebeXML.mItensNotaCopiar_CFOP_Prod.AsString := ''
    else
    if fDMRecebeXML.mItensNotaCodCFOPNCM.AsString = fDMRecebeXML.mItensNotaCodCFOP_NFCe.AsString then
      fDMRecebeXML.mItensNotaCopiar_CFOP_Prod.AsString := 'N'
    else
      fDMRecebeXML.mItensNotaCopiar_CFOP_Prod.AsString := 'S';
  end;
end;

procedure TfrmRecebeXMLNovo_Itens.dbedtIDCentroCustoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_Return) and (trim(dbedtIDCentroCusto.Text) <> '') then
    prc_Grava_ID_CentroCusto_mItens(StrToInt(dbedtIDCentroCusto.Text))
  else
  if (Key = Vk_F2) and (dbedtIDCentroCusto.Enabled) then
  begin
    vID_Centro_Custo := fDMRecebeXML.mItensNotaID_CentroCusto.AsInteger;
    frmSel_CentroCusto := TfrmSel_CentroCusto.Create(Self);
    try
      frmSel_CentroCusto.ShowModal;
      prc_Grava_ID_CentroCusto_mItens(vID_Centro_Custo);
    finally
      FreeAndNil(frmSel_CentroCusto);
    end;
  end;
end;

procedure TfrmRecebeXMLNovo_Itens.prc_Ajustar_VlrUnitarioConv;
begin
  if (fDMRecebeXML.mItensNotaUnidade.AsString <> fDMRecebeXML.mItensNotaUnidadeInterno.AsString) and (fDMRecebeXML.mItensNotaQtdPacote.AsFloat <> fDMRecebeXML.mItensNotaQtdPacoteInterno.AsFloat) and
    (fDMRecebeXML.mItensNotaQtdPacote.AsFloat > 0) then
    fDMRecebeXML.mItensNotaVlrUnitario_Conversao.AsFloat := fnc_Montar_PrecoCompra(fDMRecebeXML.mItensNotaUnidadeInterno.AsString)
  else
    fDMRecebeXML.mItensNotaVlrUnitario_Conversao.AsFloat := fDMRecebeXML.mItensNotaVlrUnitario.AsFloat;
end;

procedure TfrmRecebeXMLNovo_Itens.dbedtQtdConvKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_Return then
  begin
    dbedtQtdConvExit(Sender);
    btnConfirmar_QtdConvClick(Sender);
  end;
end;

procedure TfrmRecebeXMLNovo_Itens.btnConfirmar_QtdConvClick(
  Sender: TObject);
begin
  if fDMRecebeXML.mItensNotaItem.AsInteger <= 0 then
    exit;

  if fDMRecebeXML.mItensNota.State in [dsEdit] then
  begin
    prc_Ajustar_VlrUnitarioConv;
    fDMRecebeXML.mItensNota.Post;
    uUtil_RecebeXML.Gravar_Unidade(fDMRecebeXML);
  end;
end;

procedure TfrmRecebeXMLNovo_Itens.btnAjustarUnidadeClick(Sender: TObject);
var
  vUnidAux: String;
  vUnidInt: String;
  vQtdConv: Real;
  vConvUnid: Boolean;
  vItemAux: Integer;
begin
  vUnidAux := InputBox('Trocar a unidade','Informar a unidade que que veio no XML', '');
  if trim(vUnidAux) = '' then
    exit;

  vUnidInt  := fDMRecebeXML.mItensNotaUnidadeInterno.AsString;
  vQtdConv  := fDMRecebeXML.mItensNotaQtdPacote.AsFloat;
  vConvUnid := fDMRecebeXML.mItensNotaConverter_Unid_Medida.AsBoolean;
  vItemAux  := fDMRecebeXML.mItensNotaItem.AsInteger;
  fDMRecebeXML.mItensNota.First;
  while not fDMRecebeXML.mItensNota.Eof do
  begin
    if (fDMRecebeXML.mItensNotaUnidadeInterno.AsString = vUnidAux) and (fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger <= 0) then
    begin
      fDMRecebeXML.mItensNota.Edit;
      fDMRecebeXML.mItensNotaUnidadeInterno.AsString := vUnidInt;
      fDMRecebeXML.mItensNotaQtdPacote.AsFloat       := vQtdConv;
      fDMRecebeXML.mItensNotaConverter_Unid_Medida.AsBoolean := vConvUnid;
      fDMRecebeXML.mItensNota.Post;
    end;
    fDMRecebeXML.mItensNota.Next;
  end;
  btnAjustarUnidade.Visible := False;
  fDMRecebeXML.mItensNota.Locate('Item',vItemAux,([LocaseInsensitive]));
  Refresh;
  fDMRecebeXML.mItensNota.Edit;
  ShowMessage('Convertido');
end;

procedure TfrmRecebeXMLNovo_Itens.btnCancelarClick(Sender: TObject);
begin
  if fDMRecebeXML.mItensNota.State in [dsEdit,dsInsert] then
    fDMRecebeXML.mItensNota.Cancel;
  Close;
end;

procedure TfrmRecebeXMLNovo_Itens.btnConfirmarClick(Sender: TObject);
begin
  if fDMRecebeXML.mItensNota.State in [dsEdit] then
  begin
    if trim(fDMRecebeXML.mItensNotaNomeProduto.AsString) = '' then
    begin
      MessageDlg('*** Nome não pode estar em branco!', mtInformation, [mbOk], 0);
      DBEdit5.SetFocus;
      exit;
    end;
    //14/09/2022
    fDMRecebeXML.mItensNotaNomeProduto_Pedido.AsString := fDMRecebeXML.mItensNotaNomeProduto.AsString;
    if RxDBLookupCombo1.Text <> '' then
      fDMRecebeXML.mItensNotaNomeProduto_Pedido.AsString := fDMRecebeXML.mItensNotaNomeProduto_Pedido.AsString + ' ' + RxDBLookupCombo1.Text;
    //******************
    fDMRecebeXML.mItensNota.Post;
  end;
  Close;
end;

procedure TfrmRecebeXMLNovo_Itens.Ajustar_ICMS;
begin

end;

procedure TfrmRecebeXMLNovo_Itens.Atualiza_Preco;
begin

end;

function TfrmRecebeXMLNovo_Itens.fnc_Busca_CFOP: Integer;
var
  vCodNatOper: String;
  vTipo: String;
  vFlag: Integer;
  vAux: String;
begin
  Result := 0;
  vCodNatOper   := fDMRecebeXML.mItensNotaCFOPOriginal.AsString;
  fDMRecebeXML.vID_CFOP_NFCe_XML := 0;
  fDMRecebeXML.vCODCFOP_NFCe_XML := '';

  fDMRecebeXML.qCFOP.Close;
  fDMRecebeXML.qCFOP.ParamByName('CODCFOP').AsString := vCodNatOper;
  fDMRecebeXML.qCFOP.Open;

  vTipo := trim(fDMRecebeXML.mItensNotaTipoVenda.AsString);
  if trim(vTipo) = '' then
    vTipo := 'G';
  vFlag := 0;
  while vFlag = 0 do
  begin
    vAux := 'N';
    if (fDMRecebeXML.qCFOPDEPARA_COM_CST.AsString = 'S') and (fDMRecebeXML.vCST_TipoICMS_XML = 'S') then
      vAux := 'S';
    if fDMRecebeXML.qDePara.Locate('COD_CFOP_ENT;TIPO_PRODUTO;COM_ST',VarArrayOf([vCodNatOper,vTipo,vAux]),[locaseinsensitive]) then
    begin
      vCodNatOper   := fDMRecebeXML.qDeParaCOD_CFOP_GRA.AsString;
      fDMRecebeXML.vID_CFOP_NFCe_XML := fDMRecebeXML.qDeParaID_CFOP_PROD_NFCE.AsInteger;
      fDMRecebeXML.vCODCFOP_NFCe_XML := fDMRecebeXML.qDeParaCOD_CFOP_PROD_NFCE.AsString;
      vFlag       := 2;
    end
    else
    if vTipo <> 'G' then
      vTipo := 'G'
    else
    if vTipo = 'G' then
      vFlag := 1;
  end;

  if vFlag <> 2 then
  begin
    if not(vImportar_NotaSaida) or (fDMRecebeXML.vEntrada_Saida_XML = 'E') then
    begin
      if copy(vCodNatOper,1,1) = '5' then
        vCodNatOper := '1' + copy(vCodNatOper,2,3)
      else
      if copy(vCodNatOper,1,1) = '6' then
        vCodNatOper := '2' + copy(vCodNatOper,2,3)
      else
      if copy(vCodNatOper,1,1) = '7' then
        vCodNatOper := '3' + copy(vCodNatOper,2,3);
    end;
  end;

  if fDMRecebeXML.cdsCabecalhoCRT.AsInteger = 3 then
    vTipo := 'G'
  else
    vTipo := 'S';

  if fDMRecebeXML.qCFOPCODCFOP.AsString <> vCodNatOper then
  begin
    fDMRecebeXML.qCFOP.Close;
    fDMRecebeXML.qCFOP.ParamByName('CODCFOP').AsString := vCodNatOper;
    fDMRecebeXML.qCFOP.Open;
  end;
  if not fDMRecebeXML.qCFOP.IsEmpty then
    Result := fDMRecebeXML.qCFOPID.AsInteger;
  if not fDMRecebeXML.qCFOP.IsEmpty then
    fDMRecebeXML.vGerar_Estoque_XML := fDMRecebeXML.qCFOPGERAR_ESTOQUE.AsString;
end;

procedure TfrmRecebeXMLNovo_Itens.prc_Muda_QtdConv;
begin
  dbedtQtdConv.Enabled := (fDMRecebeXML.mItensNotaUnidade.AsString <> fDMRecebeXML.mItensNotaUnidadeInterno.AsString);
  dbedtQtdConv.Color   := uUtil_RecebeXML.fnc_Cor_Habilitado(dbedtQtdConv.Enabled);
  btnConfirmar_QtdConv.Enabled  := (fDMRecebeXML.mItensNotaUnidade.AsString <> fDMRecebeXML.mItensNotaUnidadeInterno.AsString);
  dbchkConverterUnidade.Enabled := (fDMRecebeXML.mItensNotaUnidade.AsString <> fDMRecebeXML.mItensNotaUnidadeInterno.AsString);
  if not dbchkConverterUnidade.Enabled then
    dbchkConverterUnidade.Checked := False;
end;

procedure TfrmRecebeXMLNovo_Itens.RxDBLookupCombo4Change(Sender: TObject);
begin
  prc_Muda_QtdConv;
end;

procedure TfrmRecebeXMLNovo_Itens.btnCalcularVendaClick(Sender: TObject);
var
  vValor: Real;
  vTipoCalculo, vAplicar_Margem, vCustoManual: String;
begin
  if StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaPerc_Margem.AsFloat)) = 0 then
    exit;
  vTipoCalculo    := SQLLocate('PARAMETROS_PROD','ID','USA_CALCULO_VENDA2','1');
  vAplicar_Margem := SQLLocate('PARAMETROS_PROD','ID','OPCAO_APLICAR_MARGEM','1');
  vCustoManual    := SQLLocate('PARAMETROS_RECXML','ID','USAR_PRECO_CUSTO','1');
  vValor := fnc_Busca_Custo_mItens(fDMRecebeXML,vAplicar_Margem,vCustoManual);
  prc_Calcula_Vlr_Venda_mItens(fDMRecebeXML,vValor,fDMRecebeXML.mItensNotaPerc_Margem.AsFloat,vTipoCalculo);
end;

procedure TfrmRecebeXMLNovo_Itens.SpeedButton2Click(Sender: TObject);
begin
  fDMRecebeXML.cdsServicoInt.Close;
  frmcadServico_Int := TfrmCadServico_int.Create(Self);
  frmCadServico_Int.ShowModal;
  fDMRecebeXML.cdsServicoInt.Open;
end;

procedure TfrmRecebeXMLNovo_Itens.SpeedButton1Click(Sender: TObject);
begin
  fDMRecebeXML.cdsMarca.Close;
  frmCadMarca := TfrmCadMarca.Create(Self);
  frmCadMarca.ShowModal;
  fDMRecebeXML.cdsMarca.Open;
end;

procedure TfrmRecebeXMLNovo_Itens.lkcbMarcaChange(Sender: TObject);
begin
  fDMRecebeXML.mItensNotaMarca.AsString := lkcbMarca.Text;
end;

procedure TfrmRecebeXMLNovo_Itens.RxDBLookupCombo1Change(Sender: TObject);
begin
  if RxDBLookupCombo1.KeyValue > 0 then
    fDMRecebeXML.mItensNotaNOME_SERVICO_INT.AsString := RxDBLookupCombo1.Text;
end;

procedure TfrmRecebeXMLNovo_Itens.prc_Grava_ID_CentroCusto_mItens(ID: Integer);
begin
  if not(fDMRecebeXML.mItensNota.State in [dsEdit]) then
    fDMRecebeXML.mItensNota.Edit;
  fDMRecebeXML.mItensNotaID_CentroCusto.AsInteger  := ID;
  fDMRecebeXML.mItensNotaNome_CentroCusto.AsString := SQLLocate('CENTROCUSTO','ID','DESCRICAO',fDMRecebeXML.mItensNotaID_CentroCusto.AsString);
  fDMRecebeXML.mItensNota.Post;
end;

procedure TfrmRecebeXMLNovo_Itens.dbedtIDCentroCustoExit(Sender: TObject);
begin
  prc_Grava_ID_CentroCusto_mItens(fDMRecebeXML.mItensNotaID_CentroCusto.AsInteger);
end;

procedure TfrmRecebeXMLNovo_Itens.rxdblookupMaterialBaseExit(
  Sender: TObject);
begin
  if fDMRecebeXML.mItensNota.State in [dsEdit] then
    fDMRecebeXML.mItensNotaNome_Tipo_Material.AsString := rxdblookupMaterialBase.Text;
end;

procedure TfrmRecebeXMLNovo_Itens.RzGroupBox4Enter(Sender: TObject);
begin
  vUnidade_Ant       := fDMRecebeXML.mItensNotaUnidadeInterno.AsString;
  vConverter_Uni_Ant := fDMRecebeXML.mItensNotaConverter_Unid_Medida.AsBoolean;
  vQtd_Convesor_Ant  := StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaQtdPacote.AsFloat)); 
end;

procedure TfrmRecebeXMLNovo_Itens.RzGroupBox4Exit(Sender: TObject);
begin
  if (vUnidade_Ant <> fDMRecebeXML.mItensNotaUnidadeInterno.AsString) or (vConverter_Uni_Ant <> fDMRecebeXML.mItensNotaConverter_Unid_Medida.AsBoolean)
    or (StrToFloat(FormatFloat('0.00000',vQtd_Convesor_Ant)) <> StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaQtdPacote.AsFloat))) then
    btnCalcular_CustoTotalClick(Sender);
end;

procedure TfrmRecebeXMLNovo_Itens.RxDBLookupCombo2Enter(Sender: TObject);
begin
  vIDCFOP_Ant := StrToIntDef(fDMRecebeXML.mItensNotaCFOPInterno.AsString,0);
end;

end.
