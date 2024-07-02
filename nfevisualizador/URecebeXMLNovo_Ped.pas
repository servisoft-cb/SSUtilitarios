unit URecebeXMLNovo_Ped;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Mask, ToolEdit, ExtCtrls,
  Grids, DBGrids, SMDBGrid, RzTabs, RzPanel, UDMRecebeXML, NxCollection, UDMCadPedido, SqlExpr, dbXPress, DB, StrUtils,
  DateUtils, RxLookup, Buttons, Provider, CurrEdit;

type
  TfrmRecebeXMLNovo_Ped = class(TForm)
    Panel2: TPanel;
    gbxVendedor: TRzGroupBox;
    SMDBGrid1: TSMDBGrid;
    btnGravar_Pedido: TNxButton;
    ComboBox1: TComboBox;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    DateEdit1: TDateEdit;
    Label5: TLabel;
    DateEdit2: TDateEdit;
    StaticText1: TStaticText;
    Label9: TLabel;
    edtPedidoCliente: TEdit;
    RzGroupBox1: TRzGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    edtComplemento: TEdit;
    NxButton1: TNxButton;
    ceVlrUnitario: TCurrencyEdit;
    Label8: TLabel;
    edtOS: TEdit;
    Label10: TLabel;
    edtOBS: TEdit;
    Label11: TLabel;
    edtOBSNFe: TEdit;
    ceCodFixoCliente: TCurrencyEdit;
    Label12: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnGravar_PedidoClick(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NxButton1Click(Sender: TObject);
    procedure ceCodFixoClienteEnter(Sender: TObject);
  private
    { Private declarations }
    fDMCadPedido: TDMCadPedido;

    Registro: String;
    vCNPJ_Cliente: String;
    vErro: Boolean;
    vID_Variacao: Integer;
    vEnd_Arquivo: String;
    vItem_Rem: Integer;
    vObs_Preco: WideString;
    vCodFixoAnt: Integer;

    procedure prc_Gerar_mAuxiliar;
    procedure prc_Gravar_Pedido;
    procedure prc_Gravar_Pedido_Item;
    procedure prc_Mover_Dados;
    procedure prc_Buscar_Imposto(Auxiliar, Nome: String);
    procedure prc_Gravar_Produto;

    function fnc_Verifica_Cliente(CNPJ_Cliente: String): Boolean;

  public
    { Public declarations }
    fDMRecebeXML: TDMRecebeXML;
    vCodCliente_Ped: Integer;
    vNum_Nota_Ent: Integer;
    vSerie_Ent: String;
    vID_Cliente_Ent: Integer;                              
  end;

var
  frmRecebeXMLNovo_Ped: TfrmRecebeXMLNovo_Ped;

implementation

uses rsDBUtils, UCadPedido_Itens, DmdDatabase, UDMUtil, uUtilPadrao, uCalculo_Pedido, uGrava_Pedido, UDMCadProduto, uUtil_Pedido, uUtil_RecebeXML,
  USel_Produto;

{$R *.dfm}

procedure TfrmRecebeXMLNovo_Ped.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmRecebeXMLNovo_Ped.prc_Gerar_mAuxiliar;
begin

end;

procedure TfrmRecebeXMLNovo_Ped.FormShow(Sender: TObject);
var
  i: Integer;
  vTexto: String;
begin
  oDBUtils.SetDataSourceProperties(Self, fDMRecebeXML);
  fDMCadPedido := TDMCadPedido.Create(Self);
  oDBUtils.SetDataSourceProperties(Self,fDMCadPedido);
  fDMRecebeXML.cdsOperacao_Nota.Close;
  fDMRecebeXML.cdsOperacao_Nota.Open;

  vTipo_Pedido := 'P';
  fDMCadPedido.prc_Abrir_cdsCFOP('S');
  fDMCadPedido.prc_Abrir_cdsCliente('C',0);
  fDMCadPedido.prc_Abrir_Produto;

  vTexto := SQLLocate('PARAMETROS','ID','ID_OPERACAO_MAOOBRA','1');
  if trim(vTexto) <> '' then
    RxDBLookupCombo1.KeyValue := StrToInt(vTexto);

  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
    if (SMDBGrid1.Columns[i].FieldName = 'Tamanho') then
      SMDBGrid1.Columns[i].Visible := (fDMRecebeXML.qParametrosUSA_GRADE.AsString = 'S');
    if (SMDBGrid1.Columns[i].FieldName = 'ID_Cor') or (SMDBGrid1.Columns[i].FieldName = 'NomeCor') then
      SMDBGrid1.Columns[i].Visible := ((fDMRecebeXML.qParametrosINFORMAR_COR_MATERIAL.AsString = 'S')
                                    or (fDMRecebeXML.qParametrosINFORMAR_COR_PROD.AsString = 'C')
                                    or (fDMRecebeXML.qParametrosINFORMAR_COR_PROD.AsString = 'B'));
  end;

  if vCodCliente_Ped > 0 then
  begin
    fDMCadPedido.cdsCliente.Close;
    fDMCadPedido.cdsCliente.Open;
    RxDBLookupCombo2.KeyValue := vCodCliente_Ped;
    fDMCadPedido.cdsCliente.Locate('CODIGO',vCodCliente_Ped,[loCaseInsensitive]);
  end;
  DateEdit2.Date := Date;

  edtComplemento.Enabled := (fDMRecebeXML.qParametros_ProdCOD_NAFRENTE_NOME.AsString <> 'S') or (fDMRecebeXML.cdsFornecedorCOD_CLIENTE_PROD.AsInteger <= 0);
  edtComplemento.Color   := fnc_Cor_Habilita(edtComplemento.Enabled);
  ceCodFixoCliente.Enabled := (fDMRecebeXML.qParametros_ProdCOD_NAFRENTE_NOME.AsString = 'S');
  ceCodFixoCliente.Color   := fnc_Cor_Habilita(ceCodFixoCliente.Enabled);
  if (fDMRecebeXML.qParametros_ProdCOD_NAFRENTE_NOME.AsString = 'S') then
    ceCodFixoCliente.AsInteger := fDMRecebeXML.cdsFornecedorCOD_CLIENTE_PROD.AsInteger;
  if edtComplemento.Enabled then
  begin
    if fDMRecebeXML.mItensNotaID_SERVICO_INT.AsInteger > 0 then
      edtComplemento.Text := SQLLocate('SERVICO_INT','ID','NOME',fDMRecebeXML.mItensNotaID_SERVICO_INT.AsString);
  end;
  vCodFixoAnt := ceCodFixoCliente.AsInteger;
end;

function TfrmRecebeXMLNovo_Ped.fnc_Verifica_Cliente(CNPJ_Cliente: String): Boolean;
begin
  {Result := False;
  if trim(CNPJ_Cliente) = '' then
  begin
    vCNPJ_Cliente := copy(Registro,1,14);
    if ckExportacao.Checked then
      vCNPJ_Cliente := Monta_Texto(vCNPJ_Cliente,0)
    else
      vCNPJ_Cliente := copy(vCNPJ_Cliente,1,2) + '.' + copy(vCNPJ_Cliente,3,3) + '.' +  copy(vCNPJ_Cliente,6,3) + '/' +  copy(vCNPJ_Cliente,9,4) + '-' +  copy(vCNPJ_Cliente,13,2);
  end
  else
    vCNPJ_Cliente := CNPJ_Cliente;
  fDMGerar_EDI.qCliente.Close;
  fDMGerar_EDI.qCliente.ParamByName('CNPJ_CPF').AsString := vCNPJ_Cliente;
  fDMGerar_EDI.qCliente.Open;
  if (fDMGerar_EDI.qCliente.IsEmpty) or (fDMGerar_EDI.qClienteID_EDI.AsInteger <= 0) then
  begin
    MessageDlg('*** Cliente não encontrado ou não foi informado o Layout do EDI!', mtError, [mbOk], 0);
    exit;
  end;
  fDMGerar_EDI.qEDI_Config.Close;
  fDMGerar_EDI.qEDI_Config.ParamByName('ID').AsInteger := fDMGerar_EDI.qClienteID_EDI.AsInteger;
  fDMGerar_EDI.qEDI_Config.Open;
  if fDMGerar_EDI.qEDI_Config.IsEmpty then
    exit;

  Result := True;}
end;

procedure TfrmRecebeXMLNovo_Ped.btnGravar_PedidoClick(Sender: TObject);
var
  vNumOC: String;
  vID_Produto: Integer;
  sds: TSQLDataSet;
  vIDVendedor_Aux: Integer;
  vMSGAux: String;
  vTexto: String;
  vIDAux: Integer;
  vNumPedido: String;
begin
  if fDMRecebeXML.mItensNota.State in [dsEdit] then
    fDMRecebeXML.mItensNota.Post;
  if uUtil_RecebeXML.fnc_Pedido_Existe(vID_Cliente_Ent,vNum_Nota_Ent,vSerie_Ent) then
    exit;
  if not fDMRecebeXML.fnc_Abrir_Nota(fDMRecebeXML.vFilial_Local,vNum_Nota_Ent,fDMRecebeXML.vCodFornecedor_XML,vSerie_Ent) then
  begin
    MessageDlg('*** Nota não foi gravada!' + #13 + #13 + '    É preciso gravar a nota primeiro!' , mtError, [mbOk], 0);
    exit;
  end;
  if (fDMRecebeXML.mItensNota.IsEmpty) or (vErro) then
  begin
    MessageDlg('*** Arquivo de itens vazio ou com erro!', mtError, [mbOk], 0);
    exit;
  end;
  vMSGAux := '';
  if SQLLocate('PARAMETROS_PED','ID','OBRIGA_USO_DTENTREGA','1') = 'S' then
  begin
    if DateEdit1.Date <= 10 then
      vMSGAux := vMSGAux + #13 + '*** Data de entrega não informada!';
  end;
  if RxDBLookupCombo2.Text = '' then
    vMSGAux := vMSGAux + #13 +  '*** Cliente não informado!';
  if DateEdit2.Date <= 10 then
    vMSGAux := vMSGAux + #13 +  '*** Data de emissão não foi informada!';
  if (DateEdit1.Date > 10) and (DateEdit2.Date > DateEdit1.Date) then
    vMSGAux := vMSGAux + #13 +  '*** Data de entrega não pode ser menor que a data de emissão!';
  if trim(vMSGAux) <> '' then
  begin
    MessageDlg(vMSGAux, mtError, [mbOk], 0);
    exit;
  end;
  if (trim(edtPedidoCliente.Text) = '') and (SQLLocate('PARAMETROS_PED','ID','EXIGE_PEDIDO_CLI','1') = 'S') then
  begin
    if MessageDlg('*** Nº do Pedido não informado, deseja gravar assim mesmo?',mtConfirmation,[mbYes,mbNo],0) <> mrYes then
      exit;
  end;

  vMSGAux := '';
  SMDBGrid1.DisableScroll;
  try
    fDMRecebeXML.mItensNota.First;
    while not fDMRecebeXML.mItensNota.Eof do
    begin
      if StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaVlr_Pedido_Unitario.AsFloat)) <= 0 then
        vMSGAux := vMSGAux + #13 + 'Item: ' + fDMRecebeXML.mItensNotaItem.AsString + '  esta com o preço zerado!';
      fDMRecebeXML.mItensNota.Next;
    end;
  finally
    SMDBGrid1.EnableScroll;
  end;
  if trim(vMSGAux) <> '' then
  begin
    MessageDlg(vMSGAux, mtError, [mbOk], 0);
    exit;
  end;

  vCodCliente_Ped := RxDBLookupCombo2.KeyValue;

  vObs_Preco := '';
  vNumOC     := '';
  prc_Gravar_Pedido;
  fDMRecebeXML.mItensNota.First;
  while not fDMRecebeXML.mItensNota.Eof do
  begin
    if fDMRecebeXML.mItensNotaCodProduto_Ped.AsInteger <=0 then
    begin
      prc_Gravar_Produto;
      fDMCadPedido.cdsProduto.Close;
      fDMCadPedido.cdsProduto.Open;
    end;
    prc_Gravar_Pedido_Item;
    fDMRecebeXML.mItensNota.Next;
  end;

  if not (fDMCadPedido.cdsPedido.State in [dsEdit,dsInsert]) then
    fDMCadPedido.cdsPedido.Edit;
  vIDAux          := fDMCadPedido.cdsPedidoID.AsInteger;
  vIDVendedor_Aux := fDMCadPedido.cdsPedidoID_VENDEDOR.AsInteger;
  uGrava_Pedido.prc_Gravar(fDMCadPedido);

  if (vIDVendedor_Aux > 0) and (SQLLocate('PARAMETROS_COM','ID','AVISAR_SEM_COMISSAO','1') = 'S') then
  begin
    vMSGAux := fnc_Sem_Comissao(fDMCadPedido,vIDAux);
    if trim(vMSGAux) <> '' then
    begin
      vTexto := '';
      while not (trim(vTexto) = '1') do
        vTexto := InputBox('*** ATENÇÃO ***',vMSGAux + #13 + #13 + 'Informar 1 para prosseguir', '');
    end;
  end;
  FreeAndNil(fDMCadPedido);

  vNumPedido := SQLLocate('PEDIDO','ID','NUM_PEDIDO',IntToStr(vIDAux));
  if trim(vNumPedido) <> '' then
    MessageDlg('*** Pedido ' + vNumPedido  + ' Gerado!', mtConfirmation, [mbOk], 0);
  Close;
end;

procedure TfrmRecebeXMLNovo_Ped.prc_Gravar_Pedido;
var
  vIDAux: Integer;
begin
  UGrava_Pedido.prc_Inserir_Ped(fDMCadPedido);
  fDMCadPedido.cdsFilial.Locate('ID',fDMCadPedido.cdsPedidoFILIAL.AsInteger,[loCaseInsensitive]);
  if fDMCadPedido.cdsFilialSIMPLES.AsString = 'S' then
    fDMCadPedido.prc_Abrir_CSTICMS('S')
  else
    fDMCadPedido.prc_Abrir_CSTICMS('N');
  //fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger    := fDMRecebeXML.vCodFornecedor_XML;
  fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger := vCodCliente_Ped;
  fDMCadPedido.cdsCliente.Locate('CODIGO',fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,[loCaseInsensitive]);
  fDMCadPedido.cdsUF.Locate('UF',fDMCadPedido.cdsClienteUF.AsString,[loCaseInsensitive]);
  fDMCadPedido.cdsPedidoDTEMISSAO.AsDateTime := DateEdit2.Date;
  if trim(edtPedidoCliente.Text) <> '' then
    fDMCadPedido.cdsPedidoPEDIDO_CLIENTE.AsString := edtPedidoCliente.Text
  else
    fDMCadPedido.cdsPedidoPEDIDO_CLIENTE.AsString := '';
  fDMCadPedido.cdsPedidoREORDEM.AsString := 'N';
  fDMCadPedido.cdsPedidoAMOSTRA.AsString := 'N';
  if fDMCadPedido.cdsClienteID_TRANSPORTADORA.AsInteger > 0 then
    fDMCadPedido.cdsPedidoID_TRANSPORTADORA.AsInteger := fDMCadPedido.cdsClienteID_TRANSPORTADORA.AsInteger;
  if fDMCadPedido.cdsClienteID_REDESPACHO.AsInteger > 0 then
    fDMCadPedido.cdsPedidoID_REDESPACHO.AsInteger := fDMCadPedido.cdsClienteID_REDESPACHO.AsInteger;
  if fDMCadPedido.cdsClienteID_CONDPGTO.AsInteger > 0 then
    fDMCadPedido.cdsPedidoID_CONDPGTO.AsInteger := fDMCadPedido.cdsClienteID_CONDPGTO.AsInteger;
  if fDMCadPedido.cdsClienteID_VENDEDOR.AsInteger > 0 then
    fDMCadPedido.cdsPedidoID_VENDEDOR.AsInteger := fDMCadPedido.cdsClienteID_VENDEDOR.AsInteger;
  if fDMCadPedido.cdsPedidoREORDEM.AsString <> 'S' then
  begin
    if fDMCadPedido.cdsPedidoID_VENDEDOR.AsInteger > 0 then
    begin
      if StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsClientePERC_COMISSAO.AsFloat)) > 0 then
        fDMCadPedido.cdsPedidoPERC_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsClientePERC_COMISSAO.AsFloat))
      else
        fDMCadPedido.cdsPedidoPERC_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsClientePERC_COMISSAO_VEND.AsFloat));
    end;
  end
  else
    fDMCadPedido.cdsPedidoPERC_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',0));
  fDMCadPedido.cdsPedidoTIPO_FRETE.AsString := fDMCadPedido.cdsClienteTIPO_FRETE.AsString;

  vIDAux       := 0;
  vID_Variacao := 0;
  fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger := RxDBLookupCombo1.KeyValue;
  if not ComboBox1.Visible then
    fDMCadPedido.cdsPedidoFINALIDADE.AsString := 'O'
  else
  begin
    case ComboBox1.ItemIndex of
      0: fDMCadPedido.cdsPedidoFINALIDADE.AsString := 'C';
      1: fDMCadPedido.cdsPedidoFINALIDADE.AsString := 'R';
      2: fDMCadPedido.cdsPedidoFINALIDADE.AsString := 'I';
      3: fDMCadPedido.cdsPedidoFINALIDADE.AsString := 'O';
    end;
  end;
  if DateEdit1.Date > 10 then
    fDMCadPedido.cdsPedidoDTENTREGA.AsDateTime  := DateEdit1.Date;
  fDMCadPedido.cdsPedidoPERC_TRANSF.AsFloat     := 0;
  fDMCadPedido.cdsPedidoLOCALENTREGA.AsString   := 'N';
  fDMCadPedido.cdsPedidoID_REGIMETRIB.AsInteger := fDMCadPedido.cdsFilialID_REGIME_TRIB.AsInteger;
  fDMCadPedido.cdsPedidoSIMPLES_FILIAL.AsString := fDMCadPedido.cdsFilialSIMPLES.AsString;
  fDMCadPedido.cdsPedidoNOME_CLIENTE.AsString   := fDMCadPedido.cdsClienteNOME.AsString;
  fDMCadPedido.cdsPedidoTIPO_REG.AsString       := 'P';
  fDMCadPedido.cdsPedidoFATURADO.AsString       := 'N';

  fDMCadPedido.cdsPedidoNUM_NOTA_ENT.AsInteger   := vNum_Nota_Ent;
  fDMCadPedido.cdsPedidoID_CLIENTE_ENT.AsInteger := vID_Cliente_Ent;
  fDMCadPedido.cdsPedidoSERIE_ENT.AsString       := vSerie_Ent;
end;

procedure TfrmRecebeXMLNovo_Ped.prc_Gravar_Pedido_Item;
var
  vID_VariacaoAux: Integer;
  vFinalidadeAux: String;
begin
  fDMCadPedido.prc_Inserir_Itens;
  fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger  := fDMRecebeXML.mItensNotaCodProduto_Ped.AsInteger;
  fDMCadPedido.cdsProduto.Locate('ID',fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);
  if fDMCadPedido.cdsProdutoID.AsInteger <> fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger then
  begin
    MessageDlg('*** Produto esta com problema, verificar!', mtError, [mbOk], 0);
    fDMCadPedido.cdsPedido_Itens.Cancel;
    exit;
  end;
  fDMCadPedido.cdsPedido_ItensID_COR.AsInteger := fDMRecebeXML.mItensNotaID_Cor.AsInteger;
  if fDMCadPedido.cdsPedido_ItensID_COR.AsInteger <= 0 then
    fDMCadPedido.cdsPedido_ItensID_COR.AsInteger := 0;
  vFinalidadeAux := fDMCadPedido.cdsPedidoFINALIDADE.AsString;
  if trim(vFinalidadeAux) = '' then
    vFinalidadeAux := 'O';
  if fDMRecebeXML.mItensNotaID_CFOP_Ped.AsInteger > 0 then
    fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger := fDMRecebeXML.mItensNotaID_CFOP_Ped.AsInteger
  else
  begin
    uCalculo_Pedido.prc_Posicionar_Regra_Empresa(fDMCadPedido,fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger,vFinalidadeAux);
    if (fDMCadPedido.vID_CFOP <= 0) and (fDMCadPedido.cdsPedidoID_CFOP.AsInteger > 0) then
      fDMCadPedido.vID_CFOP := fDMCadPedido.cdsPedidoID_CFOP.AsInteger;
    fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger := fDMCadPedido.vID_CFOP;
  end;
  vID_VariacaoAux := uUtil_Pedido.fnc_Buscar_Regra_CFOP(fDMCadPedido,fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger);
  if vID_VariacaoAux > 0 then
  begin
    fDMCadPedido.vID_Variacao := vID_VariacaoAux;
    fDMCadPedido.cdsPedido_ItensID_VARIACAO.AsInteger := vID_VariacaoAux;
  end;
  fDMCadPedido.cdsPedido_ItensENCERADO.AsString := 'N';
  prc_Mover_Dados;
  fDMCadPedido.cdsPedido_ItensDRAWBACK.AsString := 'N';;
  fDMCadPedido.cdsPedido_ItensPERC_COMISSAO.AsFloat := 0;
  if fDMCadPedido.cdsPedidoREORDEM.AsString <> 'S' then
  begin
    if (fDMCadPedido.cdsParametrosTIPO_COMISSAO_PROD.AsString = 'I') then
      fDMCadPedido.cdsPedido_ItensPERC_COMISSAO.AsFloat := fnc_Buscar_Comissao_Prod(fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,fDMCadPedido.cdsPedidoID_VENDEDOR.AsInteger);
  end;
  fDMCadPedido.cdsTab_CSTICMS.Locate('ID',fDMCadPedido.cdsPedido_ItensID_CSTICMS.AsInteger,([Locaseinsensitive]));
  fDMCadPedido.cdsTab_CSTIPI.Locate('ID',fDMCadPedido.cdsPedido_ItensID_CSTICMS.AsInteger,([Locaseinsensitive]));

  fDMCadPedido.cdsPedido_ItensTAMANHO.AsString      := fDMRecebeXML.mItensNotaTamanho.AsString;
  fDMCadPedido.cdsPedido_ItensREFERENCIA.AsString   := fDMCadPedido.cdsProdutoREFERENCIA.AsString;
  //fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString  := fDMCadPedido.cdsProdutoNOME.AsString;
  fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString  := fDMRecebeXML.mItensNotaNomeProduto_Pedido.AsString;
  if (fDMRecebeXML.mItensNotaGravar_Adic_Prod.AsString = 'S') and (trim(fDMRecebeXML.mItensNotaInfAdicionais.AsString) <> '') then
    fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString := fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString + ' ' + fDMRecebeXML.mItensNotaInfAdicionais.AsString;
  if (trim(fDMRecebeXML.qParametros_ProdCOD_NAFRENTE_NOME.AsString) <> 'S') then
    if fDMCadPedido.cdsProdutoUSA_GRADE.AsString = 'S' then
      fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString := fDMCadPedido.cdsProdutoNOME.AsString + ' TAM. ' + fDMCadPedido.cdsPedido_ItensTAMANHO.AsString;
  fDMCadPedido.cdsPedido_ItensUNIDADE.AsString      := fDMRecebeXML.mItensNotaUnidade_Pedido.AsString;
  fDMCadPedido.cdsPedido_ItensQTD.AsFloat           := fDMRecebeXML.mItensNotaQtd_Pedido.AsFloat;
  fDMCadPedido.cdsPedido_ItensQTD_FATURADO.AsFloat  := 0;
  fDMCadPedido.cdsPedido_ItensQTD_RESTANTE.AsFloat  := fDMCadPedido.cdsPedido_ItensQTD.AsFloat;
  fDMCadPedido.cdsPedido_ItensQTD_CANCELADO.AsFloat := 0;
  fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat  := 0;
  fDMCadPedido.cdsPedido_ItensCANCELADO.AsString    := 'N';
  if DateEdit1.Date > 10 then
    fDMCadPedido.cdsPedido_ItensDTENTREGA.AsDateTime  := DateEdit1.Date;
  fDMCadPedido.cdsPedido_ItensFATURADO.AsString     := 'N';
  fDMCadPedido.cdsPedido_ItensUNIDADE_PROD.AsString := fDMRecebeXML.mItensNotaUnidade_Pedido.AsString;
  
  if (fDMCadPedido.qParametros_PedUSA_UNIDADE_VENDA.AsString = 'S') and (fDMCadPedido.cdsPedido_ItensUNIDADE.AsString <> fDMCadPedido.cdsPedido_ItensUNIDADE_PROD.AsString) then
    fDMCadPedido.cdsPedido_ItensCONV_UNIDADE.AsFloat := StrToFloat(FormatFloat('0.0000',fnc_Retorna_Qtd_UConv(fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,
                                                                 fDMCadPedido.cdsPedido_ItensUNIDADE.AsString)));
  if fDMCadPedido.cdsPedido_ItensCONV_UNIDADE.AsFloat <= 0 then
    fDMCadPedido.cdsPedido_ItensCONV_UNIDADE.AsInteger := 1;

  fDMCadPedido.cdsPedido_ItensNUMOS.Clear;

  fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := fDMRecebeXML.mItensNotaVlr_Pedido_Unitario.AsFloat;

  fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat * fDMCadPedido.cdsPedido_ItensQTD.AsFloat));
  if fDMCadPedido.cdsParametrosUSA_LOTE.AsString <> 'S' then
    fDMCadPedido.cdsPedido_ItensGERAR_LOTE.AsString := 'N';
  if fDMCadPedido.cdsPedido_ItensDTENTREGA.AsDateTime > 10 then
    fDMCadPedido.cdsPedido_ItensDTPRODUCAO.AsDateTime := fDMCadPedido.cdsPedido_ItensDTENTREGA.AsDateTime;
  if fDMRecebeXML.mItensNotaItem_Cliente.AsInteger > 0 then
    fDMCadPedido.cdsPedido_ItensITEM_CLIENTE.AsInteger := fDMRecebeXML.mItensNotaItem_Cliente.AsInteger
  else
    fDMCadPedido.cdsPedido_ItensITEM_CLIENTE.AsInteger := fDMCadPedido.cdsPedido_ItensITEM.AsInteger;
  fDMCadPedido.cdsPedido_ItensNUMOS.AsString         := fDMRecebeXML.mItensNotaNum_OS.AsString;
  fDMCadPedido.cdsPedido_ItensOBS.Value              := fDMRecebeXML.mItensNotaOBS_Pedido.Value;
  fDMCadPedido.cdsPedido_ItensOBS_COMPLEMENTAR.AsString := fDMRecebeXML.mItensNotaOBS_Pedido_NFe.AsString;

  uCalculo_Pedido.prc_Calculo_GeralItem(fDMCadPedido,fDMCadPedido.cdsPedido_ItensQTD.AsFloat,fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat,
                                        fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat,fDMCadPedido.cdsPedido_ItensPERC_DESCONTO.AsFloat,
                                        fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat);

  fDMCadPedido.cdsPedido_Itens.Post;
end;

procedure TfrmRecebeXMLNovo_Ped.prc_Mover_Dados;
var
  vID_ICMS, vID_IPI: Integer;
  vPrecoAux: Real;
begin
  vID_ICMS := 0;
  vID_IPI  := 0;

  if not(fDMCadPedido.cdsCFOP.Locate('ID',fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger,[loCaseInsensitive])) then
    exit;

  if fDMCadPedido.cdsPedido_ItensID_VARIACAO.AsInteger > 0 then
  begin
    if fDMCadPedido.cdsCFOP_Variacao.Locate('ITEM',fDMCadPedido.cdsPedido_ItensID_VARIACAO.AsInteger,[loCaseInsensitive]) then
    begin
      vID_IPI  := fDMCadPedido.cdsCFOP_VariacaoID_CSTIPI.AsInteger;
      vID_ICMS := fDMCadPedido.cdsCFOP_VariacaoID_CSTICMS.AsInteger;
    end;
  end
  else
  begin
    vID_IPI  := fDMCadPedido.cdsCFOPID_CSTIPI.AsInteger;
    vID_ICMS := fDMCadPedido.cdsCFOPID_CSTICMS.AsInteger;
  end;

  if vID_ICMS > 0 then
    fDMCadPedido.cdsPedido_ItensID_CSTICMS.AsInteger := vID_ICMS
  else
    prc_Buscar_Imposto('CST','ICMS');
  if vID_IPI > 0 then
    fDMCadPedido.cdsPedido_ItensID_CSTIPI.AsInteger := vID_IPI
  else
    prc_Buscar_Imposto('CST','IPI');

  if (fDMCadPedido.cdsFilialSIMPLES.AsString = 'S') or (fDMCadPedido.cdsCFOPGERAR_ICMS.AsString <> 'S') then
    fDMCadPedido.cdsPedido_ItensPERC_ICMS.AsFloat := 0
  else
  if fDMCadPedido.cdsCFOPGERAR_ICMS.AsString = 'S' then
    fDMCadPedido.cdsPedido_ItensPERC_ICMS.AsFloat := fDMCadPedido.cdsUFPERC_ICMS.AsFloat;

  if (fDMCadPedido.cdsCFOPGERAR_IPI.AsString = 'S') or (fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger <= 0) then
    fDMCadPedido.cdsPedido_ItensPERC_IPI.AsFloat := fDMCadPedido.cdsProdutoPERC_IPI.AsFloat
  else
  if (fDMCadPedido.cdsCFOPGERAR_IPI.AsString <> 'S') and (fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger > 0) then
    fDMCadPedido.cdsPedido_ItensPERC_IPI.AsFloat := 0;
  vPrecoAux := 0;
  if StrToFloat(FormatFloat('0.00000',vPreco_Pos)) > 0 then
    vPrecoAux := StrToFloat(FormatFloat('0.00000',vPreco_Pos))
  else
  if StrToFloat(FormatFloat('0.0000',vPrecoAux)) > 0 then
    fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.000000',vPrecoAux))
  else
    fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := fDMCadPedido.cdsProdutoPRECO_VENDA.AsFloat;

  fDMCadPedido.cdsPedido_ItensCODCFOP.AsString := fDMCadPedido.cdsCFOPCODCFOP.AsString;
  fDMCadPedido.cdsPedido_ItensCOD_CST.AsString := fDMCadPedido.cdsTab_CSTICMSCOD_CST.AsString;
  fDMCadPedido.cdsPedido_ItensCOD_IPI.AsString := fDMCadPedido.cdsTab_CSTIPICOD_IPI.AsString;
  if (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsProdutoPERC_REDUCAOICMS.AsFloat)) > 0) and
     (fDMCadPedido.cdsFilialSIMPLES.AsString <> 'S') and
     (fDMCadPedido.cdsTab_CSTICMSCOD_CST.AsString <> '00') then
    fDMCadPedido.cdsPedido_ItensPERC_TRIBICMS.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsProdutoPERC_REDUCAOICMS.AsFloat))
  else
    fDMCadPedido.cdsPedido_ItensPERC_TRIBICMS.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsTab_CSTICMSPERCENTUAL.AsFloat));

  fDMCadPedido.cdsPedido_ItensID_NCM.AsInteger := fDMCadPedido.cdsProdutoID_NCM.AsInteger;
end;

procedure TfrmRecebeXMLNovo_Ped.prc_Buscar_Imposto(Auxiliar, Nome: String);
begin
  if fDMCadPedido.cdsCFOP.FieldByName('ID_'+Auxiliar+Nome).AsInteger > 0 then
  begin
    fDMCadPedido.cdsPedido_Itens.FieldByName('ID_'+Auxiliar+Nome).AsInteger := fDMCadPedido.cdsCFOP.FieldByName('ID_'+Auxiliar+Nome).AsInteger;
    if trim(Auxiliar) = '' then
    begin
      fDMCadPedido.cdsPedido_Itens.FieldByName('PERC_'+Nome).AsFloat  := fDMCadPedido.cdsCFOP.FieldByName('PERC_'+Nome).AsFloat;
      fDMCadPedido.cdsPedido_Itens.FieldByName('TIPO_'+Nome).AsString := fDMCadPedido.cdsCFOP.FieldByName('TIPO_'+Nome).AsString;
    end;
  end
  else
  if fDMCadPedido.cdsFilial.FieldByName('ID_'+Auxiliar+Nome).AsInteger > 0 then
  begin
    fDMCadPedido.cdsPedido_Itens.FieldByName('ID_'+Auxiliar+Nome).AsInteger := fDMCadPedido.cdsFilial.FieldByName('ID_'+Auxiliar+Nome).AsInteger;
    if trim(Auxiliar) = '' then
    begin
      fDMCadPedido.cdsPedido_Itens.FieldByName('PERC_'+Nome).AsFloat := fDMCadPedido.cdsFilial.FieldByName('PERC_'+Nome).AsFloat;
      fDMCadPedido.cdsPedido_Itens.FieldByName('TIPO_'+Nome).AsString := fDMCadPedido.cdsFilial.FieldByName('TIPO_'+Nome).AsString;
    end;
  end;
end;

procedure TfrmRecebeXMLNovo_Ped.RxDBLookupCombo1Change(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    ComboBox1.Visible := (SQLLocate('OPERACAO_NOTA','ID','PEDIR_FINALIDADE',IntToStr(RxDBLookupCombo1.KeyValue)) = 'S');
  Label1.Visible := ComboBox1.Visible;
end;

procedure TfrmRecebeXMLNovo_Ped.SMDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F3) and not(fDMRecebeXML.mItensNota.IsEmpty) then
  begin
    vCodProduto_Pos := fDMRecebeXML.mItensNotaCodProduto_Ped.AsInteger;
    frmSel_Produto := TfrmSel_Produto.Create(Self);
    try
      frmSel_Produto.vTipo_Prod := 'P';
      frmSel_Produto.ShowModal;
      if vCodProduto_Pos <> fDMRecebeXML.mItensNotaCodProduto_Ped.AsInteger then
      begin
        fDMRecebeXML.mItensNota.Edit;
        fDMRecebeXML.mItensNotaCodProduto_Ped.AsInteger    := vCodProduto_Pos;
        fDMRecebeXML.mItensNotaNomeProduto_Pedido.AsString := vNome_Pos;
        fDMRecebeXML.mItensNotaVlr_Pedido_Unitario.AsFloat := vPreco_Pos;
        fDMRecebeXML.mItensNota.Post;
      end;
    finally
      FreeAndNil(frmSel_Produto);
    end;
  end;
end;

procedure TfrmRecebeXMLNovo_Ped.prc_Gravar_Produto;
var
  vAux: Integer;
  vVlrAux: Real;
begin
  if not fDMRecebeXML.cdsProduto.Active then
    fDMRecebeXML.prc_Abrir_Produto(-1);
  vAux := dmDatabase.ProximaSequencia('PRODUTO',0);
  vAux := vAux;
  try
    fDMRecebeXML.cdsProduto.Insert;
    fDMRecebeXML.cdsProdutoID.AsInteger       := vAux;
    if fDMRecebeXML.qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S' then
      fDMRecebeXML.cdsProdutoFILIAL.AsInteger := fDMRecebeXML.vFilial_Local;
    if fDMRecebeXML.mItensNotaID_SERVICO_INT.AsString <> '' then
      fDMRecebeXML.cdsProdutoNOME.AsString := fDMRecebeXML.mItensNotaNOME_SERVICO_INT.AsString;
    fDMRecebeXML.cdsProdutoNOME.AsString   := Trim(fDMRecebeXML.cdsProdutoNOME.AsString + ' ' + UpperCase(fDMRecebeXML.mItensNotaNomeProduto_Pedido.AsString));
    //15/01/2018 para concatenar os dados adicionais no nome do produto  (Beira Rio)
    if (fDMRecebeXML.mItensNotaGravar_Adic_Prod.AsString = 'S') and (trim(fDMRecebeXML.mItensNotaInfAdicionais.AsString) <> '') then
      fDMRecebeXML.cdsProdutoNOME.AsString := fDMRecebeXML.cdsProdutoNOME.AsString + ' ' + fDMRecebeXML.mItensNotaInfAdicionais.AsString;
    //*******************
    fDMRecebeXML.cdsProdutoUNIDADE.AsString  := fDMRecebeXML.mItensNotaUnidade_Pedido.AsString;
    fDMRecebeXML.cdsProdutoID_NCM.AsInteger  := fDMRecebeXML.mItensNotaID_NCM.AsInteger;
    fDMRecebeXML.cdsProdutoINATIVO.AsString  := 'N';
    fDMRecebeXML.cdsProdutoPERC_IPI.AsFloat  := fDMRecebeXML.mItensNotaAliqIPI.AsFloat;
    fDMRecebeXML.cdsProdutoTIPO_REG.AsString := 'P';
    //04/05/2019
    //Ver aqui
    //prc_Gravar_Tipo_Sped_Prod;
    fDMRecebeXML.cdsProdutoSPED_TIPO_ITEM.AsString := fDMRecebeXML.mItensNotaSped_Tipo.AsString;

    if (fDMRecebeXML.qParametros_RecXMLUSA_REF_SEQUENCIAL.AsString = 'S') and (trim(fDMRecebeXML.mItensNotaReferencia_Int.AsString) <> '') then
    begin
      fDMRecebeXML.cdsProdutoREFERENCIA.AsString      := fDMRecebeXML.mItensNotaReferencia_Int.AsString;
      fDMRecebeXML.cdsProdutoREFERENCIA_SEQ.AsInteger := StrToInt(fDMRecebeXML.mItensNotaReferencia_Int.AsString);
    end
    else
    if fDMRecebeXML.qParametrosGRAVAR_NA_REF_CODPRODFORN.AsString = 'S' then
      fDMRecebeXML.cdsProdutoREFERENCIA.AsString := fDMRecebeXML.mItensNotaCodProduto.AsString
    else
    begin
      fDMRecebeXML.cdsProdutoREFERENCIA.AsString := fDMRecebeXML.cdsProdutoTIPO_REG.AsString + '.' + FormatFloat('000000',vAux);
      fDMRecebeXML.cdsProdutoREFERENCIA_SEQ.AsInteger := vAux;
    end;
    fDMRecebeXML.cdsProdutoPOSSE_MATERIAL.AsString  := 'E';
    fDMRecebeXML.cdsProdutoESTOQUE.AsString         := 'S';
    fDMRecebeXML.cdsProdutoMATERIAL_OUTROS.AsString := 'M';
    fDMRecebeXML.cdsProdutoUSUARIO.AsString         := 'NFeXML';
    fDMRecebeXML.cdsProdutoDTCAD.AsDateTime         := Date;
    fDMRecebeXML.cdsProdutoHRCAD.AsDateTime         := Now;
    fDMRecebeXML.cdsProdutoORIGEM_PROD.AsString     := fDMRecebeXML.mItensNotaOrigem.AsString;
    fDMRecebeXML.cdsProdutoRMS.AsString             := fDMRecebeXML.mItensNotaRegMS.AsString;

    //16/02/2017
    if (fDMRecebeXML.cdsProdutoORIGEM_PROD.AsString = '1') or (fDMRecebeXML.cdsProdutoORIGEM_PROD.AsString = '2') or
       (fDMRecebeXML.cdsProdutoORIGEM_PROD.AsString = '3') or (fDMRecebeXML.cdsProdutoORIGEM_PROD.AsString = '8') then
      fDMRecebeXML.cdsProdutoUSA_PERC_IMP_INTERESTADUAL.AsString := 'S'
    else
      fDMRecebeXML.cdsProdutoUSA_PERC_IMP_INTERESTADUAL.AsString := 'N';
    //***********

    fDMRecebeXML.cdsProdutoID_FORNECEDOR.AsInteger  := fDMRecebeXML.vCodFornecedor_XML;
    //12/07/2018
    if (fDMRecebeXML.mItensNotaCodBarra2.AsString <> '') and (fDMRecebeXML.mItensNotaCodBarra.AsString <> fDMRecebeXML.mItensNotaCodBarra2.AsString) then
      fDMRecebeXML.cdsProdutoCOD_BARRA.AsString := fDMRecebeXML.mItensNotaCodBarra2.AsString
    else
      fDMRecebeXML.cdsProdutoCOD_BARRA.AsString := fDMRecebeXML.mItensNotaCodBarra.AsString;
    if fDMRecebeXML.mItensNotaID_SitTrib_CF.AsInteger > 0 then
      fDMRecebeXML.cdsProdutoID_SITTRIB_CF.AsInteger := fDMRecebeXML.mItensNotaID_SitTrib_CF.AsInteger
    else
      fDMRecebeXML.cdsProdutoID_SITTRIB_CF.Clear;
    //fDMRecebeXML.cdsProdutoPERC_MARGEMLUCRO.AsFloat := StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaPerc_Margem.AsFloat));
    //fDMRecebeXML.cdsProdutoPRECO_CUSTO.AsFloat       := fnc_move_preco_custo(fDMRecebeXML);
    //fDMRecebeXML.cdsProdutoPRECO_CUSTO_TOTAL.AsFloat := StrToFloat(FormatFloat('0.0000',fnc_move_preco_custo_Total(fDMRecebeXML)));
    //fDMRecebeXML.cdsProdutoPRECO_VENDA.AsFloat := StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaVlr_Venda.AsFloat));
    fDMRecebeXML.cdsProdutoDT_ALTPRECO.AsDateTime    := Date;
    fDMRecebeXML.cdsProdutoPRECO_VENDA.AsFloat := StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaVlr_Pedido_Unitario.AsFloat));

    if (fDMRecebeXML.mItensNotaTipoVenda.AsString = 'C') or (fDMRecebeXML.mItensNotaTipoVenda.AsString = 'R') or (fDMRecebeXML.mItensNotaTipoVenda.AsString = 'I') then
      fDMRecebeXML.cdsProdutoTIPO_VENDA.AsString := fDMRecebeXML.mItensNotaTipoVenda.AsString
    else
    begin
      if fDMRecebeXML.cdsCFOPCODCFOP.AsString <> fDMRecebeXML.mItensNotaCFOPInterno.AsString then
        fDMRecebeXML.cdsCFOP.Locate('CODCFOP',fDMRecebeXML.mItensNotaCFOPInterno.AsString, ([LocaseInsensitive]));
      if fDMRecebeXML.cdsCFOPTIPO_IND_VEN.AsString = 'I' then
        fDMRecebeXML.cdsProdutoTIPO_VENDA.AsString := 'V'
      else
      if fDMRecebeXML.cdsCFOPTIPO_IND_VEN.AsString = 'V' then
        fDMRecebeXML.cdsProdutoTIPO_VENDA.AsString := 'R';
    end;

    if fDMRecebeXML.mItensNotaID_CFOP_NFCe.AsInteger > 0 then
      fDMRecebeXML.cdsProdutoID_CFOP_NFCE.AsInteger := fDMRecebeXML.mItensNotaID_CFOP_NFCe.AsInteger;
    if fDMRecebeXML.mItensNotaID_Grupo.AsInteger > 0 then
      fDMRecebeXML.cdsProdutoID_GRUPO.AsInteger  := fDMRecebeXML.mItensNotaID_Grupo.AsInteger;
    if not fDMRecebeXML.mItensNotaID_MARCA.IsNull then
      fDMRecebeXML.cdsProdutoID_MARCA.AsInteger := fDMRecebeXML.mItensNotaID_MARCA.AsInteger;

    if fDMRecebeXML.mItensNotaID_ContaOrcamento.AsInteger > 0 then
      fDMRecebeXML.cdsProdutoID_CONTA_ORCAMENTO.AsInteger := fDMRecebeXML.mItensNotaID_ContaOrcamento.AsInteger;
    fDMRecebeXML.cdsProdutoPOSSE_MATERIAL.AsString := fDMRecebeXML.mItensNotaPosse_Material.AsString;
    if trim(fDMRecebeXML.mItensNotaSped_Tipo.AsString) <> '' then
      fDMRecebeXML.cdsProdutoSPED_TIPO_ITEM.AsString := fDMRecebeXML.mItensNotaSped_Tipo.AsString;

    //10/10/2017
    if fDMRecebeXML.mItensNotaGerar_CLiquido.AsBoolean then
      fDMRecebeXML.cdsProdutoUSA_CLIQ.AsString := 'S'
    else
      fDMRecebeXML.cdsProdutoUSA_CLIQ.AsString := 'N';
    //***************
    fDMRecebeXML.cdsProdutoESTOQUE.AsString := 'S';
    //22/06/2019
    if (fDMRecebeXML.qParametros_LoteLOTE_TEXTIL.AsString = 'S') and (fDMRecebeXML.cdsProdutoTIPO_REG.AsString = 'S') then
      fDMRecebeXML.cdsProdutoESTOQUE.AsString := 'S'
    else
    if (fDMRecebeXML.mItensNotaGerar_Estoque.AsString <> 'S') then
      fDMRecebeXML.cdsProdutoESTOQUE.AsString := 'N';

    if (trim(fDMRecebeXML.mItensNotaANP_PRODUTO.AsString) <> '') then
    begin
      fDMRecebeXML.cdsProdutoANP_ID.AsInteger := uUtilPadrao.fnc_Gravar_CProd_ANP(fDMRecebeXML.mItensNotaANP_PRODUTO.AsString,fDMRecebeXML.mItensNotaANP_DESCRICAO.AsString);
      if fDMRecebeXML.cdsProdutoANP_ID.AsInteger <= 0 then
        fDMRecebeXML.cdsProdutoANP_ID.Clear;
    end;
    if fDMRecebeXML.mItensNotaID_Tipo_Material.AsInteger > 0 then
      fDMRecebeXML.cdsProdutoID_TIPO_MATERIAL.AsInteger := fDMRecebeXML.mItensNotaID_Tipo_Material.AsInteger;

    if fDMRecebeXML.qParametrosUSA_PRODUTO_CLIENTE.AsString = 'S' then
      fDMRecebeXML.cdsProdutoID_CLIENTE.AsInteger := fDMRecebeXML.vCodFornecedor_XML;

    if fDMRecebeXML.mItensNotaID_SERVICO_INT.AsInteger > 0 then
      fDMRecebeXML.cdsProdutoID_SERVICO_INT.AsInteger := fDMRecebeXML.mItensNotaID_SERVICO_INT.AsInteger; 

    fDMRecebeXML.cdsProduto.Post;
    fDMRecebeXML.cdsProduto.ApplyUpdates(0);
  finally
    fDMRecebeXML.mItensNota.Edit;
    fDMRecebeXML.mItensNotaCodProduto_Ped.AsInteger := vAux;
    fDMRecebeXML.mItensNota.Post;
  end;
end;

procedure TfrmRecebeXMLNovo_Ped.NxButton1Click(Sender: TObject);
var
  i: Integer;
  vTexto: String;
begin
  //if (trim(edtComplemento.Text) = '') and (ceVlrUnitario.Value <= 0) then
  //begin
    //MessageDlg('*** Não foi informado complemento do nome e nem o valor unitário!', mtError, [mbOk], 0);
    //exit;
  //end;
  fDMRecebeXML.mItensNota.First;
  while not fDMRecebeXML.mItensNota.Eof do
  begin
    fDMRecebeXML.mItensNota.Edit;
    if (edtComplemento.Text <> '') and (edtComplemento.Enabled) then
      fDMRecebeXML.mItensNotaNomeProduto_Pedido.AsString := fDMRecebeXML.mItensNotaNomeProduto.AsString + ' ' + edtComplemento.Text;
    if (ceCodFixoCliente.Enabled) and (ceCodFixoCliente.AsInteger > 0) then
    begin
      if (vCodFixoAnt <> ceCodFixoCliente.AsInteger) then
      begin
        i:= posex(IntToStr(vCodFixoAnt),fDMRecebeXML.mItensNotaNomeProduto_Pedido.AsString);
        if i > 0 then
        begin
          vTexto := fDMRecebeXML.mItensNotaNomeProduto_Pedido.AsString;
          delete(vTexto,i,Length(IntToStr(vCodFixoAnt))+1);
          fDMRecebeXML.mItensNotaNomeProduto_Pedido.AsString := vTexto;
        end;
      end;
      if (ceCodFixoCliente.AsInteger > 0) and (posex(ceCodFixoCliente.Text,fDMRecebeXML.mItensNotaNomeProduto_Pedido.AsString) <= 0)  then
        fDMRecebeXML.mItensNotaNomeProduto_Pedido.AsString := ceCodFixoCliente.Text + '-' + fDMRecebeXML.mItensNotaNomeProduto_Pedido.AsString;
    end;
    if ceVlrUnitario.Value > 0 then
      fDMRecebeXML.mItensNotaVlr_Pedido_Unitario.AsFloat := ceVlrUnitario.Value;
    fDMRecebeXML.mItensNotaNum_OS.AsString         := edtOS.Text;
    fDMRecebeXML.mItensNotaOBS_Pedido.AsString     := edtOBS.Text;
    fDMRecebeXML.mItensNotaOBS_Pedido_NFe.AsString := edtOBSNFe.Text;
    fDMRecebeXML.mItensNota.Post;
    fDMRecebeXML.mItensNota.Next;
  end;
end;

procedure TfrmRecebeXMLNovo_Ped.ceCodFixoClienteEnter(Sender: TObject);
begin
  vCodFixoAnt := ceCodFixoCliente.AsInteger;
end;

end.
