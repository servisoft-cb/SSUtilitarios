unit URecebeXML_ConsOC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, RxLookup, StdCtrls, Buttons,
  UDMRecebeXML, Grids, DBGrids, SMDBGrid, DB, UCadNotaFiscal_Itens, SqlExpr,
  Mask, ToolEdit, CurrEdit, NxEdit, RzPanel, NxCollection;

type
  TfrmRecebeXML_ConsOC = class(TForm)
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Panel3: TPanel;
    Label4: TLabel;
    Panel4: TPanel;
    Label5: TLabel;
    ceNumOC: TCurrencyEdit;
    ckAssociar: TNxCheckBox;
    gbxVendedor: TRzGroupBox;
    SMDBGrid2: TSMDBGrid;
    Splitter1: TSplitter;
    Label6: TLabel;
    btnAssociar: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure ceNumOCKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAssociarClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
    procedure prc_Consultar_Pedido;
    function fnc_Verificar_OC_Pendente_Aprov(ID_Cliente: Integer): Integer;

  public
    { Public declarations }
    vCodCliente: Integer;

    fDMRecebeXML: TDMRecebeXML;
    ffrmCadNotaFiscal_Itens: TfrmCadNotaFiscal_Itens;
  end;

var
  frmRecebeXML_ConsOC: TfrmRecebeXML_ConsOC;

implementation

uses rsDBUtils, uUtilPadrao, DmdDatabase, uUtil_RecebeXML;

{$R *.dfm}

function TfrmRecebeXML_ConsOC.fnc_Verificar_OC_Pendente_Aprov(ID_Cliente: Integer): Integer;
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT COUNT(1) CONTADOR FROM PEDIDO P '
                       + 'WHERE P.tipo_reg = ' + QuotedStr('C')
                       + '  AND P.id_cliente = :ID_CLIENTE '
                       + '  AND P.aprovado_ped = ' + QuotedStr('P');
    sds.ParamByName('ID_CLIENTE').AsInteger := ID_Cliente;
    sds.Open;

    Result := sds.FieldByName('CONTADOR').AsInteger;
    sds.Close;

  finally
    FreeAndNil(sds);
  end;
end;

procedure TfrmRecebeXML_ConsOC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fDMRecebeXML.vNum_Pedido := '';
  Action := Cafree;
end;

procedure TfrmRecebeXML_ConsOC.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMRecebeXML);
  Panel3.Visible := False;
  if fDMRecebeXML.vNumOC_Pesquisa <= 0 then
  begin
    prc_Consultar_Pedido;
    ceNumOC.SetFocus;
  end
  else
    SMDBGrid1.SetFocus;
  Panel1.Visible := (vCodCliente <= 0);
  ckAssociar.Visible  := (ceNumOC.AsInteger > 0);
  btnAssociar.Visible := (ceNumOC.AsInteger > 0);
end;

procedure TfrmRecebeXML_ConsOC.prc_Consultar_Pedido;
var
  vQtdAux: Integer;
begin
  SMDBGrid1.DisableScroll;
  fDMRecebeXML.cdsOC.Close;
  fDMRecebeXML.sdsOC.CommandText := fDMRecebeXML.ctOC;
  //if vCodCliente > 0 then
    fDMRecebeXML.sdsOC.CommandText := fDMRecebeXML.sdsOC.CommandText + ' AND PE.ID_CLIENTE = ' + IntToStr(vCodCliente);
  if (fDMRecebeXML.qParametrosUSA_APROVACAO_OC_FORN.AsString = 'S') then
    fDMRecebeXML.sdsOC.CommandText := fDMRecebeXML.sdsOC.CommandText + ' AND PE.APROVADO_PED = ' + QuotedStr('A');
  if ceNumOC.AsInteger > 0 then
    fDMRecebeXML.sdsOC.CommandText := fDMRecebeXML.sdsOC.CommandText + ' AND PE.NUM_PEDIDO = ' + IntToStr(ceNumOC.AsInteger);
  fDMRecebeXML.cdsOC.Open;
  fDMRecebeXML.cdsOC.First;
  SMDBGrid1.EnableScroll;

  if fDMRecebeXML.qParametrosUSA_APROVACAO_OC_FORN.AsString = 'S' then
  begin
    vQtdAux := fnc_Verificar_OC_Pendente_Aprov(vCodCliente);
    Panel3.Visible := (vQtdAux > 0);
    Label4.Caption := 'Qtd. de OC Pendente de aprovação: ' + IntToStr(vQtdAux);
  end;
end;

procedure TfrmRecebeXML_ConsOC.SMDBGrid1DblClick(Sender: TObject);
var
  vItemAux : Integer;
begin
  if not(fDMRecebeXML.cdsOC.Active) or (fDMRecebeXML.cdsOC.IsEmpty) or (fDMRecebeXML.cdsOCID.AsInteger <= 0) then
    exit;
  vItemAux := 0;
  if (fDMRecebeXML.mItensNotaItemPedido.AsInteger > 0) then
    vItemAux := fDMRecebeXML.mItensNotaItemPedido.AsInteger;
  fDMRecebeXML.prc_Move_Dados_Da_OC;
  uUtil_RecebeXML.prc_Ajuste_Prod_Pela_OC(fDMRecebeXML,False);
  fDMRecebeXML.cdsOC.Edit;
  fDMRecebeXML.cdsOCITEM_NOTA.AsInteger := fDMRecebeXML.mItensNotaItem.AsInteger;
  fDMRecebeXML.cdsOC.Post;
  if vItemAux > 0 then
  begin
    if fDMRecebeXML.cdsOC.Locate('ITEM',vItemAux, ([LocaseInsensitive])) then
    begin
      fDMRecebeXML.cdsOC.Edit;
      fDMRecebeXML.cdsOCITEM_NOTA.AsInteger := 0;
      fDMRecebeXML.cdsOC.Post;
    end;
  end;
end;

procedure TfrmRecebeXML_ConsOC.ceNumOCKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    prc_Consultar_Pedido;
    fDMRecebeXML.vNumOC_Pesquisa := ceNumOC.AsInteger;
    ckAssociar.Visible  := (ceNumOC.AsInteger > 0);
    btnAssociar.Visible := (ceNumOC.AsInteger > 0);
  end;
end;

procedure TfrmRecebeXML_ConsOC.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
  begin
    fDMRecebeXML.vNum_Pedido  := '';
    Close;
  end
  else
  if (Key = Vk_F3) then
    fDMRecebeXML.mItensNota.Next;
end;

procedure TfrmRecebeXML_ConsOC.btnAssociarClick(Sender: TObject);
begin
  if ckAssociar.Checked then
  begin
    fDMRecebeXML.mItensNota.First;
    while not fDMRecebeXML.mItensNota.Eof do
    begin
      if ((trim(fDMRecebeXML.mItensNotaNumPedido.AsString) = '') or (trim(fDMRecebeXML.mItensNotaNumPedido.AsString) = '0'))
        and (fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger > 0) then
      begin
        if fDMRecebeXML.cdsOC.Locate('ID_PRODUTO',fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger, ([LocaseInsensitive])) then
        begin
          fDMRecebeXML.prc_Move_Dados_Da_OC;
          uUtil_RecebeXML.prc_Ajuste_Prod_Pela_OC(fDMRecebeXML,False);
          fDMRecebeXML.cdsOC.Edit;
          fDMRecebeXML.cdsOCITEM_NOTA.AsInteger := fDMRecebeXML.mItensNotaItem.AsInteger;
          fDMRecebeXML.cdsOC.Post;
        end;
      end;
      fDMRecebeXML.mItensNota.Next;
    end;
  end;
end;

procedure TfrmRecebeXML_ConsOC.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMRecebeXML.cdsOCITEM_NOTA.AsInteger > 0 then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end;
end;

procedure TfrmRecebeXML_ConsOC.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMRecebeXML.mItensNotaItemPedido.AsInteger > 0 then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end;
end;

end.
