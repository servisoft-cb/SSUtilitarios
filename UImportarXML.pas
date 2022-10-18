unit UImportarXML;

interface

uses
  inifiles, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, xmldom, Grids, DBGrids,
  DB, Xmlxform, ExtCtrls, StdCtrls, ComCtrls, Mask, DBCtrls, RXDBCtrl, SMDBGrid, Buttons, DBTables, ToolEdit, RxLookup,
  UDMImportarXML, UCBase, StrUtils, DBXpress, ShellApi, StdConvs, Contnrs;

type
  TfrmImportarXML = class(TForm)
    OpenDialog1: TOpenDialog;
    pcDados: TPageControl;
    tsDuplicatasDeducoes: TTabSheet;
    dgDuplicatas: TDBGrid;
    tsNFeRefProtocolo: TTabSheet;
    dgNFeRef: TDBGrid;
    dgNFeProtocolo: TDBGrid;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    edTipoPagamento: TEdit;
    edFinalidade: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    edEntradaSaida: TEdit;
    Label17: TLabel;
    edFormaEmissao: TEdit;
    Label18: TLabel;
    DBEdit13: TDBEdit;
    Label19: TLabel;
    DBEdit14: TDBEdit;
    Label20: TLabel;
    edProcesso: TEdit;
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
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel3: TPanel;
    DBEdit17: TDBEdit;
    Label29: TLabel;
    Label30: TLabel;
    DBEdit18: TDBEdit;
    Label31: TLabel;
    DBEdit19: TDBEdit;
    Label32: TLabel;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    Label33: TLabel;
    Label34: TLabel;
    DBEdit22: TDBEdit;
    Label35: TLabel;
    DBEdit23: TDBEdit;
    Label36: TLabel;
    DBEdit24: TDBEdit;
    Label37: TLabel;
    DBEdit25: TDBEdit;
    Label38: TLabel;
    DBEdit26: TDBEdit;
    Label39: TLabel;
    DBEdit27: TDBEdit;
    Label40: TLabel;
    DBEdit28: TDBEdit;
    Label43: TLabel;
    edCNPJEmitente2: TEdit;
    Label44: TLabel;
    edInscEmitente2: TEdit;
    Label41: TLabel;
    DBEdit29: TDBEdit;
    Label42: TLabel;
    DBEdit30: TDBEdit;
    Label45: TLabel;
    DBEdit31: TDBEdit;
    Label46: TLabel;
    DBEdit32: TDBEdit;
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
    Label65: TLabel;
    TabSheet4: TTabSheet;
    Panel5: TPanel;
    TabSheet5: TTabSheet;
    Panel6: TPanel;
    Label62: TLabel;
    lbStatusForn: TLabel;
    Label63: TLabel;
    lbStatusCidade: TLabel;
    Label66: TLabel;
    lbStatusPais: TLabel;
    lbStatusNotaEntrada: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    lbStatusContasPagar: TLabel;
    Label72: TLabel;
    lbStatusMaterial: TLabel;
    Label74: TLabel;
    lbStatusEstoque: TLabel;
    SMDBGrid1: TSMDBGrid;
    BitBtn2: TBitBtn;
    Label79: TLabel;
    DBEdit45: TDBEdit;
    BitBtn4: TBitBtn;
    TabSheet6: TTabSheet;
    Panel8: TPanel;
    Label80: TLabel;
    Label88: TLabel;
    DBEdit57: TDBEdit;
    Label77: TLabel;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    Label78: TLabel;
    DBEdit48: TDBEdit;
    Label81: TLabel;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    Label82: TLabel;
    Label83: TLabel;
    DBEdit52: TDBEdit;
    Label84: TLabel;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    Label85: TLabel;
    Label86: TLabel;
    DBEdit55: TDBEdit;
    Label87: TLabel;
    DBEdit56: TDBEdit;
    TabSheet7: TTabSheet;
    Diretorio: TLabel;
    btnListar: TButton;
    chkSub: TCheckBox;
    MemLista: TMemo;
    ckCliente: TCheckBox;
    ckProduto: TCheckBox;
    ckPreco: TCheckBox;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label16: TLabel;
    Label64: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit34: TDBEdit;
    edtDiretorio: TDirectoryEdit;
    GroupBox5: TGroupBox;
    Memo1: TMemo;
    ckTransportadora: TCheckBox;
    TabSheet8: TTabSheet;
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
    ckFornecedor: TCheckBox;
    Label4: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label48: TLabel;
    btnBuscaNCM: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure btnListarClick(Sender: TObject);
    procedure btnBuscaNCMClick(Sender: TObject);
  private
    { Private declarations }
    vCodCidade, vCodCidade_2 : Integer;
    vIDPais, vIDPais_2       : Integer;
    vDescICMS      : array[1..9] of String;
    vTipoIcms      : String;
    vItem          : Integer;
    vGravar        : Boolean;
    vOpenDialog    : String;
    vBuscaNCM     : Boolean;

    fDMImportarXML: TDMImportarXML;

    procedure Le_cdsDetalhe;
    procedure Grava_mItensNota;

    procedure Procura_DadosCabecalho;

    function fnc_Busca_CFOP : Integer;

    procedure Move_Campos(Campo1,Campo2, Soma : String);

    procedure Gravar_Cliente;
    procedure Gravar_Fornecedor;
    procedure Gravar_Cidade;
    procedure Gravar_Pais;

    procedure Verificar_Produto;

    procedure prc_Abrir_qFilial(CNPJ_CPF : String);

    function fnc_NumValido(Const S: String) : Integer;

    procedure ListarArquivos(Diretorio: string; Sub:Boolean);

    function TemAtributo(Attr, Val: Integer): Boolean;

    procedure Carrega_XML(Arquivo : String);

  public
    { Public declarations }
    vUsaConfigNatOper2 : String;
    vCodFornecedor : Integer;
    vCodFornecedor_2 : Integer; //Fornecedor
    vCodTransportadora : Integer;

    function fnc_Monta_CNPJ(CNPJ: String; Qtd: Integer): String;

  end;

var
  frmImportarXML: TfrmImportarXML;

implementation

uses
  DmdDatabase, uUtilPadrao, UMenu, rsDBUtils, uNFeComandos;

{$R *.dfm}

procedure TfrmImportarXML.Move_Campos(Campo1,Campo2, Soma : String);
var
  i : Integer;
begin
  for i:=0 to (fDMImportarXML.cdsDetalhe.FieldCount-1) do
  begin
    if fDMImportarXML.cdsDetalhe.Fields[i].FieldName = Campo1 then
      fDMImportarXML.mItensNota.FieldByName(Campo2).AsString := fDMImportarXML.cdsDetalhe.FieldByName(Campo1).AsString;
  end;
end;


procedure TfrmImportarXML.FormShow(Sender: TObject);
begin
  fDMImportarXML     := TDMImportarXML.Create(Self);

  oDBUtils.SetDataSourceProperties(Self,fDMImportarXML);

  fDMImportarXML.cdsFilial.Close;
  fDMImportarXML.cdsFilial.Open;
  fDMImportarXML.qParametros.Close;
  fDMImportarXML.qParametros.Open;

  Label4.Visible := ((fDMImportarXML.qParametrosUSAR_PESSOA_FILIAL.AsString = 'S') or (fDMImportarXML.qParametrosUSA_PRODUTO_FILIAL.AsString = 'S'));
  RxDBLookupCombo1.Visible := ((fDMImportarXML.qParametrosUSAR_PESSOA_FILIAL.AsString = 'S') or (fDMImportarXML.qParametrosUSA_PRODUTO_FILIAL.AsString = 'S'));
  Label48.Visible := ((fDMImportarXML.qParametrosUSAR_PESSOA_FILIAL.AsString = 'S') or (fDMImportarXML.qParametrosUSA_PRODUTO_FILIAL.AsString = 'S'));
  if (fDMImportarXML.qParametrosUSAR_PESSOA_FILIAL.AsString = 'S') and (fDMImportarXML.qParametrosUSA_PRODUTO_FILIAL.AsString = 'S') then
    Label48.Caption := 'Informar a Filial para separar os Produtos e Clientes por empresa'
  else
  if (fDMImportarXML.qParametrosUSAR_PESSOA_FILIAL.AsString = 'S') then
    Label48.Caption := 'Informar a Filial para separar os Clientes por empresa'
  else
  if (fDMImportarXML.qParametrosUSA_PRODUTO_FILIAL.AsString = 'S') then
    Label48.Caption := 'Informar a Filial para separar os Produtos por empresa';
  TabSheet1.TabVisible := False;
  TabSheet2.TabVisible := False;
  TabSheet3.TabVisible := False;
  TabSheet4.TabVisible := False;
  TabSheet5.TabVisible := False;
  TabSheet6.TabVisible := False;
  tsDuplicatasDeducoes.TabVisible := False;
  tsNFeRefProtocolo.TabVisible    := False;
end;

procedure TfrmImportarXML.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(fDMImportarXML);
  Action := Cafree;
end;

function TfrmImportarXML.fnc_Monta_CNPJ(CNPJ: String; Qtd: Integer): String;
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

procedure TfrmImportarXML.Le_cdsDetalhe;
begin
  fDMImportarXML.mItensNota.EmptyDataSet;

  fDMImportarXML.cdsDetalhe.First;
  while not fDMImportarXML.cdsDetalhe.Eof do
  begin
    Grava_mItensNota;

    fDMImportarXML.cdsDetalhe.Next;
  end;

end;

procedure TfrmImportarXML.Grava_mItensNota;
var
  i : Integer;
  vContadorIcms : Integer;
  vTexto : String;
  vPosIni : Integer;
  vPosStr : String;
  vQtdAux : Real;
begin
  if trim(fDMImportarXML.cdsDetalhecProd.AsString) = '' then
    exit;

  fDMImportarXML.mItensNota.Insert;
  fDMImportarXML.mItensNotaItem.AsInteger              := fDMImportarXML.cdsDetalhenItem.AsInteger;
  fDMImportarXML.mItensNotaCodProduto.AsString         := fDMImportarXML.cdsDetalhecProd.AsString;
  fDMImportarXML.mItensNotaCodProdutoInterno.AsInteger := 0;
  fDMImportarXML.mItensNotaCodCor.AsInteger            := 0;
  fDMImportarXML.mItensNotaCodGrade.AsInteger          := 0;
  fDMImportarXML.mItensNotaPosicao.AsInteger           := 0;
  fDMImportarXML.mItensNotaTamanho.AsString            := '';
  fDMImportarXML.mItensNotaNomeCor.AsString            := '';
  fDMImportarXML.mItensNotaCodFornecedor.AsInteger     := 0;

  fDMImportarXML.mItensNotaQtd.AsFloat                 := fDMImportarXML.cdsDetalheqCom.AsFloat;
  fDMImportarXML.mItensNotaVlrUnitario.AsFloat         := fDMImportarXML.cdsDetalhevUnCom.AsFloat;
  fDMImportarXML.mItensNotaVlrTotal.AsFloat            := fDMImportarXML.cdsDetalhevProd.AsFloat;
  fDMImportarXML.mItensNotaCodBarra.AsString           := fDMImportarXML.cdsDetalhecEAN.AsString;
  fDMImportarXML.mItensNotaNomeProduto.AsString        := fDMImportarXML.cdsDetalhexProd.AsString;
  fDMImportarXML.mItensNotaNCM.AsString                := fDMImportarXML.cdsDetalheNCM.AsString;
  fDMImportarXML.mItensNotaID_NCM.AsInteger            := fDMImportarXML.fnc_Abrir_NCM(fDMImportarXML.cdsDetalheNCM.AsString);
  fDMImportarXML.mItensNotaCFOP.AsString               := fDMImportarXML.cdsDetalheCFOP.AsString;
  fDMImportarXML.mItensNotaCFOPOriginal.AsString       := fDMImportarXML.cdsDetalheCFOP.AsString;
  fDMImportarXML.mItensNotaCFOPInterno.AsInteger       := fnc_Busca_CFOP;
  if fDMImportarXML.mItensNotaCFOPInterno.AsInteger > 0 then
  begin
    fDMImportarXML.mItensNotaCFOP.AsString             := fDMImportarXML.qCFOPCODCFOP.AsString;
    fDMImportarXML.mItensNotaBeneficiamento.AsString   := fDMImportarXML.qCFOPBENEFICIAMENTO.AsString;
  end
  else
  begin
    fDMImportarXML.mItensNotaCFOP.AsString             := '';
    fDMImportarXML.mItensNotaBeneficiamento.AsString   := 'N';
  end;
  fDMImportarXML.mItensNotaUnidade.AsString            := fDMImportarXML.cdsDetalheuCom.AsString;
  fDMImportarXML.mItensNotaUnidadeInterno.AsString     := fDMImportarXML.cdsDetalheuCom.AsString;

  fDMImportarXML.mItensNotaNumPedido.AsString          := fDMImportarXML.cdsDetalhexPed.AsString;
  fDMImportarXML.mItensNotaItemPedido.AsInteger        := fDMImportarXML.cdsDetalhenItemPed.AsInteger;
  fDMImportarXML.mItensNotaInfAdicionais.AsString      := fDMImportarXML.cdsDetalheinfAdProd.AsString;

  vTexto  := Copy(fDMImportarXML.cdsDetalheinfAdProd.AsString,1,250);
  fDMImportarXML.mItensNotaNumLote.AsString := '';

  fDMImportarXML.vCSTInterno := 0;
  vTipoIcms   := '';
  case fDMImportarXML.cdsCabecalhoCRT.AsInteger of
    3 : vContadorIcms := 9;
    1,2 : vContadorIcms := 6;
  end;
  i := 0;
  while (vTipoIcms = '') or (i < vContadorIcms) do
  begin                                       
    inc(i);
    if Trim(fDMImportarXML.cdsDetalhe.FieldByName(vDescICMS[i]+'Orig').AsString) <> '' then
      vTipoIcms := vDescICMS[i];
  end;

  if fDMImportarXML.cdsCabecalhoCRT.AsInteger = 3 then
  begin
    if vTipoIcms <> '' then
    begin
      if  fDMImportarXML.cdsCabecalhoenderEmit_cPais.AsString = '1058' then
        fDMImportarXML.mItensNotaOrigem.AsString  := '0'
      else
        fDMImportarXML.mItensNotaOrigem.AsString  := fDMImportarXML.cdsDetalhe.FieldByName(vTipoIcms+'Orig').AsString;
      fDMImportarXML.Busca_SitTrib(fDMImportarXML.cdsDetalhe.FieldByName(vTipoIcms+'CST').AsString);
      fDMImportarXML.mItensNotaCodSitTribInterno.AsInteger := fDMImportarXML.vCSTInterno;
      fDMImportarXML.mItensNotaCodSitTrib.AsString         := fDMImportarXML.cdsDetalhe.FieldByName(vTipoIcms+'CST').AsString;
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
    end;

  end
  else
  begin
    if vTipoIcms <> '' then
    begin
      if  fDMImportarXML.cdsCabecalhoenderEmit_cPais.AsString = '1058' then
        fDMImportarXML.mItensNotaOrigem.AsString  := '0'
      else
        fDMImportarXML.mItensNotaOrigem.AsString  := fDMImportarXML.cdsDetalhe.FieldByName(vTipoIcms+'Orig').AsString;
      fDMImportarXML.busca_SitTrib(fDMImportarXML.cdsDetalhe.FieldByName(vTipoIcms+'CSOSN').AsString);
      fDMImportarXML.mItensNotaCodSitTribInterno.AsInteger := fDMImportarXML.vCSTInterno;
      fDMImportarXML.mItensNotaCodSitTrib.AsString         := fDMImportarXML.cdsDetalhe.FieldByName(vTipoIcms+'CSOSN').AsString;
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
    end;
  end;

  fDMImportarXML.mItensNotaAliqIPI.AsFloat    := fDMImportarXML.cdsDetalhepIPI.AsFloat;
  fDMImportarXML.mItensNotaCodCSTIPI.AsString := fDMImportarXML.cdsDetalheIPITrib_CST.AsString;
  fDMImportarXML.mItensNotaVlrIPI.AsFloat     := fDMImportarXML.cdsDetalhevIPI.AsFloat;

  fDMImportarXML.mItensNotaVlrDesconto.AsFloat      := fDMImportarXML.cdsDetalhevDesc.AsFloat;
  fDMImportarXML.mItensNotaVlrFrete.AsFloat         := fDMImportarXML.cdsDetalhevFrete.AsFloat;
  fDMImportarXML.mItensNotaGravarNovo.AsBoolean     := False;
  fDMImportarXML.mItensNotaQtdPacote.AsFloat        := 0;
  fDMImportarXML.mItensNotaConversorUnidade.AsFloat := 0;
  fDMImportarXML.mItensNotaQtdPacote.AsFloat        := StrToFloat(FormatFloat('0.00000',0));
  fDMImportarXML.mItensNotaConversorUnidade.AsFloat := StrToFloat(FormatFloat('0.00000',0));

  fDMImportarXML.mItensNota.Post;
end;

procedure TfrmImportarXML.Procura_DadosCabecalho;
begin
  vCodFornecedor     := 0;
  vCodFornecedor_2   := 0;
  vCodCidade         := 0;
  vIDPais            := 0;
  vFilial            := 0;
  vCodTransportadora := 0;

  prc_Abrir_qFilial(edCNPJDest.Text);
  if vFilial <= 0 then
    prc_Abrir_qFilial(fDMImportarXML.cdsCabecalhoemit_CNPJ.AsString);
  if vFilial <= 0 then
    prc_Abrir_qFilial(fDMImportarXML.cdsCabecalhoemit_CNPJ.AsString);

  //Cliente
  if fDMImportarXML.fnc_Abrir_Fornecedor(edCNPJDest.Text) then
  begin
    vCodFornecedor := fDMImportarXML.cdsFornecedorCODIGO.AsInteger;
    lbStatusForn.Caption := 'Encontrado - Código Interno: ' + fDMImportarXML.cdsFornecedorCODIGO.AsString;
  end
  else
  begin
    lbStatusForn.Caption := ' NÃO ENCONTRADO ';
    lbStatusForn.Color   := clRed;
  end;
  //Fornecedor
  if fDMImportarXML.fnc_Abrir_Fornecedor(edCNPJEmitente.Text) then
    vCodFornecedor_2 := fDMImportarXML.cdsFornecedorCODIGO.AsInteger;

  if fDMImportarXML.fnc_Abrir_Cidade(fDMImportarXML.cdsCabecalhoenderDest_cMun.AsString) then
  begin
    vCodCidade := fDMImportarXML.cdsCidadeID.AsInteger;
    lbStatusCidade.Caption := 'Encontrada - Código Interno: ' + fDMImportarXML.cdsCidadeID.AsString;
  end
  else
  begin
    lbStatusCidade.Caption := ' NÃO ENCONTRADA ';
    lbStatusCidade.Color   := clRed;
  end;
  if fDMImportarXML.fnc_Abrir_Cidade(fDMImportarXML.cdsCabecalhoenderEmit_cMun.AsString) then
    vCodCidade_2 := fDMImportarXML.cdsCidadeID.AsInteger;

  if fDMImportarXML.fnc_Abrir_Pais(fDMImportarXML.cdsCabecalhoenderDest_cPais.AsString) then
  begin
    vIDPais := fDMImportarXML.cdsPaisID.AsInteger;
    lbStatusPais.Caption := 'Encontrado - Código Interno: ' + fDMImportarXML.cdsPaisID.AsString;
  end
  else
  begin
    lbStatusPais.Caption := ' NÃO ENCONTRADO ';
    lbStatusPais.Color   := clRed;
  end;
  if fDMImportarXML.fnc_Abrir_Pais(fDMImportarXML.cdsCabecalhoenderEmit_cPais.AsString) then
    vIDPais_2 := fDMImportarXML.cdsPaisID.AsInteger;

  if fDMImportarXML.cdsCabecalhoCRT.AsInteger = 3 then
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
  end;
end;

function TfrmImportarXML.fnc_Busca_CFOP: Integer;
var
  vCodNatOper : String;
begin
  Result := 0;
  vCodNatOper := fDMImportarXML.cdsDetalheCFOP.AsString;
  fDMImportarXML.qCFOP.Close;
  fDMImportarXML.qCFOP.ParamByName('CODCFOP').AsString      := vCodNatOper;
  fDMImportarXML.qCFOP.Open;
  if not fDMImportarXML.qCFOP.IsEmpty then
    Result := fDMImportarXML.qCFOPID.AsInteger;
end;

procedure TfrmImportarXML.BitBtn2Click(Sender: TObject);
begin
  if vCodFornecedor > 0 then
    exit;

  vFilial := 0;
  if (fDMImportarXML.qParametrosUSAR_PESSOA_FILIAL.AsString = 'S') or (fDMImportarXML.qParametrosUSA_PRODUTO_FILIAL.AsString = 'S') then
  begin
    if trim(RxDBLookupCombo1.Text) = '' then
    begin
      MessageDlg('*** Filial não informada!', mtError, [mbOk], 0);
      exit;
    end
    else
      vFilial := RxDBLookupCombo1.KeyValue;
  end;

  Gravar_Cliente;
end;

procedure TfrmImportarXML.Gravar_Cidade;
var
  vAux: Integer;
begin
  vAux := dmDatabase.ProximaSequencia('CIDADE',0);

  fDMImportarXML.cdsCidade.Insert;
  fDMImportarXML.cdsCidadeID.AsInteger          := vAux;
  fDMImportarXML.cdsCidadeNOME.AsString         := fDMImportarXML.cdsCabecalhoenderDest_xMun.AsString;
  fDMImportarXML.cdsCidadeUF.AsString           := fDMImportarXML.cdsCabecalhoenderDest_UF.AsString;
  fDMImportarXML.cdsCidadeCODMUNICIPIO.AsString := fDMImportarXML.cdsCabecalhoenderDest_cMun.AsString;
  fDMImportarXML.cdsCidade.Post;
  fDMImportarXML.cdsCidade.ApplyUpdates(0);

  vCodCidade := vAux;

  lbStatusCidade.Color := clMoneyGreen;
  lbStatusCidade.Caption := 'Encontrada - Código Interno: ' + fDMImportarXML.cdsCabecalhoenderDest_xMun.AsString;
end;

procedure TfrmImportarXML.Gravar_Pais;
var                           
  vAux : Integer;
begin
  vAux := dmDatabase.ProximaSequencia('PAIS',0);

  fDMImportarXML.cdsPais.Insert;

  fDMImportarXML.cdsPaisID.AsInteger     := vAux;
  fDMImportarXML.cdsPaisNOME.AsString    := fDMImportarXML.cdsCabecalhoenderDest_xPais.AsString;
  fDMImportarXML.cdsPaisCODPAIS.AsString := fDMImportarXML.cdsCabecalhoenderDest_cPais.AsString;
  fDMImportarXML.cdsPais.Post;
  fDMImportarXML.cdsPais.ApplyUpdates(0);

  vIDPais := vAux;

  lbStatusPais.Color   := clMoneyGreen;
  lbStatusPais.Caption := 'Encontrado - Código Interno: ' + IntToStr(vIDPais);
end;

procedure TfrmImportarXML.Gravar_Cliente;
var
  vAux: Integer;
begin
  if (vCodFornecedor > 1) or (trim(fDMImportarXML.cdsCabecalhodest_xNome.AsString) = '' ) then
    exit;

  vAux := dmDatabase.ProximaSequencia('PESSOA',0);
  vAux := vAux;

  fDMImportarXML.cdsFornecedor.Insert;
  fDMImportarXML.cdsFornecedorCODIGO.AsInteger       := vAux;
  fDMImportarXML.cdsFornecedorNOME.AsString          := UpperCase(fDMImportarXML.cdsCabecalhodest_xNome.AsString);
  fDMImportarXML.cdsFornecedorENDERECO.AsString      := UpperCase(fDMImportarXML.cdsCabecalhoenderDest_xLgr.AsString);
  fDMImportarXML.cdsFornecedorBAIRRO.AsString        := UpperCase(fDMImportarXML.cdsCabecalhoenderDest_xBairro.AsString);
  fDMImportarXML.cdsFornecedorCIDADE.AsString        := fDMImportarXML.cdsCabecalhoenderDest_xMun.AsString;
  fDMImportarXML.cdsFornecedorCEP.AsString           := fDMImportarXML.cdsCabecalhoenderDest_CEP.AsString;
  fDMImportarXML.cdsFornecedorUF.AsString            := fDMImportarXML.cdsCabecalhoenderDest_UF.AsString;
  fDMImportarXML.cdsFornecedorTELEFONE1.AsString     := fDMImportarXML.cdsCabecalhoenderDest_fone.AsString;
  fDMImportarXML.cdsFornecedorCNPJ_CPF.AsString      := edCNPJDest2.Text;
  fDMImportarXML.cdsFornecedorINSCR_EST.AsString     := edInscDest2.Text;
  fDMImportarXML.cdsFornecedorDTCADASTRO.AsDateTime  := Date;
  fDMImportarXML.cdsFornecedorFANTASIA.AsString      := fDMImportarXML.cdsFornecedorNOME.AsString;
  fDMImportarXML.cdsFornecedorTP_FORNECEDOR.AsString := 'N';
  fDMImportarXML.cdsFornecedorTP_CLIENTE.AsString    := 'S';
  if vCodCidade < 1 then
    Gravar_Cidade;
  if vIDPais < 1 then
    Gravar_Pais;
  fDMImportarXML.cdsFornecedorID_CIDADE.AsInteger      := vCodCidade;
  fDMImportarXML.cdsFornecedorUSUARIO.AsString         := 'NFeXML';
  fDMImportarXML.cdsFornecedorHRCADASTRO.AsDateTime    := Now;
  fDMImportarXML.cdsFornecedorCOMPLEMENTO_END.AsString := fDMImportarXML.cdsCabecalhoenderDest_xCpl.AsString;
  fDMImportarXML.cdsFornecedorNUM_END.AsString         := fDMImportarXML.cdsCabecalhoenderDest_nro.AsString;
  fDMImportarXML.cdsFornecedorID_PAIS.AsInteger        := vIDPais;
  if Length(edCNPJEmitente2.Text) = 18 then
    fDMImportarXML.cdsFornecedorPESSOA.AsString := 'J'
  else
  begin
    fDMImportarXML.cdsFornecedorPESSOA.AsString := 'F';
    fDMImportarXML.cdsFornecedorID_REGIME_TRIB.AsInteger := 1;
  end;

  //03/06/2016
  if (fDMImportarXML.qParametrosUSAR_PESSOA_FILIAL.AsString = 'S') then
    fDMImportarXML.cdsFornecedorFILIAL.AsInteger       := vFilial;
  if (fDMImportarXML.cdsFornecedorINSCR_EST.AsString = 'ISENTO') and ((fDMImportarXML.cdsFornecedorUF.AsString = 'RS')
    or (fDMImportarXML.cdsFornecedorPESSOA.AsString = 'F')) then
    fDMImportarXML.cdsFornecedorINSCR_EST.AsString := '';

  if fDMImportarXML.cdsFornecedorINSCR_EST.AsString = 'ISENTO' then
    fDMImportarXML.cdsFornecedorTIPO_CONTRIBUINTE.AsInteger := 2
  else
  if trim(fDMImportarXML.cdsFornecedorINSCR_EST.AsString) = '' then
    fDMImportarXML.cdsFornecedorTIPO_CONTRIBUINTE.AsInteger := 9
  else
    fDMImportarXML.cdsFornecedorTIPO_CONTRIBUINTE.AsInteger := 1;

  if fDMImportarXML.cdsFornecedorTIPO_CONTRIBUINTE.AsInteger = 1 then
    fDMImportarXML.cdsFornecedorTIPO_CONSUMIDOR.AsInteger := 0
  else
    fDMImportarXML.cdsFornecedorTIPO_CONSUMIDOR.AsInteger := 1;
  fDMImportarXML.cdsFornecedorINATIVO.AsString           := 'N';
  fDMImportarXML.cdsFornecedorTP_VENDEDOR.AsString       := 'N';
  fDMImportarXML.cdsFornecedorTP_FUNCIONARIO.AsString    := 'N';
  fDMImportarXML.cdsFornecedorTP_ATELIER.AsString        := 'N';
  fDMImportarXML.cdsFornecedorTP_EXPORTACAO.AsString     := 'N';
  fDMImportarXML.cdsFornecedorTP_PREPOSTO.AsString       := 'N';
  fDMImportarXML.cdsFornecedorTP_TRANSPORTADORA.AsString := 'N';
  fDMImportarXML.cdsFornecedorCLIENTE_ESTOQUE.AsString   := 'N';
  fDMImportarXML.cdsFornecedorTP_PRODUTOR_RURAL.AsString := 'N';
  //*******************

  fDMImportarXML.cdsFornecedor.Post;
  fDMImportarXML.cdsFornecedor.ApplyUpdates(0);

  vCodFornecedor  := vAux;
  BitBtn2.Visible := False;

  lbStatusForn.Color   := clMoneyGreen;
  lbStatusForn.Caption := 'Encontrado - Código Interno: ' + IntToStr(vAux);
end;

procedure TfrmImportarXML.Verificar_Produto;
var
  vExiste : Boolean;
begin
  vExiste := False;
  if (vBuscaNCM) and (trim(fDMImportarXML.mItensNotaCodBarra.AsString) <> '') then
    fDMImportarXML.prc_Abrir_Produto(0,'','',fDMImportarXML.mItensNotaCodBarra.AsString)
  else
    fDMImportarXML.prc_Abrir_Produto(0,fDMImportarXML.mItensNotaCodProduto.AsString,'','');
  if fDMImportarXML.cdsProdutoID.AsInteger > 0 then
  begin
    vExiste := True;
    fDMImportarXML.mItensNota.Edit;
    fDMImportarXML.mItensNotaCodProdutoInterno.AsInteger := fDMImportarXML.cdsProdutoID.AsInteger;
    fDMImportarXML.mItensNota.Post;

    if (vBuscaNCM) and (fDMImportarXML.cdsProdutoID_NCM.AsInteger <= 0) and (fDMImportarXML.mItensNotaID_NCM.AsInteger > 0) then
    begin
      fDMImportarXML.cdsProduto.Edit;
      fDMImportarXML.cdsProdutoID_NCM.AsInteger := fDMImportarXML.mItensNotaID_NCM.AsInteger;
      fDMImportarXML.cdsProduto.Post;
      fDMImportarXML.cdsProduto.ApplyUpdates(0);
    end;
  end
  else
  if not vBuscaNCM then
    fDMImportarXML.Gravar_Produto('NFeXML',ckPreco.Checked);
end;

function TfrmImportarXML.fnc_NumValido(Const S: String) : Integer;
var
  i : Integer;
  vTexto : String;
begin
  Result := 0;
  vTexto := '';
  for i := 1 to Length(s) do
  begin
    if S[i] in['0','1','2','3','4','5','6','7','8','9'] then
      vTexto := vTexto + s[i]
    else
    begin
      vTexto := '';
      Break;
    end;
  end;
  if vTexto <> '' then
    Result := StrToInt(vTexto);
end;

procedure TfrmImportarXML.BitBtn4Click(Sender: TObject);
begin
  vFilial := 0;
  if (fDMImportarXML.qParametrosUSAR_PESSOA_FILIAL.AsString = 'S') or (fDMImportarXML.qParametrosUSA_PRODUTO_FILIAL.AsString = 'S') then
  begin
    if trim(RxDBLookupCombo1.Text) = '' then
    begin
      MessageDlg('*** Filial não informada!', mtError, [mbOk], 0);
      exit;
    end
    else
      vFilial := RxDBLookupCombo1.KeyValue;
  end;

  fDMImportarXML.mItensNota.First;
  while not fDMImportarXML.mItensNota.Eof do
  begin
    fDMImportarXML.Gravar_ClasFiscal;

    fDMImportarXML.Gravar_Unidade;

    Verificar_Produto;

    fDMImportarXML.mItensNota.Next;
  end;
end;

procedure TfrmImportarXML.prc_Abrir_qFilial(CNPJ_CPF : String);
begin
  vFilial := 0;
  fDMImportarXML.qFilial.Close;
  fDMImportarXML.qFilial.ParamByName('CNPJ_CPF').AsString := CNPJ_CPF;
  fDMImportarXML.qFilial.Open;
  vFilial := fDMImportarXML.qFilialID.AsInteger;
end;

procedure TfrmImportarXML.btnListarClick(Sender: TObject);
var
  vTexto : String;
begin
  if MessageDlg('Confirma a importação?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  vBuscaNCM := False;

  vFilial := 0;
  if (fDMImportarXML.qParametrosUSAR_PESSOA_FILIAL.AsString = 'S') or (fDMImportarXML.qParametrosUSA_PRODUTO_FILIAL.AsString = 'S') then
  begin
    if trim(RxDBLookupCombo1.Text) = '' then
    begin
      MessageDlg('*** Filial não informada!', mtError, [mbOk], 0);
      exit;
    end
    else
      vFilial := RxDBLookupCombo1.KeyValue;
  end;

  memLista.Lines.Clear;

  ListarArquivos(edtDiretorio.Text, chkSub.Checked);

  vTexto := '';
  if ckCliente.Checked then
    vTexto := '(Cliente) ';
  if ckProduto.Checked then
    vTexto := vTexto + '(Produto) ';
  if ckFornecedor.Checked then
    vTexto := vTexto + '(Fornecedor) ';
  ShowMessage('Arquivo de ' + vTexto +  ' Gerados!');
end;

procedure TfrmImportarXML.Carrega_XML(Arquivo: String);
begin
  //pcDados.ActivePage := TabSheet3;

  try
    fDMImportarXML.AbrirNFe(Arquivo);
    if not fDMImportarXML.cdsCabecalho.Active then
      vGravar := False
    else
      vGravar := True;
  except
    on e: Exception do
    begin
      vGravar := False;
      Memo1.Lines.Add(Arquivo);
      raise Exception.Create('Erro ao abrir o arquivo: ' + #13 + e.Message);
    end;
  end;
  if not vGravar then
  begin
    Memo1.Lines.Add(Arquivo);
    exit;
  end;

  case fDMImportarXML.cdsCabecalhoindPag.AsInteger of
    0 : edTipoPagamento.Text := '0 - Pagamento a vista';
    1 : edTipoPagamento.Text := '1 - Pagamento a prazo';
    2 : edTipoPagamento.Text := '2 - Outros';
  end;
  case fDMImportarXML.cdsCabecalhofinNFe.AsInteger of
    1 : edFinalidade.Text := '1 - Normal';
    2 : edFinalidade.Text := '2 - Complementar';
    3 : edFinalidade.Text := '3 - Ajuste';
  end;
  case fDMImportarXML.cdsCabecalhotpNF.AsInteger of
    0 : edEntradaSaida.Text := '0 - Entrada';
    1 : edEntradaSaida.Text := '1 - Saida';
  end;
  case fDMImportarXML.cdsCabecalhotpEmis.AsInteger of
    1 : edFormaEmissao.Text := '1 - Normal';
    2 : edFormaEmissao.Text := '2 - Contingência FS';
    3 : edFormaEmissao.Text := '3 - Contingência SCAN';
    4 : edFormaEmissao.Text := '4 - Contingência DPEC';
    5 : edFormaEmissao.Text := '5 - Contingência FS-DA';
  end;
  case fDMImportarXML.cdsCabecalhoprocEmi.AsInteger of
    0 : edProcesso.Text := '0 - Com Aplicativo do Contribuinte';
    1 : edProcesso.Text := '1 - Avulsa pelo Fisco';
    2 : edProcesso.Text := '2 - Avulsa pelo contribuinte com seu certificado digital, através do site';
    3 : edProcesso.Text := '3 - Pelo Contribuinte com aplicativo fornecido pelo Fisco';
  end;
  if Trim(fDMImportarXML.cdsCabecalhoemit_CNPJ.AsString) <> '' then
    edCNPJEmitente.Text := fnc_Monta_CNPJ(fDMImportarXML.cdsCabecalhoemit_CNPJ.AsString,14)
  else
    edCNPJEmitente.Text := fnc_Monta_CNPJ(fDMImportarXML.cdsCabecalhoemit_CPF.AsString,11);
  edInscEmitente.Text  := fDMImportarXML.cdsCabecalhoemit_IE.AsString;
  edInscEmitente2.Text := fDMImportarXML.cdsCabecalhoemit_IE.AsString;
  edCNPJEmitente2.Text := edCNPJEmitente.Text;
  edUFEmitente.Text    := fDMImportarXML.cdsCabecalhoenderEmit_UF.AsString;
  if Trim(fDMImportarXML.cdsCabecalhodest_CNPJ.AsString) <> '' then
    edCNPJDest.Text := fnc_Monta_CNPJ(fDMImportarXML.cdsCabecalhodest_CNPJ.AsString,14)
  else
    edCNPJDest.Text := fnc_Monta_CNPJ(fDMImportarXML.cdsCabecalhodest_CPF.AsString,11);
  edInscDest.Text  := fDMImportarXML.cdsCabecalhodest_IE.AsString;
  edInscDest2.Text := fDMImportarXML.cdsCabecalhodest_IE.AsString;
  edCNPJDest2.Text := edCNPJDest.Text;
  edUFDest.Text   := fDMImportarXML.cdsCabecalhoenderDest_UF.AsString;

  if Trim(fDMImportarXML.cdsCabecalhoCNPJ.AsString) <> '' then
    edCNPJTransportadora.Text := fnc_Monta_CNPJ(fDMImportarXML.cdsCabecalhoCNPJ.AsString,14)
  else
    edCNPJTransportadora.Text := fnc_Monta_CNPJ(fDMImportarXML.cdsCabecalhoCPF.AsString,11);

  Procura_DadosCabecalho;

  Le_cdsDetalhe;
end;

procedure TfrmImportarXML.ListarArquivos(Diretorio: string; Sub: Boolean);
var
  F: TSearchRec;
  Ret: Integer;
  TempNome: string;
begin
  Ret := FindFirst(Diretorio+'\*.*', faAnyFile, F);
  try
    while Ret = 0 do
    begin
      Refresh;
      MemLista.Refresh;
      Memo1.Refresh;
      if TemAtributo(F.Attr, faDirectory) then
      begin
        if (F.Name <> '.') And (F.Name <> '..') then
          if Sub = True then
          begin
            TempNome := Diretorio+'\' + F.Name;
            ListarArquivos(TempNome, True);
          end;
      end
      else
      begin
        vGravar := True;
        memLista.Lines.Add(Diretorio+'\'+F.Name);
        try
          Carrega_XML(Diretorio+'\'+F.Name);
        except
        end;
        if vGravar then
        begin
          if (ckCliente.Checked) and (not(vBuscaNCM)) then
          begin
            //pcDados.ActivePage := TabSheet3;
            BitBtn2Click(frmImportarXML);
          end;
          if ckProduto.Checked then
          begin
            //pcDados.ActivePage := TabSheet3;
            BitBtn4Click(frmImportarXML);
          end;
          if (ckFornecedor.Checked) and (not(vBuscaNCM)) then
            Gravar_Fornecedor;
        end;
        
      end;
        Ret := FindNext(F);
    end;
  finally
    FindClose(F);
  end;
end;

function TfrmImportarXML.TemAtributo(Attr, Val: Integer): Boolean;
begin
  Result := Attr and Val = Val;
end;

procedure TfrmImportarXML.Gravar_Fornecedor;
var
  vAux : Integer;
begin
  if (vCodFornecedor_2 > 1) or (trim(fDMImportarXML.cdsCabecalhoemit_xNome.AsString) = '' ) then
    exit;

  vAux := dmDatabase.ProximaSequencia('PESSOA',0);
  vAux := vAux;

  fDMImportarXML.cdsFornecedor.Insert;
  fDMImportarXML.cdsFornecedorCODIGO.AsInteger       := vAux;
  fDMImportarXML.cdsFornecedorNOME.AsString          := UpperCase(fDMImportarXML.cdsCabecalhoemit_xNome.AsString);
  fDMImportarXML.cdsFornecedorENDERECO.AsString      := UpperCase(fDMImportarXML.cdsCabecalhoenderEmit_xLgr.AsString);
  fDMImportarXML.cdsFornecedorBAIRRO.AsString        := UpperCase(fDMImportarXML.cdsCabecalhoenderEmit_xBairro.AsString);
  fDMImportarXML.cdsFornecedorCIDADE.AsString        := fDMImportarXML.cdsCabecalhoenderEmit_xMun.AsString;
  fDMImportarXML.cdsFornecedorCEP.AsString           := fDMImportarXML.cdsCabecalhoenderEmit_CEP.AsString;
  fDMImportarXML.cdsFornecedorUF.AsString            := fDMImportarXML.cdsCabecalhoenderEmit_UF.AsString;
  fDMImportarXML.cdsFornecedorTELEFONE1.AsString     := fDMImportarXML.cdsCabecalhoenderEmit_fone.AsString;
  fDMImportarXML.cdsFornecedorCNPJ_CPF.AsString      := edCNPJEmitente2.Text;
  fDMImportarXML.cdsFornecedorINSCR_EST.AsString     := edInscEmitente2.Text;
  fDMImportarXML.cdsFornecedorDTCADASTRO.AsDateTime  := Date;
  fDMImportarXML.cdsFornecedorFANTASIA.AsString      := fDMImportarXML.cdsFornecedorNOME.AsString;
  fDMImportarXML.cdsFornecedorTP_FORNECEDOR.AsString := 'S';
  fDMImportarXML.cdsFornecedorTP_CLIENTE.AsString    := 'N';
  if vCodCidade_2 < 1 then
  begin
    Gravar_Cidade;
    vCodCidade_2 := vCodCidade;
  end;
  if vIDPais_2 < 1 then
  begin
    Gravar_Pais;
    vIDPais_2 := vIDPais;
  end;
  fDMImportarXML.cdsFornecedorID_CIDADE.AsInteger      := vCodCidade_2;
  fDMImportarXML.cdsFornecedorUSUARIO.AsString         := 'NFeXML';
  fDMImportarXML.cdsFornecedorHRCADASTRO.AsDateTime    := Now;
  fDMImportarXML.cdsFornecedorCOMPLEMENTO_END.AsString := fDMImportarXML.cdsCabecalhoenderEmit_xCpl.AsString;
  fDMImportarXML.cdsFornecedorNUM_END.AsString         := fDMImportarXML.cdsCabecalhoenderEmit_nro.AsString;
  fDMImportarXML.cdsFornecedorID_PAIS.AsInteger        := vIDPais_2;
  if Length(edCNPJEmitente2.Text) = 18 then
    fDMImportarXML.cdsFornecedorPESSOA.AsString := 'J'
  else
  begin
    fDMImportarXML.cdsFornecedorPESSOA.AsString := 'F';
    fDMImportarXML.cdsFornecedorID_REGIME_TRIB.AsInteger := 1;
  end;

  //03/06/2016
  if (fDMImportarXML.qParametrosUSAR_PESSOA_FILIAL.AsString = 'S') then
    fDMImportarXML.cdsFornecedorFILIAL.AsInteger       := vFilial;
  if (fDMImportarXML.cdsFornecedorINSCR_EST.AsString = 'ISENTO') and ((fDMImportarXML.cdsFornecedorUF.AsString = 'RS')
    or (fDMImportarXML.cdsFornecedorPESSOA.AsString = 'F')) then
    fDMImportarXML.cdsFornecedorINSCR_EST.AsString := '';
    
  if fDMImportarXML.cdsFornecedorINSCR_EST.AsString = 'ISENTO' then
    fDMImportarXML.cdsFornecedorTIPO_CONTRIBUINTE.AsInteger := 2
  else
  if trim(fDMImportarXML.cdsFornecedorINSCR_EST.AsString) = '' then
    fDMImportarXML.cdsFornecedorTIPO_CONTRIBUINTE.AsInteger := 9
  else
    fDMImportarXML.cdsFornecedorTIPO_CONTRIBUINTE.AsInteger := 1;
  if fDMImportarXML.cdsFornecedorTIPO_CONTRIBUINTE.AsInteger = 1 then
    fDMImportarXML.cdsFornecedorTIPO_CONSUMIDOR.AsInteger := 0
  else
    fDMImportarXML.cdsFornecedorTIPO_CONSUMIDOR.AsInteger := 1;

  fDMImportarXML.cdsFornecedorINATIVO.AsString           := 'N';
  fDMImportarXML.cdsFornecedorTP_VENDEDOR.AsString       := 'N';
  fDMImportarXML.cdsFornecedorTP_FUNCIONARIO.AsString    := 'N';
  fDMImportarXML.cdsFornecedorTP_ATELIER.AsString        := 'N';
  fDMImportarXML.cdsFornecedorTP_EXPORTACAO.AsString     := 'N';
  fDMImportarXML.cdsFornecedorTP_PREPOSTO.AsString       := 'N';
  fDMImportarXML.cdsFornecedorTP_TRANSPORTADORA.AsString := 'N';
  fDMImportarXML.cdsFornecedorTP_PRODUTOR_RURAL.AsString := 'N';
  fDMImportarXML.cdsFornecedorCLIENTE_ESTOQUE.AsString   := 'N';
  //*******************

  fDMImportarXML.cdsFornecedor.Post;
  fDMImportarXML.cdsFornecedor.ApplyUpdates(0);

  vCodFornecedor_2 := vAux;
end;

procedure TfrmImportarXML.btnBuscaNCMClick(Sender: TObject);
var
  vTexto : String;
begin
  if MessageDlg('Confirma a Busca por NCM?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  vBuscaNCM := True;

  vFilial := 0;
  if (fDMImportarXML.qParametrosUSAR_PESSOA_FILIAL.AsString = 'S') or (fDMImportarXML.qParametrosUSA_PRODUTO_FILIAL.AsString = 'S') then
  begin
    if trim(RxDBLookupCombo1.Text) = '' then
    begin
      MessageDlg('*** Filial não informada!', mtError, [mbOk], 0);
      exit;
    end
    else
      vFilial := RxDBLookupCombo1.KeyValue;
  end;

  memLista.Lines.Clear;

  ListarArquivos(edtDiretorio.Text, chkSub.Checked);

  vTexto := '';
  if not vBuscaNCM then
  begin
    if ckCliente.Checked then
      vTexto := '(Cliente) ';
    if ckFornecedor.Checked then
      vTexto := vTexto + '(Fornecedor) ';
  end;
  if ckProduto.Checked then
    vTexto := vTexto + '(Produto) ';
  ShowMessage('Arquivo de ' + vTexto +  ' Gerados!');
end;

end.
