unit uRecebeXMLNovo;

interface

uses
  inifiles, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, xmldom, Grids, DBGrids, DB,
  Xmlxform, ExtCtrls, StdCtrls, ComCtrls, Mask, DBCtrls, RXDBCtrl, SMDBGrid, Buttons, DBTables, ToolEdit, RxLookup, DBXpress,
  UDMRecebeXML, UCBase, ShellApi, NxCollection,
  StrUtils, StdConvs, DateUtils, CurrEdit, RxDBComb, 
  DBClient, XMLIntf, msxmldom, XMLDoc, NxEdit, RzPanel, RzTabs, NxPageControl, SqlExpr;

type
  TfrmRecebeXMLNovo = class(TForm)
    OpenDialog1: TOpenDialog;
    Panel2: TPanel;
    XMLDocument1: TXMLDocument;
    pnlMensagem: TNxPanel;
    RzPageControl1: TRzPageControl;
    TS_Cabecalho: TRzTabSheet;
    TS_Itens_Geral: TRzTabSheet;
    Label91: TLabel;
    SpeedButton1: TSpeedButton;
    Label114: TLabel;
    Label119: TLabel;
    Label122: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo6: TRxDBLookupCombo;
    rxdbLocalEstoque: TRxDBLookupCombo;
    cbTpEmitente: TNxComboBox;
    Label145: TLabel;
    Label132: TLabel;
    Label71: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    cbTipoSped: TNxComboBox;
    ComboBox1: TNxComboBox;
    Label75: TLabel;
    DateEdit1: TDateEdit;
    Label64: TLabel;
    DBEdit34: TDBEdit;
    Label4: TLabel;
    DBEdit60: TDBEdit;
    ComboBox2: TComboBox;
    Label93: TLabel;
    NxPageControl1: TNxPageControl;
    TS_Itens: TNxTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel7: TPanel;
    Shape1: TShape;
    Label67: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Label68: TLabel;
    Shape4: TShape;
    Label90: TLabel;
    Label76: TLabel;
    Shape5: TShape;
    Label118: TLabel;
    Shape6: TShape;
    Label148: TLabel;
    Shape7: TShape;
    Label149: TLabel;
    CheckBox2: TCheckBox;
    TS_Cabecalho_XML: TNxTabSheet;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label16: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit12: TDBEdit;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    edTipoPagamento: TEdit;
    edFinalidade: TEdit;
    edEntradaSaida: TEdit;
    edFormaEmissao: TEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    edProcesso: TEdit;
    DBEdit68: TDBEdit;
    GroupBox3: TGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    DBEdit16: TDBEdit;
    edCNPJEmitente: TEdit;
    edInscEmitente: TEdit;
    edUFEmitente: TEdit;
    GroupBox2: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit15: TDBEdit;
    edCNPJDest: TEdit;
    edInscDest: TEdit;
    edUFDest: TEdit;
    TS_Emitente: TNxTabSheet;
    Panel3: TPanel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label79: TLabel;
    Label61: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    edCNPJEmitente2: TEdit;
    edInscEmitente2: TEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit45: TDBEdit;
    BitBtn1: TBitBtn;
    TS_Destinatario: TNxTabSheet;
    Panel4: TPanel;
    Label47: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label65: TLabel;
    DBEdit33: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    edCNPJDest2: TEdit;
    edInscDest2: TEdit;
    DBEdit49: TDBEdit;
    TS_Transportadora: TNxTabSheet;
    Panel1: TPanel;
    Label73: TLabel;
    Label92: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    edCNPJTransportadora: TEdit;
    edInscTransportadora: TEdit;
    TS_Financeiro: TNxTabSheet;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel5: TPanel;
    btnAbrirXML: TNxButton;
    btnGravarNFe: TNxButton;
    ckAtualizaRef: TNxCheckBox;
    Label48: TLabel;
    Label72: TLabel;
    Label89: TLabel;
    DBEdit61: TDBEdit;
    Label94: TLabel;
    ceVlr_Titulos: TCurrencyEdit;
    pnlMsgItem: TPanel;
    lblMsgItem: TLabel;
    Label99: TLabel;
    btnListarXmls: TNxButton;
    DateEdit2: TDateEdit;
    Label116: TLabel;
    cbFinalidade: TNxComboBox;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGravarNFeClick(Sender: TObject);
    procedure btnAbrirXMLClick(Sender: TObject);
    procedure rxdbLocalEstoqueExit(Sender: TObject);
    procedure RxDBLookupCombo6Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    vCodCidade: Integer;
    vIDPais: Integer;
    vDescICMS: array[1..9] of String;
    vTipoIcms: String;
    vCSTInterno: Integer;
    vItem: Integer;
    vGravar: Boolean;
    vOpenDialog: String;
    vNome_Arquivo_Danfe: String;
    vExiste_Prod_Novo: Boolean;

    vEmissaoFilial: Boolean;

    vCliente_Fornecedor: String;

    procedure Le_cdsDetalhe;
    procedure Grava_mItensNota;
    procedure prc_Grava_mParc(Adiantamento : Boolean; Valor: Real);

    procedure Procura_DadosCabecalho;
    procedure Busca_SitTrib(Codigo: String);

    procedure Move_Campos(Campo1,Campo2, Soma: String);

    procedure Busca_MaterialFornecedor;

    procedure Gravar_Fornecedor;
    procedure Gravar_Cidade;
    procedure Gravar_Pais;
    procedure Gravar_ClasFiscal;
    procedure Gravar_Cliente;
    procedure Gravar_NotaEntrada;
    procedure Gravar_NotaEntradaItens(Tipo: String; Inserir: Boolean = False); //R - Rateio   N - Normal
    procedure prc_Abrir_qFilial(CNPJ_CPF: String);
    procedure prc_Monta_ICMS;
    procedure prc_Gravar_Parc(Parcela, ID_TipoCobranca,ID_Conta: Integer; Data: TDateTime; Valor: Real; Adiantamento: String);

  public
    { Public declarations }
    vUsaConfigNatOper2: Boolean;
    vArqLista: string;

    fDMRecebeXML: TDMRecebeXML;

    function fnc_Monta_CNPJ(CNPJ: String; Qtd: Integer): String;
  end;

var
  frmRecebeXMLNovo: TfrmRecebeXMLNovo;

implementation

uses
  DmdDatabase, uUtilPadrao, UMenu, rsDBUtils, uNFeComandos, VarUtils,
  uUtil_RecebeXML;

{$R *.dfm}

procedure TfrmRecebeXMLNovo.Move_Campos(Campo1,Campo2, Soma: String);
var
  i: Integer;
  vAux: String;
begin
  for i:=0 to (fDMRecebeXML.cdsDetalhe.FieldCount-1) do
  begin
    if fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = Campo1 then
    begin
      if fDMRecebeXML.cdsDetalhe.Fields[i].DataType = ftString then
      begin
        if Soma = 'S' then
        begin
          vAux := Replace(fDMRecebeXML.cdsDetalhe.FieldByName(Campo1).AssTring,'.',',');
          if trim(vAux) = '' then
            vAux := '0';
          fDMRecebeXML.mItensNota.FieldByName(Campo2).AsFloat := fDMRecebeXML.mItensNota.FieldByName(Campo2).AsFloat + StrToFloat(vAux);
        end
        else
          fDMRecebeXML.mItensNota.FieldByName(Campo2).AsString := Replace(fDMRecebeXML.cdsDetalhe.FieldByName(Campo1).AssTring,'.',',')
      end
      else
        if Soma = 'S' then
        begin
          vAux := fDMRecebeXML.cdsDetalhe.FieldByName(Campo1).AsString;
          if trim(vAux) = '' then
            vAux := '0';
          fDMRecebeXML.mItensNota.FieldByName(Campo2).AsFloat := fDMRecebeXML.mItensNota.FieldByName(Campo2).AsFloat + StrToFloat(vAux);
        end
        else
          fDMRecebeXML.mItensNota.FieldByName(Campo2).AsString := fDMRecebeXML.cdsDetalhe.FieldByName(Campo1).AsString;
    end
  end;
end;

procedure TfrmRecebeXMLNovo.Busca_MaterialFornecedor;
begin
  fDMRecebeXML.prc_Abrir_Produto(0,fDMRecebeXML.cdsDetalhecProd.AsString);
  if trim(fDMRecebeXML.mItensNotaTipoVenda.AsString) = '' then
    fDMRecebeXML.mItensNotaTipoVenda.AsString := 'G';
end;

procedure TfrmRecebeXMLNovo.FormShow(Sender: TObject);
begin
  fDMRecebeXML := TDMRecebeXML.Create(Self);
  oDBUtils.SetDataSourceProperties(Self,fDMRecebeXML);
  prc_le_Grid(SMDBGrid1,Name,fDMRecebeXML.qParametros_GeralENDGRIDS.AsString);
  vNotaGerada_XML := False;
  fDMRecebeXML.vCopiar_InfAdicionais_Prod := (SQLLocate('PARAMETROS_RECXML','ID','GRAVAR_ADIC_PROD','1') = 'S');
  fDMRecebeXML.vEntrada_Saida_XML := 'E';
  if fDMRecebeXML.qParametrosGRAVAR_PROD_MAT_RECXML.AsString = 'P' then
    ComboBox1.ItemIndex := 0
  else
    ComboBox1.ItemIndex := 1;

  vNome_Arquivo_Danfe   := '';
  fDMRecebeXML.vAssociar_Prod_XML := True;
  Label132.Visible      := (fDMRecebeXML.qParametros_RecXMLUSA_REF_SEQUENCIAL.AsString = 'S');
  CurrencyEdit2.Enabled := (fDMRecebeXML.qParametros_RecXMLUSA_REF_SEQUENCIAL.AsString = 'S');
  if (fDMRecebeXML.qParametros_RecXMLUSA_REF_SEQUENCIAL.AsString = 'S') then
    CurrencyEdit2.Color := clSilver;

  vUsaConfigNatOper2 := False;
  fDMRecebeXML.vUsaNome_XML := False;
  NxPageControl1.ActivePage := TS_Itens;
  if trim(vArqLista) <> '' then
    btnAbrirXMLClick(Sender);
end;

procedure TfrmRecebeXMLNovo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    if FileExists(vNome_Arquivo_Danfe) then
      DeleteFile(vNome_Arquivo_Danfe);
  except
  end;
  fDMRecebeXML.qParametros_Geral.Close;
  fDMRecebeXML.qParametros_Geral.Open;
  prc_Grava_Grid(SMDBGrid1,Name,fDMRecebeXML.qParametros_GeralENDGRIDS.AsString);

  Tag := 0;
  FreeAndNil(fDMRecebeXML);
  Tag := 0;
  Action := Cafree;
end;

function TfrmRecebeXMLNovo.fnc_Monta_CNPJ(CNPJ: String; Qtd: Integer): String;
begin
  result := '';
  if Qtd = 14 then
    result := Copy(cnpj,1,2)
            + '.' + Copy(cnpj,3,3)
            + '.' + Copy(cnpj,6,3)
            + '/' + Copy(cnpj,9,4)
            + '-' + Copy(cnpj,13,2)
  else
    result := Copy(cnpj,1,3)
            + '.' + Copy(cnpj,4,3)
            + '.' + Copy(cnpj,7,3)
            + '-' + Copy(cnpj,10,2);
end;

procedure TfrmRecebeXMLNovo.Le_cdsDetalhe;
var
  vDup: Real;
  Node_Tpag: IXMLNode;
  vTexto: String;
  vTexto2: String;
  vVlrAux: Real;
begin
  fDMRecebeXML.mItensNota.EmptyDataSet;
  fDMRecebeXML.mParc.EmptyDataSet;
  vCliente_Fornecedor := 'C';

  vExiste_Prod_Novo := False;
  fDMRecebeXML.cdsDetalhe.First;
  while not fDMRecebeXML.cdsDetalhe.Eof do
  begin
    Grava_mItensNota;
    fDMRecebeXML.cdsDetalhe.Next;
  end;
  if vCliente_Fornecedor = 'C' then
    cbTpEmitente.ItemIndex := 1;
  fDMRecebeXML.cdsParcelas.First;
  while not fDMRecebeXML.cdsParcelas.Eof do
  begin
    vVlrAux := StrToFloat(FormatFloat('0.00',fDMRecebeXML.cdsParcelasvDup.AsFloat));
    prc_Grava_mParc(False,vVlrAux);
    fDMRecebeXML.cdsParcelas.Next;
  end;
  if fDMRecebeXML.cdsParcelas.IsEmpty then
  begin
    XMLDocument1.LoadFromFile(OpenDialog1.FileName);
    XMLDocument1.Active;
    Node_Tpag := XMLDocument1.DocumentElement;
    vTexto  := Node_Tpag.ChildNodes['NFe'].ChildNodes['infNFe'].ChildNodes['pag'].ChildNodes['detPag'].ChildNodes['vPag'].NodeValue;
    vTexto2 := Node_Tpag.ChildNodes['NFe'].ChildNodes['infNFe'].ChildNodes['pag'].ChildNodes['detPag'].ChildNodes['tPag'].NodeValue;
    if (vTexto <> '') and (vTexto2 <> '90') then
    begin
      vDup := StrToFloat(Replace(vTexto,'.',','));
      fDMRecebeXML.mParc.Insert;
      fDMRecebeXML.mParcNumDuplicata.AsString   := '1';
      fDMRecebeXML.mParcDtVencimento.AsDateTime := fDMRecebeXML.vDtEmissao;
      fDMRecebeXML.mParcVlrVencimento.AsFloat   := vDup;
      fDMRecebeXML.mParcID_Conta.Clear;
      fDMRecebeXML.mParcID_TipoCobranca.Clear;
      fDMRecebeXML.mParc.Post;
    end;
  end;
end;

procedure TfrmRecebeXMLNovo.Grava_mItensNota;
var
  i: Integer;
  vTexto: String;
  vPosIni: Integer;
  vPosStr: String;
  vQtdAux: Real;
  vTexto2: String;
  vFlag: Boolean;
  vInserirAux: Boolean;
  vArq: String;
begin
  fDMRecebeXML.vGerar_Estoque_XML := 'N';
  vInserirAux := True;
  fDMRecebeXML.mItensNota.Insert;
  fDMRecebeXML.mItensNotaItem.AsInteger              := fDMRecebeXML.cdsDetalhenItem.AsInteger;
  fDMRecebeXML.mItensNotaCodProduto.AsString         := fDMRecebeXML.cdsDetalhecProd.AsString;
  fDMRecebeXML.mItensNotaNumNota.AsInteger           := fDMRecebeXML.cdsCabecalhonNF.AsInteger;
  fDMRecebeXML.mItensNotaSerie.AsString              := fDMRecebeXML.cdsCabecalhoserie.AsString;
  fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger := StrToIntDef(SQLLocate('PRODUTO','REFERENCIA','ID',fDMRecebeXML.mItensNotaCodProduto.AsString),0);
  fDMRecebeXML.mItensNotaCodProduto_Ped.AsInteger    := 0;
  fDMRecebeXML.mItensNotaReferencia_Int.AsString     := fDMRecebeXML.cdsDetalhecProd.AsString;
  fDMRecebeXML.mItensNotaCodCor.AsInteger            := 0;
  fDMRecebeXML.mItensNotaID_Cor.AsInteger            := 0;
  fDMRecebeXML.mItensNotaCodGrade.AsInteger          := 0;
  fDMRecebeXML.mItensNotaPosicao.AsInteger           := 0;
  fDMRecebeXML.mItensNotaTamanho.AsString            := '';
  fDMRecebeXML.mItensNotaNomeCor.AsString            := '';
  fDMRecebeXML.mItensNotaCodFornecedor.AsInteger     := fDMRecebeXML.vCodFornecedor_XML;
  fDMRecebeXML.mItensNotaQtd.AsFloat                 := fDMRecebeXML.cdsDetalheqCom.AsFloat;
  fDMRecebeXML.mItensNotaVlrUnitario.AsFloat         := fDMRecebeXML.mItensNotaVlrUnitario.AsFloat + fDMRecebeXML.cdsDetalhevUnCom.AsFloat;
  fDMRecebeXML.mItensNotaVlrUnitario_Conversao.AsFloat := fDMRecebeXML.mItensNotaVlrUnitario_Conversao.AsFloat + fDMRecebeXML.cdsDetalhevUnCom.AsFloat;

  fDMRecebeXML.mItensNotaVlr_Custo_Prod.AsFloat      := fDMRecebeXML.mItensNotaVlr_Custo_Prod.AsFloat + fDMRecebeXML.cdsDetalhevUnCom.AsFloat;
  fDMRecebeXML.mItensNotaVlrTotal.AsFloat            := fDMRecebeXML.mItensNotaVlrTotal.AsFloat + fDMRecebeXML.cdsDetalhevProd.AsFloat;
  fDMRecebeXML.mItensNotaNomeProduto.AsString        := fDMRecebeXML.cdsDetalhexProd.AsString;
  fDMRecebeXML.mItensNotaNomeProduto_Nota.AsString := fDMRecebeXML.cdsDetalhexProd.AsString;
  fDMRecebeXML.mItensNotaGerar_Estoque.AsString := 'N';
  fDMRecebeXML.mItensNotaCodBarra.AsString  := '';
  fDMRecebeXML.mItensNotaCodBarra2.AsString := '';
  if (trim(fDMRecebeXML.cdsDetalhecEAN.AsString) <> '') and (copy(fDMRecebeXML.cdsDetalhecEAN.AsString,1,3) <> 'SEM') then
  begin
    fDMRecebeXML.mItensNotaCodBarra.AsString := fDMRecebeXML.cdsDetalhecEAN.AsString;
    if (trim(fDMRecebeXML.cdsDetalhecEANTrib.AsString) <> '') and (copy(fDMRecebeXML.cdsDetalhecEANTrib.AsString,1,3) <> 'SEM') then
      fDMRecebeXML.mItensNotaCodBarra2.AsString := fDMRecebeXML.cdsDetalhecEANTrib.AsString;
    if trim(fDMRecebeXML.mItensNotaCodBarra2.AsString) = '' then
      fDMRecebeXML.mItensNotaCodBarra2.AsString := fDMRecebeXML.mItensNotaCodBarra.AsString;
  end;
  fDMRecebeXML.mItensNotaObs_Complementar.AsString := '';
  fDMRecebeXML.mItensNotaNCM.AsString          := fDMRecebeXML.cdsDetalheNCM.AsString;
  fDMRecebeXML.mItensNotaID_NCM.AsInteger      := fDMRecebeXML.fnc_Abrir_NCM(fDMRecebeXML.cdsDetalheNCM.AsString);
  fDMRecebeXML.mItensNotaID_CFOPNCM.AsInteger  := fDMRecebeXML.cdsNCMID_CFOP.AsInteger;
  if fDMRecebeXML.mItensNotaID_NCM.AsInteger > 0 then
    fDMRecebeXML.mItensNotaCEST_Interno.AsString := fDMRecebeXML.cdsNCMCOD_CEST.AsString;
  fDMRecebeXML.mItensNotaCEST.AsString         := fDMRecebeXML.cdsDetalheCEST.AsString;
  fDMRecebeXML.mItensNotaCFOP.AsString         := fDMRecebeXML.cdsDetalheCFOP.AsString;
  fDMRecebeXML.mItensNotaCFOPOriginal.AsString := fDMRecebeXML.cdsDetalheCFOP.AsString;
  fDMRecebeXML.mItensNotaID_CFOPAtual.AsInteger  := StrToIntDef(SQLLocate('TAB_CFOP','CODCFOP','ID',fDMRecebeXML.mItensNotaCFOP.AsString),0);
  vCliente_Fornecedor := 'C';
  fDMRecebeXML.mItensNotaQtdPacote.AsFloat          := 0;
  fDMRecebeXML.mItensNotaQtdPacoteInterno.AsInteger := 0;

  fDMRecebeXML.mItensNotaConversorUnidade.AsFloat   := 0;
  fDMRecebeXML.mItensNotaUnidade.AsString           := TirarAcento(UpperCase(fDMRecebeXML.cdsDetalheuCom.AsString));
  fDMRecebeXML.mItensNotaUnidadeInterno.AsString    := TirarAcento(UpperCase(fDMRecebeXML.cdsDetalheuCom.AsString));
  fDMRecebeXML.mItensNotaVlr_Venda.AsFloat          := 0;
  fDMRecebeXML.mItensNotaPreco_Varejo.AsFloat       := 0;
  fDMRecebeXML.mItensNotaVlr_Venda_Atual.AsFloat    := 0;
  fDMRecebeXML.mItensNotaVlr_Custo_Prod.AsFloat     := 0;
  fDMRecebeXML.mItensNotaConverter_Unid_Medida.AsBoolean := False;

  fDMRecebeXML.mItensNotaID_Grupo.Clear;
  fDMRecebeXML.mItensNotaID_ContaOrcamento.Clear;
  fDMRecebeXML.mItensNotaNome_Grupo.AsString := '';
  case cbFinalidade.ItemIndex of
    0: fDMRecebeXML.mItensNotaTipoVenda.AsString := 'C';
    1: fDMRecebeXML.mItensNotaTipoVenda.AsString := 'R';
    2: fDMRecebeXML.mItensNotaTipoVenda.AsString := 'I';
    4: fDMRecebeXML.mItensNotaTipoVenda.AsString := 'G';
  end;
  prc_Monta_ICMS;
  fDMRecebeXML.mItensNotaCFOPInterno.AsInteger := fDMRecebeXML.mItensNotaID_CFOPAtual.AsInteger;
  fDMRecebeXML.mItensNotaID_CFOP_NFCe.Clear;
  fDMRecebeXML.mItensNotaCodCFOP_NFCe.Clear;
  Busca_MaterialFornecedor;
  fDMRecebeXML.mItensNotaNumPedido.AsString     := fDMRecebeXML.cdsDetalhexPed.AsString;
  fDMRecebeXML.mItensNotaItemPedido.AsInteger   := fDMRecebeXML.cdsDetalhenItemPed.AsInteger;
  vTexto2 := Monta_Numero(fDMRecebeXML.cdsDetalhexPed.AsString,0);
  if not(fDMRecebeXML.mItensNota.State in [dsEdit,dsInsert]) then
    fDMRecebeXML.mItensNota.Edit;
  fDMRecebeXML.mItensNotaInfAdicionais.AsString := fDMRecebeXML.cdsDetalheinfAdProd.AsString;
  vTexto  := Copy(fDMRecebeXML.cdsDetalheinfAdProd.AsString,1,250);
  fDMRecebeXML.mItensNotaNumLote.AsString := '';
  fDMRecebeXML.mItensNotaAliqIPI.AsFloat      := fDMRecebeXML.cdsDetalhepIPI.AsFloat;
  fDMRecebeXML.mItensNotaVlrIPI.AsFloat       := fDMRecebeXML.cdsDetalhevIPI.AsFloat;
  fDMRecebeXML.mItensNotaVlrDesconto.AsFloat  := fDMRecebeXML.cdsDetalhevDesc.AsFloat;
  fDMRecebeXML.mItensNotaVlrFrete.AsFloat     := fDMRecebeXML.cdsDetalhevFrete.AsFloat;
  fDMRecebeXML.mItensNotaGravarNovo.AsBoolean := False;
  if not(fDMRecebeXML.mItensNota.State in [dsedit,dsInsert]) then
    fDMRecebeXML.mItensNota.Edit;
  try
    for i := 0 to fDMRecebeXML.cdsDetalhe.FieldCount-1 do
    begin
      if not(fDMRecebeXML.cdsDetalhe.Fields[i].IsNull) then
      begin
        if (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'PISAliq_pPIS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'PISOutr_pPIS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'PISQtde_vAliqProd') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'pPIS') then
          fDMRecebeXML.mItensNotaAliqPIS.AsFloat := fDMRecebeXML.cdsDetalhe.Fields[i].Value
        else
        if (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'PISAliq_vPIS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'PISOutr_vPIS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'PISQtde_vPIS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'vPIS') then
          fDMRecebeXML.mItensNotaVlrPis.AsFloat := fDMRecebeXML.cdsDetalhe.Fields[i].Value
        else
        if (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'PISAliq_vBC') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'PISOutr_vBC') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'PISQtde_vBC') then
          fDMRecebeXML.mItensNotaBase_Pis.AsFloat := fDMRecebeXML.cdsDetalhe.Fields[i].Value
        else
        if (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'COFINSAliq_pCOFINS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'COFINSOutr_pCOFINS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'COFINSQtde_vAliqProd') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'pCOFINS') then
          fDMRecebeXML.mItensNotaAliqCofins.AsFloat := fDMRecebeXML.cdsDetalhe.Fields[i].Value
        else
        if (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'COFINSAliq_vBC') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'COFINSOutr_vBC') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'COFINSQtde_vBC') then
          fDMRecebeXML.mItensNotaBase_Cofins.AsFloat := fDMRecebeXML.cdsDetalhe.Fields[i].Value
        else
        if (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'COFINSAliq_vCOFINS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'COFINSOutr_vCOFINS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'COFINSQtde_vCOFINS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'vCOFINS') then
          fDMRecebeXML.mItensNotaVlrCofins.AsFloat := fDMRecebeXML.cdsDetalhe.Fields[i].Value;

        if (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'PISQtde_CST') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'PISOutr_CST') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'PISNT_CST') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'PISAliq_CST') then
          fDMRecebeXML.mItensNotaCodPIS.AsFloat := fDMRecebeXML.cdsDetalhe.Fields[i].Value;

        if (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'COFINSQtde_CST') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'COFINSOutr_CST') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'COFINSNT_CST') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'COFINSAliq_CST') then
          fDMRecebeXML.mItensNotaCodCofins.AsFloat := fDMRecebeXML.cdsDetalhe.Fields[i].Value;

        if (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'PISAliq_pPIS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'PISOutr_pPIS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'PISQtde_vAliqProd') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'pPIS') then
          fDMRecebeXML.mItensNotaAliqPIS.AsFloat := fDMRecebeXML.cdsDetalhe.Fields[i].Value
        else
        if (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'PISAliq_vPIS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'PISOutr_vPIS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'PISQtde_vPIS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'vPIS') then
          fDMRecebeXML.mItensNotaVlrPis.AsFloat := fDMRecebeXML.cdsDetalhe.Fields[i].Value
        else
        if (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'COFINSAliq_pCOFINS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'COFINSOutr_pCOFINS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'COFINSQtde_vAliqProd') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'pCOFINS') then
          fDMRecebeXML.mItensNotaAliqCofins.AsFloat := fDMRecebeXML.cdsDetalhe.Fields[i].Value
        else
        if (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'COFINSAliq_vCOFINS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'COFINSOutr_vCOFINS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'COFINSQtde_vCOFINS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'vCOFINS') then
          fDMRecebeXML.mItensNotaVlrCofins.AsFloat := fDMRecebeXML.cdsDetalhe.Fields[i].Value
        else
        if (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'vICMSSubstituto') then
          fDMRecebeXML.mItensNotaVlr_Icms_Substituto.AsFloat := fDMRecebeXML.cdsDetalhe.Fields[i].Value;
      end;
    end;
  except
  end;
  fDMRecebeXML.mItensNotaPreco_Custo_Total.AsFloat := 0;
  fDMRecebeXML.mItensNotaANP_PRODUTO.AsString   := fDMRecebeXML.cdsDetalhecProdANP.AsString;
  fDMRecebeXML.mItensNotaANP_UF_CONS.AsString   := fDMRecebeXML.cdsDetalheUFCons.AsString;
  fDMRecebeXML.mItensNotaANP_DESCRICAO.AsString := fDMRecebeXML.cdsDetalhedescANP.AsString;
  fDMRecebeXML.mItensNotaANP_PERC_PGNI.AsFloat  := 0;
  fDMRecebeXML.mItensNotaANP_PERC_PGNN.AsFloat  := 0;
  if trim(fDMRecebeXML.mItensNotaANP_PRODUTO.AsString) <> '' then  // 28/05/2020
  begin
    vTexto := SQLLocate('TAB_CPROD_ANP','CODIGO','ID',fDMRecebeXML.mItensNotaANP_PRODUTO.AsString);
    if trim(vTexto) <> '' then
      fDMRecebeXML.mItensNotaANP_ID.AsInteger := StrToInt(vTexto);
  end;
  fDMRecebeXML.mItensNotaPreco_Custo_Ant.AsFloat   := 0;
  fDMRecebeXML.mItensNotaCod_Produto_Nome.AsString := '';
  fDMRecebeXML.mItensNotaID_CentroCusto.AsInteger  := 0;
  fDMRecebeXML.mItensNotaNomeProduto_Pedido.AsString := '';
  fDMRecebeXML.mItensNotaVlr_Pedido_Unitario.AsFloat := 0;
  fDMRecebeXML.mItensNotaUnidade_Pedido.AsString     := '';
  fDMRecebeXML.mItensNotaQtd_Pedido.AsFloat          := 0;
  try
    if (StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaPreco_Custo_Ant.AsFloat)) > 0) and
       (StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaPreco_Custo_Ant.AsFloat)) > StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrUnitario_Conversao.AsFloat))) then
      fDMRecebeXML.mItensNotaGrafico.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Down.bmp')
    else
    if (StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaPreco_Custo_Ant.AsFloat)) > 0) and
       (StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaPreco_Custo_Ant.AsFloat)) < StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrUnitario_Conversao.AsFloat))) then
      fDMRecebeXML.mItensNotaGrafico.LoadFromFile(ExtractFilePath(Application.ExeName) + 'UpDown.bmp');
  except
  end;
  fDMRecebeXML.mItensNotaAtualizarPrecoVenda.AsBoolean := False;
  vTexto := Monta_Numero(fDMRecebeXML.mItensNotaCodPIS.AsString,2);
  fDMRecebeXML.mItensNotaID_Pis.AsInteger := StrToIntDef(SQLLocate('TAB_PIS','CODIGO','ID',vTexto),0);
  vTexto := Monta_Numero(fDMRecebeXML.mItensNotaCodCofins.AsString,2);
  fDMRecebeXML.mItensNotaID_Cofins.AsInteger := StrToIntDef(SQLLocate('TAB_COFINS','CODIGO','ID',vTexto),0);
  fDMRecebeXML.mItensNota.Post;
end;

procedure TfrmRecebeXMLNovo.Procura_DadosCabecalho;
begin
  fDMRecebeXML.vCodFornecedor_XML := 0;
  vCodCidade     := 0;
  vIDPais        := 0;
  fDMRecebeXML.vFilial_Local := 0;

  prc_Abrir_qFilial(edCNPJEmitente.Text);
  fDMRecebeXML.vAssociar_Prod_XML := False;
  if fDMRecebeXML.fnc_Abrir_Fornecedor(edCNPJDest.Text) then
    fDMRecebeXML.vCodFornecedor_XML := fDMRecebeXML.cdsFornecedorCODIGO.AsInteger;
  fDMRecebeXML.fnc_Abrir_Cidade(fDMRecebeXML.cdsCabecalhoenderEmit_cMun.AsString);
  fDMRecebeXML.fnc_Abrir_Pais(fDMRecebeXML.cdsCabecalhoenderEmit_cPais.AsString);
  if fDMRecebeXML.cdsCabecalhoCRT.AsInteger = 3 then
  begin
    vDescICMS[1] := 'ICMS00_';
    vDescICMS[2] := 'ICMS10_';
    vDescICMS[3] := 'ICMS20_';
    vDescICMS[4] := 'ICMS30_';
    vDescICMS[5] := 'ICMS40_';
    vDescICMS[6] := 'ICMS51_';
    vDescICMS[7] := 'ICMS60_';
    vDescICMS[8] := 'ICMS70_';
    vDescICMS[9] := 'ICMS90_';
  end
  else
  begin
    vDescICMS[1] := 'ICMSSN101_';
    vDescICMS[2] := 'ICMSSN102_';
    vDescICMS[3] := 'ICMSSN201_';
    vDescICMS[4] := 'ICMSSN202_';
    vDescICMS[5] := 'ICMSSN500_';
    vDescICMS[6] := 'ICMSSN900_';
    vDescICMS[7] := '';
    vDescICMS[8] := '';
    vDescICMS[9] := '';
  end;
  RxDBLookupCombo1.Enabled := ((fDMRecebeXML.vFilial_Local <= 0) or (fDMRecebeXML.qParametros_GeralUSA_TRIANGULAR.AsString = 'S'));
  RxDBLookupCombo1.Color   := fnc_Cor_Habilitado(RxDBLookupCombo1.Enabled);
  SpeedButton1.Enabled     := ((fDMRecebeXML.vFilial_Local <= 0) or (fDMRecebeXML.qParametros_GeralUSA_TRIANGULAR.AsString = 'S'));
  RxDBLookupCombo6.Enabled := (fDMRecebeXML.vFilial_Local <= 0);
  RxDBLookupCombo6.Color   := fnc_Cor_Habilitado(RxDBLookupCombo6.Enabled);
  if fDMRecebeXML.cdsCliente.Locate('CNPJ_CPF',edCNPJDest2.Text, ([LocaseInsensitive])) then
    RxDBLookupCombo1.KeyValue := fDMRecebeXML.cdsClienteCODIGO.AsInteger;
  if (fDMRecebeXML.vFilial_Local > 0) then
    RxDBLookupCombo6.KeyValue := fDMRecebeXML.vFilial_Local
  else
    RxDBLookupCombo6.ClearValue;
end;

procedure TfrmRecebeXMLNovo.Busca_SitTrib(Codigo: String);
begin
  if Codigo = '0' then
    Codigo := '00';

  if fDMRecebeXML.cdsTab_CSTICMS.Locate('COD_CST',Codigo, ([LocaseInsensitive])) then
  begin
    vCSTInterno   := fDMRecebeXML.cdsTab_CSTICMSID.AsInteger;
    fDMRecebeXML.vCST_TipoICMS_XML := fDMRecebeXML.cdsTab_CSTICMSTIPO_ICMS.AsString;
  end;
end;

procedure TfrmRecebeXMLNovo.Gravar_Cidade;
var
  vAux: Integer;
begin
  vAux := dmDatabase.ProximaSequencia('CIDADE',0);

  fDMRecebeXML.cdsCidade.Insert;
  fDMRecebeXML.cdsCidadeID.AsInteger          := vAux;
  fDMRecebeXML.cdsCidadeNOME.AsString         := UpperCase(fDMRecebeXML.cdsCabecalhoenderEmit_xMun.AsString);
  fDMRecebeXML.cdsCidadeUF.AsString           := UpperCase(fDMRecebeXML.cdsCabecalhoenderEmit_UF.AsString);
  fDMRecebeXML.cdsCidadeCODMUNICIPIO.AsString := fDMRecebeXML.cdsCabecalhoenderEmit_cMun.AsString;
  fDMRecebeXML.cdsCidade.Post;
  fDMRecebeXML.cdsCidade.ApplyUpdates(0);
  vCodCidade := vAux;
end;

procedure TfrmRecebeXMLNovo.Gravar_Pais;
var
  vAux: Integer;
begin
  vAux := dmDatabase.ProximaSequencia('PAIS',0);
  fDMRecebeXML.cdsPais.Insert;
  fDMRecebeXML.cdsPaisID.AsInteger     := vAux;
  fDMRecebeXML.cdsPaisNOME.AsString    := UpperCase(fDMRecebeXML.cdsCabecalhoenderEmit_xPais.AsString);
  fDMRecebeXML.cdsPaisCODPAIS.AsString := fDMRecebeXML.cdsCabecalhoenderEmit_cPais.AsString;
  fDMRecebeXML.cdsPais.Post;
  fDMRecebeXML.cdsPais.ApplyUpdates(0);
  vIDPais := vAux;
end;

procedure TfrmRecebeXMLNovo.Gravar_Fornecedor;
var
  vAux: Integer;
begin
  vAux := dmDatabase.ProximaSequencia('PESSOA',0);
  fDMRecebeXML.mItensNota.First;
  try
    fDMRecebeXML.cdsFornecedor.Insert;
    fDMRecebeXML.cdsFornecedorCODIGO.AsInteger   := vAux;
    if fDMRecebeXML.qParametros_GeralUSAR_PESSOA_FILIAL.AsString = 'S' then
      fDMRecebeXML.cdsFornecedorFILIAL.AsInteger := fDMRecebeXML.vFilial_Local;
    fDMRecebeXML.cdsFornecedorNOME.AsString      := UpperCase(fDMRecebeXML.cdsCabecalhoemit_xNome.AsString);
    fDMRecebeXML.cdsFornecedorENDERECO.AsString  := UpperCase(fDMRecebeXML.cdsCabecalhoenderEmit_xLgr.AsString);
    fDMRecebeXML.cdsFornecedorBAIRRO.AsString    := UpperCase(fDMRecebeXML.cdsCabecalhoenderEmit_xBairro.AsString);
    fDMRecebeXML.cdsFornecedorCIDADE.AsString    := UpperCase(fDMRecebeXML.cdsCabecalhoenderEmit_xMun.AsString);
    fDMRecebeXML.cdsFornecedorCEP.AsString       := fDMRecebeXML.cdsCabecalhoenderEmit_CEP.AsString;
    fDMRecebeXML.cdsFornecedorUF.AsString        := UpperCase(fDMRecebeXML.cdsCabecalhoenderEmit_UF.AsString);
    fDMRecebeXML.cdsFornecedorTELEFONE1.AsString := fDMRecebeXML.cdsCabecalhoenderEmit_fone.AsString;
    fDMRecebeXML.cdsFornecedorCNPJ_CPF.AsString  := edCNPJEmitente2.Text;
    fDMRecebeXML.cdsFornecedorINSCR_EST.AsString := edInscEmitente2.Text;
    if fDMRecebeXML.cdsFornecedorINSCR_EST.AsString = EmptyStr then
      fDMRecebeXML.cdsFornecedorTIPO_CONTRIBUINTE.AsInteger := 9
    else
    if fDMRecebeXML.cdsFornecedorINSCR_EST.AsString = 'ISENTO' then
      fDMRecebeXML.cdsFornecedorTIPO_CONTRIBUINTE.AsInteger := 2
    else
      fDMRecebeXML.cdsFornecedorTIPO_CONTRIBUINTE.AsInteger := 1;
    fDMRecebeXML.cdsFornecedorDTCADASTRO.AsDateTime := Date;
    fDMRecebeXML.cdsFornecedorFANTASIA.AsString     := UpperCase(fDMRecebeXML.cdsCabecalhoxFant.AsString);
    fDMRecebeXML.cdsFornecedorTP_CLIENTE.AsString    := 'S';

    if vCodCidade < 1 then
      Gravar_Cidade;
    if vIDPais < 1 then
      Gravar_Pais;
    fDMRecebeXML.cdsFornecedorID_CIDADE.AsInteger   := vCodCidade;
    fDMRecebeXML.cdsFornecedorUSUARIO.AsString      := vUsuario;
    fDMRecebeXML.cdsFornecedorHRCADASTRO.AsDateTime := Now;
    fDMRecebeXML.cdsFornecedorCOMPLEMENTO_END.AsString := UpperCase(fDMRecebeXML.cdsCabecalhoenderEmit_xCpl.AsString);
    fDMRecebeXML.cdsFornecedorNUM_END.AsString      := fDMRecebeXML.cdsCabecalhoenderEmit_nro.AsString;
    fDMRecebeXML.cdsFornecedorID_PAIS.AsInteger     := vIDPais;
    if Length(edCNPJEmitente2.Text) = 18 then
      fDMRecebeXML.cdsFornecedorPESSOA.AsString := 'J'
    else
      fDMRecebeXML.cdsFornecedorPESSOA.AsString := 'F';
    if (fDMRecebeXML.qParametros_RecXMLCONTROLAR_GRAVA_PROD.AsString = 'S') and not(fDMRecebeXML.vAssociar_Prod_XML) then
      fDMRecebeXML.cdsFornecedorASSOCIAR_PROD.AsString := 'N'
    else
      fDMRecebeXML.cdsFornecedorASSOCIAR_PROD.AsString := 'S';
    if vID_ContaOrcamento_Pos > 0 then
    fDMRecebeXML.cdsFornecedor.Post;
    fDMRecebeXML.cdsFornecedor.ApplyUpdates(0);
    fDMRecebeXML.vCodFornecedor_XML  := vAux;
  except
    on e: Exception do
    begin
      fDMRecebeXML.vCodFornecedor_XML :=  0;
      Raise Exception.Create('Ocorreu o seguinte erro ao gravar o fornecedor: ' + #13 + e.Message);
    end
  end;
end;

procedure TfrmRecebeXMLNovo.Gravar_ClasFiscal;
var
  vAux: Integer;
begin
  if fDMRecebeXML.mItensNotaID_NCM.AsInteger > 0 then
    exit;

  vAux := fDMRecebeXML.fnc_Abrir_NCM(fDMRecebeXML.mItensNotaNCM.AsString);
  if vAux > 0 then
  begin
    fDMRecebeXML.mItensNota.Edit;
    fDMRecebeXML.mItensNotaID_NCM.AsInteger := vAux;
    fDMRecebeXML.mItensNotaCEST_Interno.AsString := fDMRecebeXML.cdsNCMCOD_CEST.AsString;
    fDMRecebeXML.mItensNota.Post;
    exit;
  end;

  vAux := dmDatabase.ProximaSequencia('TAB_NCM',0);            
  try                                              
    fDMRecebeXML.cdsNCM.Insert;
    fDMRecebeXML.cdsNCMID.AsInteger      := vAux;
    fDMRecebeXML.cdsNCMNCM.AsString      := fDMRecebeXML.mItensNotaNCM.AsString;
    fDMRecebeXML.cdsNCMCOD_CEST.AsString := fDMRecebeXML.mItensNotaCEST.AsString;
    fDMRecebeXML.cdsNCMNOME.AsString     := '';

    if (SQLLocate('TAB_CFOP','CODCFOP','SUBSTITUICAO_TRIB',fDMRecebeXML.mItensNotaCFOPOriginal.AsString) = 'S')
      or (SQLLocate('TAB_CFOP','CODCFOP','MARCAR_NCM_ST',fDMRecebeXML.mItensNotaCFOPOriginal.AsString) = 'S') then
        fDMRecebeXML.cdsNCMGERAR_ST.AsString := 'S';
    fDMRecebeXML.cdsNCM.Post;
    fDMRecebeXML.cdsNCM.ApplyUpdates(0);

    fDMRecebeXML.mItensNota.Edit;
    fDMRecebeXML.mItensNotaID_NCM.AsInteger      := vAux;
    fDMRecebeXML.mItensNotaCEST_Interno.AsString := fDMRecebeXML.mItensNotaCEST.AsString;
    fDMRecebeXML.mItensNota.Post;
  except
    on e: Exception do
    begin
      Raise Exception.Create('Ocorreu o seguinte erro ao gravar a NCM: ' + #13 + e.Message);
    end
  end;
end;

procedure TfrmRecebeXMLNovo.Gravar_NotaEntrada;
var
  vNumSeq: Integer;
  vExisteAux: Boolean;
begin
  vID_Nota := 0;
  vGravar := False;
  vExisteAux := fDMRecebeXML.fnc_Abrir_Nota(fDMRecebeXML.vFilial_Local,fDMRecebeXML.cdsCabecalhonNF.AsInteger,fDMRecebeXML.vCodFornecedor_XML,fDMRecebeXML.cdsCabecalhoserie.AsString);
  if vExisteAux then
    exit;
  vGravar := True;
  vNumSeq := dmDatabase.ProximaSequencia('NOTAFISCAL',0);
  try
    fDMRecebeXML.cdsNotaFiscal.Insert;
    fDMRecebeXML.cdsNotaFiscalDESPESA_APAGAR.AsString := 'N';
    fDMRecebeXML.cdsNotaFiscalID.AsInteger     := vNumSeq;
    fDMRecebeXML.cdsNotaFiscalFILIAL.AsInteger := fDMRecebeXML.vFilial_Local;
    fDMRecebeXML.cdsNotaFiscalID_OPERACAO_NOTA.Clear;
    fDMRecebeXML.cdsNotaFiscalNUMNOTA.AsInteger := fDMRecebeXML.cdsCabecalhonNF.AsInteger;
    fDMRecebeXML.cdsNotaFiscalSERIE.AsString    := fDMRecebeXML.cdsCabecalhoserie.AsString;
    fDMRecebeXML.cdsNotaFiscalTIPO_REG.AsString := 'NTS';
    fDMRecebeXML.cdsNotaFiscalID_CLIENTE.AsInteger := fDMRecebeXML.vCodFornecedor_XML;
    if (fDMRecebeXML.mParc.IsEmpty) then
      fDMRecebeXML.cdsNotaFiscalTIPO_PRAZO.AsString := 'N'
    else
      fDMRecebeXML.cdsNotaFiscalTIPO_PRAZO.AsString := 'P';
    fDMRecebeXML.cdsNotaFiscalDTEMISSAO.AsDateTime      := DateEdit2.Date;
    fDMRecebeXML.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime := DateEdit1.Date;
    fDMRecebeXML.cdsNotaFiscalVLR_FRETE.AsFloat         := fDMRecebeXML.cdsCabecalhovFrete.AsFloat;
    if StrToFloat(FormatFloat('0.00',fDMRecebeXML.cdsNotaFiscalVLR_FRETE.AsFloat)) > 0 then
      fDMRecebeXML.cdsNotaFiscalGERARDUPL_FRETE.AsString := 'S';
    fDMRecebeXML.cdsNotaFiscalVLR_NOTA.AsFloat       := fDMRecebeXML.cdsCabecalhovNF.AsFloat;
    fDMRecebeXML.cdsNotaFiscalBASE_ICMS.AsFloat      := 0;
    fDMRecebeXML.cdsNotaFiscalVLR_ICMS.AsFloat       := 0;
    fDMRecebeXML.cdsNotaFiscalVLR_IPI.AsFloat        := 0;
    fDMRecebeXML.cdsNotaFiscalVLR_PIS.AsFloat        := 0;
    fDMRecebeXML.cdsNotaFiscalVLR_COFINS.AsFloat     := 0;
    fDMRecebeXML.cdsNotaFiscalBASE_COFINS.AsFloat    := 0;
    fDMRecebeXML.cdsNotaFiscalBASE_PIS.AsFloat       := 0;

    fDMRecebeXML.cdsNotaFiscalID_CFOP.AsInteger      := fDMRecebeXML.mItensNotaCFOPInterno.AsInteger;
    fDMRecebeXML.cdsNotaFiscalVLR_OUTRASDESP.AsFloat := fDMRecebeXML.cdsCabecalhovOutro.AsFloat;
    fDMRecebeXML.cdsNotaFiscalVLR_ITENS.AsFloat := fDMRecebeXML.cdsCabecalhovProd.AsFloat;
    if StrToFloat(FormatFloat('0.00',fDMRecebeXML.cdsNotaFiscalVLR_ITENS.AsFloat)) <= 0 then
      fDMRecebeXML.cdsNotaFiscalVLR_ITENS.AsFloat := fDMRecebeXML.cdsCabecalhovNF.AsFloat;
    fDMRecebeXML.cdsNotaFiscalVLR_DESCONTO.AsFloat       := fDMRecebeXML.cdsCabecalhoICMSTot_vDesc.AsFloat;
    fDMRecebeXML.cdsNotaFiscalVLR_DESCONTO_ITENS.AsFloat := fDMRecebeXML.cdsCabecalhoICMSTot_vDesc.AsFloat;

    fDMRecebeXML.cdsNotaFiscalNFECHAVEACESSO.AsString := fDMRecebeXML.cdsNFeProtocolochNFe.AsString;
    fDMRecebeXML.cdsNotaFiscalNFEPROTOCOLO.AsString   := fDMRecebeXML.cdsNFeProtocolonProt.AsString;

    {fDMRecebeXML.cdsNotaFiscalID_REGIMETRIB.AsInteger := fDMRecebeXML.qFilialID_REGIME_TRIB.AsInteger;
    fDMRecebeXML.cdsNotaFiscalSIMPLES_FILIAL.AsString := fDMRecebeXML.qFilialSIMPLES.AsString;
    fDMRecebeXML.cdsNotaFiscalESPECIE.AsString        := fDMRecebeXML.qParametrosESPECIE_NOTA.AsString;
    fDMRecebeXML.cdsNotaFiscalMARCA.AsString          := fDMRecebeXML.qParametrosMARCA_NOTA.AsString;}

    fDMRecebeXML.cdsNotaFiscalVLR_SEGURO.AsFloat := fDMRecebeXML.cdsCabecalhovSeg.AsFloat;
    fDMRecebeXML.cdsNotaFiscalID_CLIENTETRIANG.Clear;
    case fDMRecebeXML.cdsCabecalhotpNF.AsInteger of
      0: fDMRecebeXML.cdsNotaFiscalTIPO_NOTA.AsString := 'E';
      1: fDMRecebeXML.cdsNotaFiscalTIPO_NOTA.AsString := 'S';
    end;
    fDMRecebeXML.cdsNotaFiscalVLR_DUPLICATA.AsFloat := 0;
    fDMRecebeXML.cdsNotaFiscalID_LOCAL_ESTOQUE.AsInteger := fDMRecebeXML.vID_Local_Estoque_XML;
    fDMRecebeXML.cdsNotaFiscalVLR_SALDO_USADO.AsFloat := 0;
    fDMRecebeXML.cdsNotaFiscalID_TIPO_COBRANCA.Clear;
    fDMRecebeXML.cdsNotaFiscalID_CONTA.Clear;
    fDMRecebeXML.cdsNotaFiscalID_CONTA.Clear;
    fDMRecebeXML.cdsNotaFiscalCONFERIDO.AsString := 'S';
    fDMRecebeXML.cdsNotaFiscalUSUARIO.AsString := vUsuario;
    fDMRecebeXML.cdsNotaFiscalVLR_OUTRASDESP.AsFloat := fDMRecebeXML.cdsNotaFiscalVLR_OUTRASDESP.AsFloat + fDMRecebeXML.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat;
    fDMRecebeXML.cdsNotaFiscal.Post;
    vID_Nota := fDMRecebeXML.cdsNotaFiscalID.AsInteger;
  except
    on e: Exception do
    begin
      vID_Nota := 0;
      Raise Exception.Create('Ocorreu o seguinte erro ao gravar a nota: ' + #13 + e.Message);
    end
  end;
end;

procedure TfrmRecebeXMLNovo.Gravar_NotaEntradaItens(Tipo: String; Inserir: Boolean = False); //R - Rateio   N - Normal
begin
  vitem := fDMRecebeXML.mItensNotaItem.AsInteger;

  if fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger <> fDMRecebeXML.cdsProdutoID.AsInteger then
    fDMRecebeXML.cdsProduto.Locate('ID',fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger,([LocaseInsensitive]));

  if fDMRecebeXML.mItensNotaCFOPInterno.AsInteger <> fDMRecebeXML.cdsCFOPID.AsInteger then
    fDMRecebeXML.cdsCFOP.Locate('ID',fDMRecebeXML.mItensNotaCFOPInterno.AsInteger,([LocaseInsensitive]));

  try
    if not (fDMRecebeXML.cdsNotaFiscal_Itens.State in [dsEdit]) then
      fDMRecebeXML.cdsNotaFiscal_Itens.Insert;
    fDMRecebeXML.cdsNotaFiscal_ItensID.AsInteger          := fDMRecebeXML.cdsNotaFiscalID.AsInteger;
    fDMRecebeXML.cdsNotaFiscal_ItensITEM.AsInteger        := vItem;
    fDMRecebeXML.cdsNotaFiscal_ItensID_PRODUTO.AsInteger  := fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger;
    if fDMRecebeXML.cdsNotaFiscalID_OPERACAO_NOTA.AsInteger > 0 then
      fDMRecebeXML.cdsNotaFiscal_ItensID_OPERACAO_NOTA.AsInteger := fDMRecebeXML.cdsNotaFiscalID_OPERACAO_NOTA.AsInteger
    else
      fDMRecebeXML.cdsNotaFiscal_ItensID_OPERACAO_NOTA.Clear;
    fDMRecebeXML.cdsNotaFiscal_ItensQTD.AsFloat := fDMRecebeXML.mItensNotaQtd.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensQTDRESTANTE.AsFloat := fDMRecebeXML.mItensNotaQtd.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat   := fDMRecebeXML.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat + fDMRecebeXML.mItensNotaVlrTotal.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensID_NCM.AsInteger     := fDMRecebeXML.mItensNotaID_NCM.AsInteger;
    fDMRecebeXML.cdsNotaFiscal_ItensUNIDADE.AsString     := TirarAcento(UpperCase(fDMRecebeXML.mItensNotaUnidade.AsString));
    fDMRecebeXML.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat := fDMRecebeXML.mItensNotaVlrUnitario.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensPERC_ICMS.AsFloat     := fDMRecebeXML.mItensNotaAliqIcms.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensPERC_IPI.AsFloat      := fDMRecebeXML.mItensNotaAliqIPI.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensPERC_DESCONTO.AsFloat := 0;
    fDMRecebeXML.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat  := fDMRecebeXML.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat + fDMRecebeXML.mItensNotaVlrDesconto.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensVLR_IPI.AsFloat       := fDMRecebeXML.cdsNotaFiscal_ItensVLR_IPI.AsFloat + fDMRecebeXML.mItensNotaVlrIPI.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensVLR_ICMS.AsFloat      := fDMRecebeXML.cdsNotaFiscal_ItensVLR_ICMS.AsFloat + fDMRecebeXML.mItensNotaVlrIcms.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensBASE_ICMS.AsFloat     := fDMRecebeXML.cdsNotaFiscal_ItensBASE_ICMS.AsFloat + fDMRecebeXML.mItensNotaBaseIcms.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensID_CSTICMS.AsInteger  := fDMRecebeXML.mItensNotaCodSitTribInterno.AsInteger;
    fDMRecebeXML.cdsNotaFiscal_ItensVLR_ICMSDIFERIDO.AsFloat := 0;

    fDMRecebeXML.cdsNotaFiscal_ItensPERC_BASE_ICMSSUBT_RED.AsFloat := fDMRecebeXML.cdsNotaFiscal_ItensPERC_BASE_ICMSSUBT_RED.AsFloat + fDMRecebeXML.mItensNotaPercRedBCST.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensBASE_ICMSSUBST.AsFloat         := fDMRecebeXML.cdsNotaFiscal_ItensBASE_ICMSSUBST.AsFloat + fDMRecebeXML.mItensNotaBaseCST.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensPERC_ICMSSUBST_INTERNO.AsFloat := fDMRecebeXML.mItensNotaPercIcmsST.AsFloat; //pst
    fDMRecebeXML.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat          := fDMRecebeXML.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat + fDMRecebeXML.mItensNotaVlrIcmsST.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensPERC_MVA.AsFloat               := fDMRecebeXML.mItensNotaPercMVAST.AsFloat;
    if (fDMRecebeXML.cdsCFOPCREDITA_ST.AsString = 'N') and (StrToFloat(FormatFLoat('0.00',fDMRecebeXML.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat)) > 0)  then
    begin
      fDMRecebeXML.cdsNotaFiscal_ItensVLR_OUTROS_ITENS.AsFloat   := fDMRecebeXML.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat;
      fDMRecebeXML.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat      := 0;
      fDMRecebeXML.cdsNotaFiscal_ItensBASE_ICMSSUBST.AsFloat     := 0;
      fDMRecebeXML.cdsNotaFiscal_ItensPERC_ICMSSUBST_INTERNO.AsFloat := 0;
    end;
    fDMRecebeXML.cdsNotaFiscal_ItensPERC_BASE_ICMS_RED.AsFloat     := fDMRecebeXML.mItensNotaPercRedIcms.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensBASE_ICMSSUBST_RET.AsFloat     := fDMRecebeXML.cdsNotaFiscal_ItensBASE_ICMSSUBST_RET.AsFloat + fDMRecebeXML.mItensNotaBaseCSTRet.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensVLR_ICMSSUBST_RET.AsFloat      := fDMRecebeXML.cdsNotaFiscal_ItensVLR_ICMSSUBST_RET.AsFloat + fDMRecebeXML.mItensNotaVlrIcmsCSTRet.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensVLR_ICMS_SUBSTITUTO.AsFloat    := fDMRecebeXML.cdsNotaFiscal_ItensVLR_ICMS_SUBSTITUTO.AsFloat + fDMRecebeXML.mItensNotaVlr_Icms_Substituto.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensPERC_DIFERIMENTO.AsFloat := fDMRecebeXML.mItensNotaPerc_Diferido.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensVLR_IPI_DEVOL.AsFloat := fDMRecebeXML.mItensNotaVlr_IPI_Devol.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensPERC_DEVOL.AsFloat    := fDMRecebeXML.mItensNotaPerc_Devol.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensPERC_BASE_RED_EFET.AsFloat := fDMRecebeXML.mItensNotaPerc_Base_Red_Efet.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensVLR_BASE_EFET.AsFloat      := fDMRecebeXML.cdsNotaFiscal_ItensVLR_BASE_EFET.AsFloat + fDMRecebeXML.mItensNotaVlr_Base_Efet.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensPERC_ICMS_EFET.AsFloat     := fDMRecebeXML.mItensNotaPerc_ICMS_Efet.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensVLR_ICMS_EFET.AsFloat      := fDMRecebeXML.cdsNotaFiscal_ItensVLR_ICMS_EFET.AsFloat + fDMRecebeXML.mItensNotaVlr_ICMS_Efet.AsFloat;
    if trim(fDMRecebeXML.mItensNotaTipoVenda.AsString) <> '' then
      fDMRecebeXML.cdsNotaFiscal_ItensFINALIDADE.AsString := fDMRecebeXML.mItensNotaTipoVenda.AsString;
    if fDMRecebeXML.mItensNotaCodSitTribInterno.AsInteger <= 0 then
      fDMRecebeXML.cdsNotaFiscal_ItensID_CSTICMS.Clear;
    fDMRecebeXML.cdsNotaFiscal_ItensCALCULARICMSSOBREIPI.AsString := 'N';
    fDMRecebeXML.cdsNotaFiscal_ItensID_COR.AsInteger      := fDMRecebeXML.mItensNotaID_Cor.AsInteger;
    if fDMRecebeXML.mItensNotaID_Cor.AsInteger <= 0 then
      fDMRecebeXML.cdsNotaFiscal_ItensID_COR.Clear;
    if fDMRecebeXML.cdsNotaFiscal_Itens.State in [dsInsert] then
    begin
      fDMRecebeXML.cdsNotaFiscal_ItensNUMERO_OC.AsString      := Trim(fDMRecebeXML.mItensNotaNumPedido.AsString);
      fDMRecebeXML.cdsNotaFiscal_ItensITEM_PEDIDO.AsInteger   := uUtil_RecebeXML.fnc_NumValido(Trim(fDMRecebeXML.mItensNotaItemPedido.AsString));
      fDMRecebeXML.cdsNotaFiscal_ItensID_PEDIDO.AsInteger     := fDMRecebeXML.mItensNotaID_Pedido.AsInteger;
    end;
    fDMRecebeXML.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger := 0;
    fDMRecebeXML.cdsNotaFiscal_ItensREFERENCIA.AsString     := fDMRecebeXML.cdsProdutoREFERENCIA.AsString;
    fDMRecebeXML.cdsNotaFiscal_ItensNOME_PRODUTO.AsString   := fDMRecebeXML.mItensNotaNomeProduto.AsString;
    fDMRecebeXML.cdsNotaFiscal_ItensID_CFOP.AsInteger       := fDMRecebeXML.mItensNotaCFOPInterno.AsInteger;
    if fDMRecebeXML.cdsNotaFiscalTIPO_PRAZO.AsString <> 'N' then
      fDMRecebeXML.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString := 'S'
    else
      fDMRecebeXML.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString := 'N';
    if fDMRecebeXML.cdsCFOPCODCFOP.AsString <> fDMRecebeXML.mItensNotaCFOP.AsString then
      fDMRecebeXML.cdsCFOP.Locate('CODCFOP',fDMRecebeXML.mItensNotaCFOP.AsString, ([LocaseInsensitive]));
    if fDMRecebeXML.cdsCFOPGERAR_DUPLICATA.AsString = 'S' then
      fDMRecebeXML.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString := 'S'
    else
      fDMRecebeXML.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString := 'N';
    fDMRecebeXML.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString := 'N';
    fDMRecebeXML.cdsNotaFiscal_ItensTAMANHO.AsString := '';
    fDMRecebeXML.cdsNotaFiscal_ItensQTDDEVOLVIDA.AsFloat  := 0;
    fDMRecebeXML.cdsNotaFiscal_ItensVLR_FRETE.AsFloat     := fDMRecebeXML.cdsNotaFiscal_ItensVLR_FRETE.AsFloat + fDMRecebeXML.mItensNotaVlrFrete.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensORIGEM_PROD.AsString  := fDMRecebeXML.mItensNotaOrigem.AsString;
    fDMRecebeXML.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat    := fDMRecebeXML.mItensNotaQtdPacote.AsFloat;
    if fDMRecebeXML.mItensNotaID_CSTICMS.AsInteger > 0 then
      fDMRecebeXML.cdsNotaFiscal_ItensID_CSTICMS.AsInteger := fDMRecebeXML.mItensNotaID_CSTICMS.AsInteger;
    if fDMRecebeXML.mItensNotaID_CSTIPI.AsInteger > 0 then
      fDMRecebeXML.cdsNotaFiscal_ItensID_CSTIPI.AsInteger := fDMRecebeXML.mItensNotaID_CSTIPI.AsInteger;
    if fDMRecebeXML.mItensNotaID_Cofins.AsInteger > 0 then
      fDMRecebeXML.cdsNotaFiscal_ItensID_COFINS.AsInteger := fDMRecebeXML.mItensNotaID_Cofins.AsInteger;
    if fDMRecebeXML.mItensNotaID_Pis.AsInteger > 0 then
      fDMRecebeXML.cdsNotaFiscal_ItensID_PIS.AsInteger := fDMRecebeXML.mItensNotaID_Pis.AsInteger;
    fDMRecebeXML.cdsNotaFiscal_ItensTipo_Nota.AsString := 'E';
    if fDMRecebeXML.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString = 'S' then
      fDMRecebeXML.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat := StrToFloat(FormatFloat('0.00',fDMRecebeXML.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat));

    if trim(fDMRecebeXML.mItensNotaObs_Complementar.AsString) <> '' then
      fDMRecebeXML.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString := fDMRecebeXML.mItensNotaObs_Complementar.AsString;
    if (fDMRecebeXML.qParametrosGRAVAR_INF_ADICIONAIS_NTE.AsString = 'S') then
    begin
      if (trim(fDMRecebeXML.mItensNotaInfAdicionais.AsString) <> '') and not(fDMRecebeXML.mItensNotaInfAdicionais.IsNull) then
      begin
        if (fDMRecebeXML.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.IsNull) or (trim(fDMRecebeXML.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString) = '') then
          fDMRecebeXML.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString := fDMRecebeXML.mItensNotaInfAdicionais.AsString
        else
          fDMRecebeXML.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString := fDMRecebeXML.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString + ', ' + fDMRecebeXML.mItensNotaInfAdicionais.AsString;
      end;
    end;
    if fDMRecebeXML.mItensNotaID_ContaOrcamento.AsInteger > 0 then
      fDMRecebeXML.cdsNotaFiscal_ItensCONTA_ORCAMENTO_ID.AsInteger := fDMRecebeXML.mItensNotaID_ContaOrcamento.AsInteger
    else
    if fDMRecebeXML.cdsProdutoID_CONTA_ORCAMENTO.AsInteger > 0 then
      fDMRecebeXML.cdsNotaFiscal_ItensCONTA_ORCAMENTO_ID.AsInteger := fDMRecebeXML.cdsProdutoID_CONTA_ORCAMENTO.AsInteger;
    if trim(fDMRecebeXML.mItensNotaNum_Lote_Controle.AsString) <> '' then
      fDMRecebeXML.cdsNotaFiscal_ItensNUM_LOTE_CONTROLE.AsString := UpperCase(fDMRecebeXML.mItensNotaNum_Lote_Controle.AsString);
    if fDMRecebeXML.mItensNotaDtValidade.AsDateTime > 10 then
      fDMRecebeXML.cdsNotaFiscal_ItensDTVALIDADE.AsDateTime := fDMRecebeXML.mItensNotaDtValidade.AsDateTime;
    fDMRecebeXML.cdsNotaFiscal_ItensPERC_TRIBICMS.AsFloat := fDMRecebeXML.mItensNotaPercRedIcms.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensVLR_ISSQN.AsFloat     := StrToFloat(FormatFloat('0.00',fDMRecebeXML.cdsNotaFiscal_ItensVLR_ISSQN.AsFloat + fDMRecebeXML.mItensNotaVlr_ISSQN.AsFloat));
    fDMRecebeXML.cdsNotaFiscal_ItensPERC_ISSQN.AsFloat    := StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaPerc_ISSQN.AsFloat));
    fDMRecebeXML.cdsNotaFiscal_ItensPERC_COFINS.AsFloat   := StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaAliqCofins.AsFloat));
    fDMRecebeXML.cdsNotaFiscal_ItensPERC_PIS.AsFloat      := StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaAliqPIS.AsFloat));
    fDMRecebeXML.cdsNotaFiscal_ItensVLR_COFINS.AsFloat    := StrToFloat(FormatFloat('0.00',fDMRecebeXML.cdsNotaFiscal_ItensVLR_COFINS.AsFloat + fDMRecebeXML.mItensNotaVlrCofins.AsFloat));
    fDMRecebeXML.cdsNotaFiscal_ItensVLR_PIS.AsFloat       := StrToFloat(FormatFloat('0.00',fDMRecebeXML.cdsNotaFiscal_ItensVLR_PIS.AsFloat + fDMRecebeXML.mItensNotaVlrPis.AsFloat));
    fDMRecebeXML.cdsNotaFiscal_ItensBASE_COFINS.AsFloat   := StrToFloat(FormatFloat('0.00',fDMRecebeXML.cdsNotaFiscal_ItensBASE_COFINS.AsFloat + fDMRecebeXML.mItensNotaBase_Cofins.AsFloat));
    fDMRecebeXML.cdsNotaFiscal_ItensBASE_PIS.AsFloat      := StrToFloat(FormatFloat('0.00',fDMRecebeXML.cdsNotaFiscal_ItensBASE_PIS.AsFloat + fDMRecebeXML.mItensNotaBase_Pis.AsFloat));
    fDMRecebeXML.cdsNotaFiscal_ItensPRECO_CUSTO.AsFloat       := 0;
    fDMRecebeXML.cdsNotaFiscal_ItensPRECO_CUSTO_TOTAL.AsFloat := 0;
    if (trim(fDMRecebeXML.mItensNotaCodBarra2.AsString) <> '') and (trim(fDMRecebeXML.mItensNotaCodBarra2.AsString) <> trim(fDMRecebeXML.mItensNotaCodBarra.AsString)) then
      fDMRecebeXML.cdsNotaFiscal_ItensCOD_BARRA2.AsString := fDMRecebeXML.mItensNotaCodBarra2.AsString;
    if fDMRecebeXML.mItensNotaID_CentroCusto.AsInteger > 0 then
      fDMRecebeXML.cdsNotaFiscal_ItensCENTRO_CUSTO_ID.AsInteger := fDMRecebeXML.mItensNotaID_CentroCusto.AsInteger;
    fDMRecebeXML.cdsNotaFiscal_ItensANP_PRODUTO.AsString := fDMRecebeXML.mItensNotaANP_PRODUTO.AsString;
    fDMRecebeXML.cdsNotaFiscal_ItensANP_UF_CONS.AsString := fDMRecebeXML.mItensNotaANP_UF_CONS.AsString;
    if (fDMRecebeXML.cdsNotaFiscal_ItensANP_ID.AsInteger <= 0) and (trim(fDMRecebeXML.cdsNotaFiscal_ItensANP_PRODUTO.AsString) <> '') then
    begin
      fDMRecebeXML.cdsNotaFiscal_ItensANP_ID.AsInteger :=  uUtilPadrao.fnc_Gravar_CProd_ANP(fDMRecebeXML.mItensNotaANP_PRODUTO.AsString,fDMRecebeXML.mItensNotaANP_DESCRICAO.AsString);
      if fDMRecebeXML.cdsNotaFiscal_ItensANP_ID.AsInteger <= 0 then
        fDMRecebeXML.cdsNotaFiscal_ItensANP_ID.Clear;
    end;
    if fDMRecebeXML.mItensNotaID_Tipo_Material.AsInteger > 0 then
      fDMRecebeXML.cdsNotaFiscal_ItensID_TIPO_MATERIAL.AsInteger := fDMRecebeXML.mItensNotaID_Tipo_Material.AsInteger;
    if SQLLocate('PARAMETROS','ID','EMPRESA_SUCATA','1') = 'S' then
    begin
      fDMRecebeXML.cdsNotaFiscal_ItensCOMPRIMENTO.AsFloat := fDMRecebeXML.mItensNotaComprimento.AsFloat;
      fDMRecebeXML.cdsNotaFiscal_ItensLARGURA.AsFloat     := fDMRecebeXML.mItensNotaLargura.AsFloat;
      fDMRecebeXML.cdsNotaFiscal_ItensESPESSURA.AsFloat   := fDMRecebeXML.mItensNotaEspessura.AsFloat;
    end;
    fDMRecebeXML.cdsNotaFiscal_Itens.Post;
    fDMRecebeXML.cdsNotaFiscal.Edit;
    fDMRecebeXML.cdsNotaFiscalBASE_ICMS.AsFloat := StrToFloat(FormatFloat('0.00',fDMRecebeXML.cdsNotaFiscalBASE_ICMS.AsFloat +
                                                              fDMRecebeXML.cdsNotaFiscal_ItensBASE_ICMS.AsFloat));
    fDMRecebeXML.cdsNotaFiscalVLR_ICMS.AsFloat  := StrToFloat(FormatFloat('0.00',fDMRecebeXML.cdsNotaFiscalVLR_ICMS.AsFloat +
                                                              fDMRecebeXML.cdsNotaFiscal_ItensVLR_ICMS.AsFloat));
    fDMRecebeXML.cdsNotaFiscalVLR_IPI.AsFloat   := StrToFloat(FormatFloat('0.00',fDMRecebeXML.cdsNotaFiscalVLR_IPI.AsFloat +
                                                              fDMRecebeXML.cdsNotaFiscal_ItensVLR_IPI.AsFloat));
    fDMRecebeXML.cdsNotaFiscalBASE_ICMSSUBST.AsFloat     := fDMRecebeXML.cdsNotaFiscalBASE_ICMSSUBST.AsFloat + fDMRecebeXML.cdsNotaFiscal_ItensBASE_ICMSSUBST.AsFloat;
    fDMRecebeXML.cdsNotaFiscalVLR_ICMSSUBST.AsFloat      := fDMRecebeXML.cdsNotaFiscalVLR_ICMSSUBST.AsFloat + fDMRecebeXML.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat;
    fDMRecebeXML.cdsNotaFiscalVLR_OUTROS_ITENS.AsFloat   := fDMRecebeXML.cdsNotaFiscalVLR_OUTROS_ITENS.AsFloat + fDMRecebeXML.cdsNotaFiscal_ItensVLR_OUTROS_ITENS.AsFloat;
    fDMRecebeXML.cdsNotaFiscalBASE_ICMSSUBST_RET.AsFloat := fDMRecebeXML.cdsNotaFiscalBASE_ICMSSUBST_RET.AsFloat + fDMRecebeXML.cdsNotaFiscal_ItensBASE_ICMSSUBST_RET.AsFloat;
    fDMRecebeXML.cdsNotaFiscalVLR_ICMSSUBST_RET.AsFloat  := fDMRecebeXML.cdsNotaFiscalVLR_ICMSSUBST_RET.AsFloat + fDMRecebeXML.cdsNotaFiscal_ItensVLR_ICMSSUBST_RET.AsFloat;
    fDMRecebeXML.cdsNotaFiscalVLR_IPI_DEVOL.AsFloat      := fDMRecebeXML.cdsNotaFiscalVLR_IPI_DEVOL.AsFloat + fDMRecebeXML.cdsNotaFiscal_ItensVLR_IPI_DEVOL.AsFloat;
    fDMRecebeXML.cdsNotaFiscalVLR_BASE_EFET.AsFloat      := fDMRecebeXML.cdsNotaFiscalVLR_BASE_EFET.AsFloat + fDMRecebeXML.cdsNotaFiscal_ItensVLR_BASE_EFET.AsFloat;
    fDMRecebeXML.cdsNotaFiscalVLR_ICMS_EFET.AsFloat      := fDMRecebeXML.cdsNotaFiscalVLR_ICMS_EFET.AsFloat + fDMRecebeXML.cdsNotaFiscal_ItensVLR_ICMS_EFET.AsFloat;
    fDMRecebeXML.cdsNotaFiscalVLR_ICMS_UF_DEST.AsFloat   := fDMRecebeXML.cdsNotaFiscalVLR_ICMS_UF_DEST.AsFloat + fDMRecebeXML.cdsNotaFiscal_ItensVLR_ICMS_UF_DEST.AsFloat;
    fDMRecebeXML.cdsNotaFiscalVLR_ICMS_UF_REMET.AsFloat  := fDMRecebeXML.cdsNotaFiscalVLR_ICMS_UF_REMET.AsFloat + fDMRecebeXML.cdsNotaFiscal_ItensVLR_ICMS_UF_REMET.AsFloat;
    fDMRecebeXML.cdsNotaFiscalBASE_ICMS_FCP.AsFloat      := fDMRecebeXML.cdsNotaFiscalBASE_ICMS_FCP.AsFloat + fDMRecebeXML.cdsNotaFiscal_ItensBASE_ICMS_FCP.AsFloat;
    fDMRecebeXML.cdsNotaFiscalBASE_FCP_ST.AsFloat        := fDMRecebeXML.cdsNotaFiscalBASE_FCP_ST.AsFloat + fDMRecebeXML.cdsNotaFiscal_ItensBASE_FCP_ST.AsFloat;
    fDMRecebeXML.cdsNotaFiscalVLR_FCP_ST.AsFloat         := fDMRecebeXML.cdsNotaFiscalVLR_FCP_ST.AsFloat + fDMRecebeXML.cdsNotaFiscal_ItensVLR_FCP_ST.AsFloat;
    fDMRecebeXML.cdsNotaFiscalVLR_ICMS_FCP_DEST.AsFloat  := fDMRecebeXML.cdsNotaFiscalVLR_ICMS_FCP_DEST.AsFloat + fDMRecebeXML.cdsNotaFiscal_ItensVLR_ICMS_FCP_DEST.AsFloat;
    fDMRecebeXML.cdsNotaFiscalBASE_ICMS_FCP_DEST.AsFloat := fDMRecebeXML.cdsNotaFiscalBASE_ICMS_FCP_DEST.AsFloat + fDMRecebeXML.cdsNotaFiscal_ItensBASE_ICMS_FCP_DEST.AsFloat;
    fDMRecebeXML.cdsNotaFiscalBASE_IPI.AsFloat           := fDMRecebeXML.cdsNotaFiscalBASE_IPI.AsFloat + fDMRecebeXML.cdsNotaFiscal_ItensBASE_IPI.AsFloat;
    fDMRecebeXML.cdsNotaFiscalBASE_IPI.AsFloat           := fDMRecebeXML.cdsNotaFiscalBASE_IPI.AsFloat + fDMRecebeXML.cdsNotaFiscal_ItensBASE_IPI.AsFloat;
    fDMRecebeXML.cdsNotaFiscalVLR_PIS.AsFloat            := fDMRecebeXML.cdsNotaFiscalVLR_PIS.AsFloat + fDMRecebeXML.cdsNotaFiscal_ItensVLR_PIS.AsFloat;
    fDMRecebeXML.cdsNotaFiscalVLR_COFINS.AsFloat         := fDMRecebeXML.cdsNotaFiscalVLR_COFINS.AsFloat + fDMRecebeXML.cdsNotaFiscal_ItensVLR_COFINS.AsFloat;
    fDMRecebeXML.cdsNotaFiscalBASE_PIS.AsFloat           := fDMRecebeXML.cdsNotaFiscalBASE_PIS.AsFloat + fDMRecebeXML.cdsNotaFiscal_ItensBASE_PIS.AsFloat;
    fDMRecebeXML.cdsNotaFiscalBASE_COFINS.AsFloat        := fDMRecebeXML.cdsNotaFiscalBASE_COFINS.AsFloat + fDMRecebeXML.cdsNotaFiscal_ItensBASE_COFINS.AsFloat;
    fDMRecebeXML.cdsNotaFiscal.Post;
    fDMRecebeXML.cdsNotaFiscal_Itens.Last;
  except
    on e: Exception do
    begin
      Raise Exception.Create('Ocorreu o seguinte erro ao gravar o item da nota: ' + #13 + e.Message);
    end
  end;
end;

procedure TfrmRecebeXMLNovo.prc_Abrir_qFilial(CNPJ_CPF: String);
begin
  fDMRecebeXML.qFilial.Close;
  fDMRecebeXML.qFilial.ParamByName('CNPJ_CPF').AsString := CNPJ_CPF;
  fDMRecebeXML.qFilial.Open;
  fDMRecebeXML.vFilial_Local := fDMRecebeXML.qFilialID.AsInteger;
end;

procedure TfrmRecebeXMLNovo.btnGravarNFeClick(Sender: TObject);
var
  ID: TTransactionDesc;
  vErro: String;
  vIDAux: Integer;
  vMSGAux: String;
  vPedAux: String;
begin
  vNotaGerada_XML := False;
  if (fDMRecebeXML.vFilial_Local <= 0) and (RxDBLookupCombo6.Text <> '') then
    fDMRecebeXML.vFilial_Local := RxDBLookupCombo6.KeyValue;
  if fDMRecebeXML.vFilial_Local <> fDMRecebeXML.cdsFilialID.AsInteger then
    fDMRecebeXML.cdsFilial.Locate('ID',fDMRecebeXML.vFilial_Local, ([LocaseInsensitive]));
  vMSGAux := fnc_Verifica_Dados_Gravacao(fDMRecebeXML,DateEdit1.Date,RxDBLookupCombo1.Text,RxDBLookupCombo6.Text);
  if trim(vMSGAux) <> '' then
  begin
    MessageDlg(vMSGAux, mtInformation, [mbOk], 0);
    exit;
  end;
  if (fDMRecebeXML.mParc.IsEmpty) and (MessageDlg('Nota sem Financeiro, deseja continuar?',mtConfirmation,[mbNo,mbYes],0)=mrNo) then
    Exit;
  vIDAux := 0;
  if fnc_erro(fDMRecebeXML,0,vIDAux,False) then
    exit;

  ID.TransactionID  := 2;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    Gravar_Cliente;
    vItem := 0;
    Gravar_NotaEntrada;
    if not vGravar then
    begin
      ShowMessage('Nota já foi gerada!');
      dmDatabase.scoDados.Rollback(ID);
      exit;
    end;
    fnc_Gravar_NotaEntradaParc(fDMRecebeXML,0);
    vPedAux     := '';
    fDMRecebeXML.mItensNota.First;
    while not fDMRecebeXML.mItensNota.Eof do
    begin
      Gravar_ClasFiscal;
      Gravar_NotaEntradaItens('N',False);
      vPedAux := fDMRecebeXML.mItensNotaNumPedido.AsString;
      fDMRecebeXML.mItensNota.Next;
    end;
    fDMRecebeXML.cdsNotaFiscal.ApplyUpdates(0);
    dmDatabase.scoDados.Commit(ID);
    vNotaGerada_XML := True;

    fDMRecebeXML.cdsCabecalho.Close;
  except
    on e: Exception do
    begin
      dmDatabase.scoDados.Rollback(ID);
      vErro      := e.Message;
      Raise Exception.Create('Ocorreu o seguinte erro ao executar: ' + #13 + vErro);
    end
  end;
  DateEdit1.Clear;
  DateEdit2.Clear;
end;

procedure TfrmRecebeXMLNovo.btnAbrirXMLClick(Sender: TObject);
var
  vArquivoAux, vFile: String;
  vFlag: Boolean;
  i: Integer;
  oNFe: TStrings;
  oNFeStream: TMemoryStream;
  dia, mes, ano: Word;
  vAux: String;
  vAux2: String;
  vID_LocalAux: Integer;
  vSemPagamento: Boolean;
  vQDiaEnt: Integer;
begin
  vEmissaoFilial := False;
  DateEdit1.Clear;
  fDMRecebeXML.vNumOC_Pesquisa := 0;

  NxPageControl1.ActivePage := TS_Itens;

  fDMRecebeXML.mItensNota.AfterScroll := nil;

  fDMRecebeXML.qParametros.Close;
  fDMRecebeXML.qParametros.Open;
  fDMRecebeXML.Ultimo_Item := 0;

  if (vArqLista <> EmptyStr) then
  begin
    if OpenDialog1.FileName <> vFile then
      vArquivoAux := OpenDialog1.FileName
    else
      vArquivoAux := '';
    fDMRecebeXML.mItensNota.EmptyDataSet;
    if vArqLista <> EmptyStr then
    begin
      vArquivoAux := vArqLista;
      OpenDialog1.FileName := vArqLista;
    end;

    oNFe       := TStringList.Create;
    oNFeStream := TMemoryStream.Create;
    oNFe.LoadFromFile(vArquivoAux);
    oNFe.SaveToStream(oNFeStream);

    vSemPagamento := False;
    if posex('<tPag>90</tPag>', onfe.Text) > 0 then
      vSemPagamento := True;

    vFlag := False;
    i := 0;
    while not vFlag do
    begin
      try
        i := i + 1;
        fDMRecebeXML.AbrirNFe(vArquivoAux);

        vFlag := True;
      except
        begin
          if i >= 2 then
            vFlag := True;
          case i of
            1: SalvarUTF8(oNFeStream,vArquivoAux);
            2: SalvarASCII(oNFeStream,vArquivoAux);
          end;
        end;
      end;
    end;

    if fDMRecebeXML.cdsCabecalhonNF.AsInteger <= 0 then
    begin
      ShowMessage('Problema na leitura do XML! (atualize os arquivos XTR)');
      exit;
    end;
    FreeAndNil(oNFe);
    FreeAndNil(oNFeStream);

    if fDMRecebeXML.cdsNFeProtocoloversao.AsString = '2.00' then
      fDMRecebeXML.vDtEmissao := fDMRecebeXML.cdsCabecalhoide_dEmi.AsDateTime
    else
    begin
      vAux  := copy(fDMRecebeXML.cdsCabecalhoide_dhemi.AsString,1,10);
      vAux2 := copy(vAux,1,4);
      ano   := StrToInt(vAux2);
      vAux2 := copy(vAux,6,2);
      mes   := StrToInt(vAux2);
      vAux2 := copy(vAux,9,2);
      dia   := StrToInt(vAux2);
      fDMRecebeXML.vDtEmissao := EncodeDate(ano,mes,dia);
    end;

    vOpenDialog := OpenDialog1.FileName;

    if vSemPagamento then
      edTipoPagamento.Text := '2 - Outros'
    else
    begin
      case fDMRecebeXML.cdsCabecalhoindPag.AsInteger of
        0: edTipoPagamento.Text := '0 - Pagamento à vista';
        1: edTipoPagamento.Text := '1 - Pagamento a prazo';
        2: edTipoPagamento.Text := '2 - Outros';
      end;
    end;
    case fDMRecebeXML.cdsCabecalhofinNFe.AsInteger of
      1: edFinalidade.Text := '1 - Normal';
      2: edFinalidade.Text := '2 - Complementar';
      3: edFinalidade.Text := '3 - Ajuste';
    end;
    case fDMRecebeXML.cdsCabecalhotpNF.AsInteger of
      0: edEntradaSaida.Text := '0 - Entrada';
      1: edEntradaSaida.Text := '1 - Saída';
    end;
    case fDMRecebeXML.cdsCabecalhotpEmis.AsInteger of
      1: edFormaEmissao.Text := '1 - Normal';
      2: edFormaEmissao.Text := '2 - Contingência FS';
      3: edFormaEmissao.Text := '3 - Contingência SCAN';
      4: edFormaEmissao.Text := '4 - Contingência DPEC';
      5: edFormaEmissao.Text := '5 - Contingência FS-DA';
    end;
    case fDMRecebeXML.cdsCabecalhoprocEmi.AsInteger of
      0: edProcesso.Text := '0 - Com aplicativo do contribuinte';
      1: edProcesso.Text := '1 - Avulsa pelo Fisco';
      2: edProcesso.Text := '2 - Avulsa pelo contribuinte com seu certificado digital através do site';
      3: edProcesso.Text := '3 - Pelo contribuinte com aplicativo fornecido pelo Fisco';
    end;
    if Trim(fDMRecebeXML.cdsCabecalhoemit_CNPJ.AsString) <> '' then
      edCNPJEmitente.Text := fnc_Monta_CNPJ(fDMRecebeXML.cdsCabecalhoemit_CNPJ.AsString,14)
    else
      edCNPJEmitente.Text := fnc_Monta_CNPJ(fDMRecebeXML.cdsCabecalhoemit_CPF.AsString,11);
    edInscEmitente.Text  := fDMRecebeXML.cdsCabecalhoemit_IE.AsString;
    edInscEmitente2.Text := fDMRecebeXML.cdsCabecalhoemit_IE.AsString;
    edCNPJEmitente2.Text := edCNPJEmitente.Text;
    edUFEmitente.Text    := fDMRecebeXML.cdsCabecalhoenderEmit_UF.AsString;
    if Trim(fDMRecebeXML.cdsCabecalhodest_CNPJ.AsString) <> '' then
      edCNPJDest.Text := fnc_Monta_CNPJ(fDMRecebeXML.cdsCabecalhodest_CNPJ.AsString,14)
    else
      edCNPJDest.Text := fnc_Monta_CNPJ(fDMRecebeXML.cdsCabecalhodest_CPF.AsString,11);
    edInscDest.Text  := fDMRecebeXML.cdsCabecalhodest_IE.AsString;
    edInscDest2.Text := fDMRecebeXML.cdsCabecalhodest_IE.AsString;
    edCNPJDest2.Text := edCNPJDest.Text;
    edUFDest.Text   := fDMRecebeXML.cdsCabecalhoenderDest_UF.AsString;

    if Trim(fDMRecebeXML.cdsCabecalhoCNPJ.AsString) <> '' then
      edCNPJTransportadora.Text := fnc_Monta_CNPJ(fDMRecebeXML.cdsCabecalhoCNPJ.AsString,14)
    else
      edCNPJTransportadora.Text := fnc_Monta_CNPJ(fDMRecebeXML.cdsCabecalhoCPF.AsString,11);
    Procura_DadosCabecalho;
    Le_cdsDetalhe;
    if fDMRecebeXML.qParametrosID_LOCAL_ESTOQUE_NTE.AsInteger > 0 then
      vID_LocalAux := fDMRecebeXML.qParametrosID_LOCAL_ESTOQUE_NTE.AsInteger
    else
      vID_LocalAux := fnc_Verificar_Local(fDMRecebeXML.qParametrosUSA_LOCAL_ESTOQUE.AsString);
    rxdbLocalEstoque.ClearValue;
    if vID_LocalAux > 0 then
      rxdbLocalEstoque.KeyValue := vID_LocalAux;
    fDMRecebeXML.vID_Local_Estoque_XML := vID_LocalAux;
    if vArqLista <> EmptyStr then
    begin
      vQDiaEnt := StrToIntDef(SQLLocate('PARAMETROS_RECXML','ID','QTDDIAS_DTENTRADA','1'),0);
      if vQDiaEnt > 0 then
        DateEdit1.date := fDMRecebeXML.vDtEmissao + vQDiaEnt;
      if DateEdit1.Date > Date then
        DateEdit1.date := Date;
    end;
    DateEdit2.Date := fDMRecebeXML.vDtEmissao;
    DateEdit1.Date := fDMRecebeXML.vDtEmissao;
  end;
  btnGravarNFeClick(Sender);
end;

procedure TfrmRecebeXMLNovo.Gravar_Cliente;
begin
  fDMRecebeXML.cdsFornecedor.Edit;
  fDMRecebeXML.cdsFornecedorTP_CLIENTE.AsString := 'S';
  fDMRecebeXML.cdsFornecedor.Post;
  fDMRecebeXML.cdsFornecedor.ApplyUpdates(0);
end;

procedure TfrmRecebeXMLNovo.rxdbLocalEstoqueExit(Sender: TObject);
begin
  if rxdbLocalEstoque.Text <> '' then
    fDMRecebeXML.vID_Local_Estoque_XML := rxdbLocalEstoque.KeyValue
  else
    fDMRecebeXML.vID_Local_Estoque_XML := 0;
end;

procedure TfrmRecebeXMLNovo.prc_Grava_mParc(Adiantamento : Boolean; Valor: Real);
begin
  fDMRecebeXML.mParc.Insert;
  fDMRecebeXML.mParcNumDuplicata.AsString   := fDMRecebeXML.cdsParcelasnDup.AsString;
  fDMRecebeXML.mParcDtVencimento.AsDateTime := fDMRecebeXML.cdsParcelasdVenc.AsDateTime;
  fDMRecebeXML.mParcVlrVencimento.AsFloat   := Valor;
  fDMRecebeXML.mParcID_Conta.Clear;
  fDMRecebeXML.mParcID_TipoCobranca.Clear;
  fDMRecebeXML.mParc.Post;
end;

procedure TfrmRecebeXMLNovo.prc_Monta_ICMS;
var
  vContadorIcms: Integer;
  i: Integer;
begin
  vCSTInterno   := 0;
  vTipoIcms     := '';
  fDMRecebeXML.vCST_TipoICMS_XML := '';
  case fDMRecebeXML.cdsCabecalhoCRT.AsInteger of
    3: vContadorIcms := 9;
    1,2: vContadorIcms := 6;
  end;
  i := 0;
  try
    if vTipoIcms <> 'SER' then
    begin
      if fDMRecebeXML.cdsDetalheICMSST_CST.AsInteger > 0 then
      begin
        vTipoIcms := fDMRecebeXML.cdsDetalheICMSST_CST.AsString;
      end
      else
      begin
        while (vTipoIcms = '') or (i <= vContadorIcms) do
        begin
          inc(i);
          if vDescICMS[i] <> '' then
          begin
            if Trim(fDMRecebeXML.cdsDetalhe.FieldByName(vDescICMS[i]+'Orig').AsString) <> '' then
              vTipoIcms := vDescICMS[i];
          end;
        end;
      end;
    end;
  except
    begin
      vTipoIcms := '';
    end;
  end;

  if (fDMRecebeXML.cdsCabecalhoCRT.AsInteger = 3) and (vTipoIcms <> 'SER') then
  begin
    if vTipoIcms <> '' then
    begin
      if fDMRecebeXML.cdsDetalheICMSST_CST.AsInteger > 0 then
      begin
        fDMRecebeXML.mItensNotaOrigem.AsString := fDMRecebeXML.cdsDetalheICMSST_orig.AsString;

        fDMRecebeXML.mItensNotaOrigem.AsString := fDMRecebeXML.cdsDetalheICMSST_orig.AsString;
        Busca_SitTrib(fDMRecebeXML.cdsDetalheICMSST_CST.AsString);
        fDMRecebeXML.mItensNotaCodSitTribInterno.AsInteger := vCSTInterno;
        fDMRecebeXML.mItensNotaCodSitTrib.AsString         := fDMRecebeXML.cdsDetalheICMSST_CST.AsString;
        fDMRecebeXML.mItensNotaModICMS.AsString            := fDMRecebeXML.cdsDetalhecMod.AsString; //ver aqui
        fDMRecebeXML.mItensNotaBaseIcms.AsFloat            := 0;
        fDMRecebeXML.mItensNotaAliqCofins.AsFloat          := 0;
        fDMRecebeXML.mItensNotaVlrIcms.AsFloat             := 0;
        fDMRecebeXML.mItensNotaModIcmsST.AsString          := '';
        fDMRecebeXML.mItensNotaBaseCSTRet.AsFloat          := fDMRecebeXML.mItensNotaBaseCSTRet.AsFloat + fDMRecebeXML.cdsDetalheICMSST_vBCSTRet.AsFloat;
        fDMRecebeXML.mItensNotaVlrIcmsCSTRet.AsFloat       := fDMRecebeXML.mItensNotaVlrIcmsCSTRet.AsFloat + fDMRecebeXML.cdsDetalheICMSST_vICMSSTRet.AsFloat;
        fDMRecebeXML.mItensNotaPercIcmsST.AsFloat          := 0;
        fDMRecebeXML.mItensNotaVlr_Icms_Substituto.AsFloat := fDMRecebeXML.mItensNotaVlr_Icms_Substituto.AsFloat + fDMRecebeXML.cdsDetalheICMSST_vICMSSubstituto.AsFloat;
        fDMRecebeXML.mItensNotaPerc_Base_Red_Efet.AsFloat  := 0;
        fDMRecebeXML.mItensNotaVlr_Base_Efet.AsFloat       := 0;
        fDMRecebeXML.mItensNotaPerc_ICMS_Efet.AsFloat      := 0;
        fDMRecebeXML.mItensNotaVlr_ICMS_Efet.AsFloat       := 0;
        fDMRecebeXML.mItensNotaPerc_Diferido.AsFloat       := 0;
      end
      else
      begin
        fDMRecebeXML.mItensNotaOrigem.AsString  := fDMRecebeXML.cdsDetalhe.FieldByName(vTipoIcms+'Orig').AsString;
        busca_SitTrib(fDMRecebeXML.cdsDetalhe.FieldByName(vTipoIcms+'CST').AsString);
        fDMRecebeXML.mItensNotaCodSitTribInterno.AsInteger := vCSTInterno;
        fDMRecebeXML.mItensNotaCodSitTrib.AsString         := fDMRecebeXML.cdsDetalhe.FieldByName(vTipoIcms+'CST').AsString;
        Move_Campos(vTipoIcms+'ModBC','ModICMS','N');
        Move_Campos(vTipoIcms+'vBC','BaseIcms','N');
        Move_Campos(vTipoIcms+'pICMS','AliqIcms','N');
        Move_Campos(vTipoIcms+'vICMS','VlrIcms','N');
        Move_Campos(vTipoIcms+'ModBCST','ModIcmsST','N');
        Move_Campos(vTipoIcms+'pMVAST','PercMVAST','N');
        Move_Campos(vTipoIcms+'pRedBCST','PercRedBCST','N');
        Move_Campos(vTipoIcms+'vBCST','BaseCST','N');
        Move_Campos(vTipoIcms+'pICMSST','PercIcmsST','N');
        Move_Campos(vTipoIcms+'vICMSST','VlrIcmsST','N');
        Move_Campos(vTipoIcms+'pRedBC','PercRedIcms','N');
        Move_Campos(vTipoIcms+'vBCSTRet','BaseCSTRet','N');
        Move_Campos(vTipoIcms+'vICMSSTRet','VlrIcmsCSTRet','N');
        Move_Campos(vTipoIcms+'pST','PercIcmsST','N');
        Move_Campos(vTipoIcms+'vICMSSubstituto','Vlr_Icms_Substituto','N');
        Move_Campos(vTipoIcms+'pRedBCEfet','Perc_Base_Red_Efet','N');
        Move_Campos(vTipoIcms+'vBCEfet','Vlr_Base_Efet','N');
        Move_Campos(vTipoIcms+'pICMSEfet','Perc_ICMS_Efet','N');
        Move_Campos(vTipoIcms+'vICMSEfet','Vlr_ICMS_Efet','N');
        Move_Campos(vTipoIcms+'pDif','Perc_Diferido','N');
      end;
      if fDMRecebeXML.mItensNotaOrigem.AsString = '' then
        fDMRecebeXML.mItensNotaOrigem.AsString := '0';
    end
    else
      ShowMessage('Verificar a CST ICMS!')
  end
  else
  if (fDMRecebeXML.cdsCabecalhoCRT.AsInteger = 1) then
  begin
      fDMRecebeXML.mItensNotaOrigem.AsString  := fDMRecebeXML.cdsDetalhe.FieldByName(vTipoIcms+'Orig').AsString;
      busca_SitTrib(fDMRecebeXML.cdsDetalhe.FieldByName(vTipoIcms+'CSOSN').AsString);
      fDMRecebeXML.mItensNotaCodSitTribInterno.AsInteger := vCSTInterno;
      fDMRecebeXML.mItensNotaCodSitTrib.AsString         := fDMRecebeXML.cdsDetalhe.FieldByName(vTipoIcms+'CSOSN').AsString;
      Move_Campos(vTipoIcms+'ModBC','ModICMS','N');
      Move_Campos(vTipoIcms+'vBC','BaseIcms','N');
      Move_Campos(vTipoIcms+'pICMS','AliqIcms','N');
      Move_Campos(vTipoIcms+'vICMS','VlrIcms','N');
      Move_Campos(vTipoIcms+'ModBCST','ModIcmsST','N');
      Move_Campos(vTipoIcms+'pMVAST','PercMVAST','N');
      Move_Campos(vTipoIcms+'pRedBCST','PercRedBCST','N');
      Move_Campos(vTipoIcms+'vBCST','BaseCST','N');
      Move_Campos(vTipoIcms+'pICMSST','PercIcmsST','N');
      Move_Campos(vTipoIcms+'vICMSST','VlrIcmsST','N');
      Move_Campos(vTipoIcms+'pRedBC','PercRedIcms','N');
      Move_Campos(vTipoIcms+'vBCSTRet','BaseCSTRet','N');
      Move_Campos(vTipoIcms+'vICMSSTRet','VlrIcmsCSTRet','N');
      Move_Campos(vTipoIcms+'pST','PercIcmsST','N');
      Move_Campos(vTipoIcms+'vICMSSubstituto','Vlr_Icms_Substituto','N');
      Move_Campos(vTipoIcms+'pRedBCEfet','Perc_Base_Red_Efet','N');
      Move_Campos(vTipoIcms+'vBCEfet','Vlr_Base_Efet','N');
      Move_Campos(vTipoIcms+'pICMSEfet','Perc_ICMS_Efet','N');
      Move_Campos(vTipoIcms+'vICMSEfet','Vlr_ICMS_Efet','N');
      Move_Campos(vTipoIcms+'pDif','Perc_Diferido','N');

      if fDMRecebeXML.mItensNotaOrigem.AsString = '' then
        fDMRecebeXML.mItensNotaOrigem.AsString := '0';
  end
  else
  if (vTipoIcms <> 'SER') then
  begin
    if vTipoIcms <> '' then
    begin
      fDMRecebeXML.mItensNotaOrigem.AsString  := fDMRecebeXML.cdsDetalhe.FieldByName(vTipoIcms+'Orig').AsString;
      busca_SitTrib(fDMRecebeXML.cdsDetalhe.FieldByName(vTipoIcms+'CSOSN').AsString);
      fDMRecebeXML.mItensNotaCodSitTribInterno.AsInteger := vCSTInterno;
      fDMRecebeXML.mItensNotaCodSitTrib.AsString         := fDMRecebeXML.cdsDetalhe.FieldByName(vTipoIcms+'CSOSN').AsString;
      Move_Campos(vTipoIcms+'pCredSN','AliqIcms','N');
      Move_Campos(vTipoIcms+'vCredIcmsSN','VlrIcms','N');
      Move_Campos(vTipoIcms+'ModBCST','ModIcmsST','N');
      Move_Campos(vTipoIcms+'pMVAST','PercMVAST','N');
      Move_Campos(vTipoIcms+'pRedBCST','PercRedBCST','N');
      Move_Campos(vTipoIcms+'vBCST','BaseCST','N');
      Move_Campos(vTipoIcms+'pICMSST','PercIcmsST','N');
      Move_Campos(vTipoIcms+'vICMSST','VlrIcmsST','N');
      Move_Campos(vTipoIcms+'vBCSTRet','BaseCSTRet','N');
      Move_Campos(vTipoIcms+'vICMSSTRet','VlrIcmsCSTRet','N');

      Move_Campos(vTipoIcms+'pST','PercIcmsST','N');
      Move_Campos(vTipoIcms+'vICMSSubstituto','Vlr_Icms_Substituto','N');

      Move_Campos(vTipoIcms+'pRedBCEfet','Perc_Base_Red_Efet','N');
      Move_Campos(vTipoIcms+'vBCEfet','Vlr_Base_Efet','N');
      Move_Campos(vTipoIcms+'pICMSEfet','Perc_ICMS_Efet','N');
      Move_Campos(vTipoIcms+'vICMSEfet','Vlr_ICMS_Efet','N');
      Move_Campos(vTipoIcms+'pDif','Perc_Diferido','N');

    end;
  end;
end;

procedure TfrmRecebeXMLNovo.RxDBLookupCombo6Exit(Sender: TObject);
begin
  if RxDBLookupCombo6.Text <> '' then
    fDMRecebeXML.vFilial_Local := RxDBLookupCombo6.KeyValue;
end;

procedure TfrmRecebeXMLNovo.prc_Gravar_Parc(Parcela, ID_TipoCobranca,ID_Conta: Integer; Data: TDateTime; Valor: Real; Adiantamento: String);
begin
  fDMRecebeXML.mParc.Insert;
  fDMRecebeXML.mParcNumDuplicata.AsString   := fDMRecebeXML.cdsCabecalhonNF.AsString;
  fDMRecebeXML.mParcDtVencimento.AsDateTime := Data;
  fDMRecebeXML.mParcVlrVencimento.AsFloat   := Valor;
  if ID_Conta > 0 then
    fDMRecebeXML.mParcID_Conta.AsInteger := ID_Conta;
  if ID_TipoCobranca > 0 then
    fDMRecebeXML.mParcID_TipoCobranca.AsInteger := ID_TipoCobranca;
  fDMRecebeXML.mParcAdiantamento.AsString := Adiantamento;
  fDMRecebeXML.mParc.Post;
end;

procedure TfrmRecebeXMLNovo.FormCreate(Sender: TObject);
begin
  fDMRecebeXML := TDMRecebeXML.Create(Self);
  oDBUtils.SetDataSourceProperties(Self,fDMRecebeXML);
end;

end.
