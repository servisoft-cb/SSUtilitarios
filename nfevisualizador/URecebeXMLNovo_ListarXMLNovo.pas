unit URecebeXMLNovo_ListarXML;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, Grids, DBGrids, SMDBGrid, ExtCtrls,UDMRecebeXMLNovo_ListarXML,
  DBCtrls, NxCollection,DB, RzPanel, NxEdit, RxLookup;

type
  TfrmRecebeXMLNovo_ListarXML = class(TForm)
    pnlFiltro: TPanel;
    Panel1: TPanel;
    lblDiretorio: TLabel;
    edtDiretorio: TDirectoryEdit;
    lblLeitor: TLabel;
    edtProcuraChave: TEdit;
    gridChave: TSMDBGrid;
    Panel2: TPanel;
    SMDBGrid1: TSMDBGrid;
    Label1: TLabel;
    btnAtualizar: TNxButton;
    Shape1: TShape;
    Label2: TLabel;
    NxFlipPanel1: TNxFlipPanel;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label16: TLabel;
    Label18: TLabel;
    dtInicial: TNxDatePicker;
    cbxOpcao: TNxComboBox;
    NxButton1: TNxButton;
    Shape2: TShape;
    Label4: TLabel;
    Label5: TLabel;
    Shape3: TShape;
    btnApagarImportados: TButton;
    Shape4: TShape;
    Label6: TLabel;
    Label7: TLabel;
    Shape5: TShape;
    procedure FormCreate(Sender: TObject);
    procedure edtDiretorioChange(Sender: TObject);
    procedure gridChaveCellClick(Column: TColumn);
    procedure edtProcuraChaveKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridChaveDblClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure gridChaveGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnApagarImportadosClick(Sender: TObject);
  private
    { Private declarations }
    fDMRecebeXMLNovo_ListarXML : TDMRecebeXMLNovo_ListarXML;
    procedure ListarArquivos(Diretorio : string);
    Procedure prc_Scroll(DataSet: TDataSet);
    procedure CarregaComponentes;
    procedure prc_Carrega_Principal2(i : integer; vArq : string);
    procedure prc_Verifica_Importados;
    procedure prc_Consulta_Manifesto;
  public
    { Public declarations }
    vArqSelecionado : string;
  end;

var
  frmRecebeXMLNovo_ListarXML: TfrmRecebeXMLNovo_ListarXML;

implementation

uses
  rsDBUtils, DBClient, pcnNFe, ACBrNFeNotasFiscais, uUtilPadrao;

{$R *.dfm}

procedure TfrmRecebeXMLNovo_ListarXML.FormCreate(Sender: TObject);
begin
  dtInicial.Date := Date - 30;

  fDMRecebeXMLNovo_ListarXML := TDMRecebeXMLNovo_ListarXML.Create(Self);
  oDBUtils.SetDataSourceProperties(Self,fDMRecebeXMLNovo_ListarXML);
  edtDiretorio.InitialDir := fDMRecebeXMLNovo_ListarXML.qParametrosENDXML_NOTAENTRADA.AsString;
  edtDiretorio.Text := fDMRecebeXMLNovo_ListarXML.qParametrosENDXML_NOTAENTRADA.AsString;
  ListarArquivos(edtDiretorio.Text);
end;

procedure TfrmRecebeXMLNovo_ListarXML.edtDiretorioChange(
  Sender: TObject);
begin
  ListarArquivos(edtDiretorio.Text);
end;

procedure TfrmRecebeXMLNovo_ListarXML.ListarArquivos(Diretorio: string);
var
  aSr : TSearchRec;
  i : integer;
begin
  {fDMRecebeXMLNovo_ListarXML.cdsNFe.Close;
  fDMRecebeXMLNovo_ListarXML.cdsNFe.CreateDataSet;
  fDMRecebeXMLNovo_ListarXML.cdsNFe.DisableControls;
  fDMRecebeXMLNovo_ListarXML.cdsNFe.AfterScroll := nil;}
  fDMRecebeXMLNovo_ListarXML.cdsConsManifesto.AfterScroll := nil;
  prc_Consulta_Manifesto;

  i := 1;
  if FindFirst(Diretorio + '\' + '*.xml', faAnyFile, aSr) = 0 then
  begin
    repeat
      if (aSr.Attr > 0) then
      begin
        if (aSr.Name <> '.') and (aSr.Name <> '..') and (Length(aSr.Name) > 3) then
        begin
          try
            prc_Carrega_Principal2(i,aSr.Name);
          except
          end;
          i := i + 1;
        end;
      end;
    until FindNext(aSr) > 0;
    FindClose(aSr);
  end;

  //fDMRecebeXMLNovo_ListarXML.cdsNFe.EnableControls;
  //fDMRecebeXMLNovo_ListarXML.cdsNFe.AfterScroll := prc_Scroll;

  fDMRecebeXMLNovo_ListarXML.cdsConsManifesto.AfterScroll := prc_Scroll;

end;

procedure TfrmRecebeXMLNovo_ListarXML.gridChaveCellClick(Column: TColumn);
begin
  if fDMRecebeXMLNovo_ListarXML.cdsConsManifestoNOME_ARQUIVO.AsString = EmptyStr then
    Exit;

  fDMRecebeXMLNovo_ListarXML.NFe.NotasFiscais.Clear;
  //fDMRecebeXMLNovo_ListarXML.NFe.NotasFiscais.LoadFromFile(edtDiretorio.Text + '\' + fDMRecebeXMLNovo_ListarXML.cdsNFevArq.AsString);
  fDMRecebeXMLNovo_ListarXML.NFe.NotasFiscais.LoadFromFile(edtDiretorio.Text + '\' + fDMRecebeXMLNovo_ListarXML.cdsConsManifestoNOME_ARQUIVO.AsString);
  CarregaComponentes;
end;

procedure TfrmRecebeXMLNovo_ListarXML.CarregaComponentes;
var
  i : integer;
begin
  with fDMRecebeXMLNovo_ListarXML do
  begin
    cdsNFeItens.Close;
    cdsNFeItens.CreateDataSet;
    with NFe.NotasFiscais.Items[0].NFe.Det do
    begin
      for i := 0 to Count - 1 do
      begin
        cdsNFeItens.Append;
        cdsNFeItensEAN.Value          := Items[i].Prod.cEAN;
        cdsNFeItensxProd.Value        := Items[i].Prod.xProd;
        cdsNFeItensUnidade.Value      := Items[i].Prod.uCom;
        cdsNFeItensQtd.Value          := Items[i].Prod.qCom;
        cdsNFeItensVlrUnitario.Value  := Items[i].Prod.vUnCom;
        cdsNFeItensVlrTotal.Value     := Items[i].Prod.vProd;
        cdsNFeItensCodProd.Value      := Items[i].Prod.cProd;
        cdsNFeItens.Post;
      end;
    end;
  end;
end;

procedure TfrmRecebeXMLNovo_ListarXML.edtProcuraChaveKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    fDMRecebeXMLNovo_ListarXML.cdsConsManifesto.Locate('chave_acesso',edtProcuraChave.Text,[loCaseInsensitive]);
//    CarregaComponentes;
  end;
end;

procedure TfrmRecebeXMLNovo_ListarXML.prc_Scroll(DataSet: TDataSet);
begin
  if (fDMRecebeXMLNovo_ListarXML.cdsConsManifesto.IsEmpty) or (trim(fDMRecebeXMLNovo_ListarXML.cdsConsManifestoNOME_ARQUIVO.AsString) = '') then
    Exit;

  fDMRecebeXMLNovo_ListarXML.NFe.NotasFiscais.Clear;
  fDMRecebeXMLNovo_ListarXML.NFe.NotasFiscais.LoadFromFile(edtDiretorio.Text + '\' + fDMRecebeXMLNovo_ListarXML.cdsConsManifestoNOME_ARQUIVO.AsString);
  CarregaComponentes;
end;

procedure TfrmRecebeXMLNovo_ListarXML.gridChaveDblClick(Sender: TObject);
begin
  if fDMRecebeXMLNovo_ListarXML.cdsConsManifestoNOME_ARQUIVO.AsString = EmptyStr then
    Exit;
    
  vArqSelecionado := edtDiretorio.Text + '\' + fDMRecebeXMLNovo_ListarXML.cdsConsManifestoNOME_ARQUIVO.AsString;
  Close;
  ModalResult := mrOk;
end;

procedure TfrmRecebeXMLNovo_ListarXML.btnAtualizarClick(Sender: TObject);
begin

  ListarArquivos(edtDiretorio.Text);
end;

procedure TfrmRecebeXMLNovo_ListarXML.prc_Verifica_Importados;
begin

end;

procedure TfrmRecebeXMLNovo_ListarXML.gridChaveGetCellParams(
  Sender: TObject; Field: TField; AFont: TFont; var Background: TColor;
  Highlight: Boolean);
begin
  if fDMRecebeXMLNovo_ListarXML.cdsConsManifestoGRAVADA_NOTA.AsString = 'S' then
    Background := clYellow;
end;

procedure TfrmRecebeXMLNovo_ListarXML.btnApagarImportadosClick(
  Sender: TObject);
begin
  {with fDMRecebeXMLNovo_ListarXML do
  begin
    cdsNFe.AfterScroll := nil;
    cdsNFe.First;
    while not cdsNFe.Eof do
    begin
      if cdsNFeImportado.AsString = 'S' then
        DeleteFile(cdsNFecaminhoArq.AsString);
      cdsNFe.Next;
    end;
    ListarArquivos(edtDiretorio.Text);
  end;}
end;

procedure TfrmRecebeXMLNovo_ListarXML.prc_Consulta_Manifesto;
var
  vComando: String;
  vCNPJAux: String;
begin
  fDMRecebeXMLNovo_ListarXML.cdsConsManifesto.Close;
  vComando := fDMRecebeXMLNovo_ListarXML.ctConsManifesto + ' WHERE 0 = 0 ';
  if cbxOpcao.ItemIndex = 1 then
    vComando := vComando + ' AND ((AN.GRAVADA_NOTA = ' + QuotedStr('N') + ' OR AN.GRAVADA_NOTA = '
              + QuotedStr('') + ') AND (AN.SITUACAO_NFE <> 3) AND (COALESCE(AN.OCULTAR,'
              + QuotedStr('') + ') <> ' + QuotedStr('S')+'))'
  else
  if cbxOpcao.ItemIndex = 2 then
    vComando := vComando + ' AND (AN.SITUACAO_MANIF = -1)'
  else
  if cbxOpcao.ItemIndex = 3 then
    vComando := vComando + ' AND (AN.DOWNLOAD = ' + QuotedStr('N') + ' OR AN.DOWNLOAD = ' + QuotedStr('') + ')';
  if dtInicial.Text <> '' then
    vComando := vComando + ' AND AN.DTEMISSAO2 >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',dtInicial.date));
  if RxDBLookupCombo1.Text <> '' then
  begin
    fDMRecebeXMLNovo_ListarXML.cdsFilial.Locate('ID',RxDBLookupCombo1.KeyValue,[loCaseInsensitive]);
    vCNPJAux := uUtilPadrao.fnc_Montar_CNPJ(fDMRecebeXMLNovo_ListarXML.cdsFilialCNPJ_CPF.AsString);
    vComando := vComando + ' AND AN.CNPJ_FILIAL = ' + QuotedStr(vCNPJAux);
  end;
  fDMRecebeXMLNovo_ListarXML.sdsConsManifesto.CommandText := vComando;
  fDMRecebeXMLNovo_ListarXML.cdsConsManifesto.Open;

  {fDMRecebeXMLNovo_ListarXML.cdsConsManifesto.First;
  while not fDMRecebeXMLNovo_ListarXML.cdsConsManifesto.Eof do
  begin


    fDMRecebeXMLNovo_ListarXML.cdsConsManifesto.Next;
  end;}

end;

procedure TfrmRecebeXMLNovo_ListarXML.prc_Carrega_Principal2(i: integer;
  vArq: string);
var
  NfId : string;
begin
  ShowMessage(edtDiretorio.Text + '\' + vArq);
  fDMRecebeXMLNovo_ListarXML.NFe.NotasFiscais.Clear;
  fDMRecebeXMLNovo_ListarXML.NFe.NotasFiscais.LoadFromFile(edtDiretorio.Text + '\' + vArq);

  with fDMRecebeXMLNovo_ListarXML do
  begin
    NfId := NFe.NotasFiscais.Items[0].NFe.infNFe.ID;

    cdsConsManifesto.Append;
    cdsConsManifestoSERIE.AsString       := IntToStr( NFe.NotasFiscais.Items[0].NFe.Ide.serie);
    cdsConsManifestoNUM_NOTA.AsInteger   := NFe.NotasFiscais.Items[0].NFe.Ide.nNF;
    cdsConsManifestoDTEMISSAO2.Value     := NFe.NotasFiscais.Items[0].NFe.Ide.dEmi;
    cdsConsManifestoVLR_NOTA.Value      := NFe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF;
    cdsConsManifestoNOME.Value  := NFe.NotasFiscais.Items[0].NFe.Emit.xNome;
    cdsConsManifestoCNPJ.Value  := NFe.NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
    cdsConsManifestoCHAVE_ACESSO.Value  := Copy(NfId,4,Length(NfId) - 2);
    cdsConsManifestoNOME_ARQUIVO.Value  := vArq;

    sdsNotaImportada.Close;
    sdsNotaImportada.Params.ParamValues['CHAVE'] := Copy(NfId,4,Length(NfId) - 2);
    sdsNotaImportada.Open;
    if sdsNotaImportadaID.AsInteger > 0 then
      cdsConsManifestoGRAVADA_NOTA.Value := 'S'
    else
      cdsConsManifestoGRAVADA_NOTA.Value := 'N';
     cdsConsManifesto.Post;
  end;

end;

end.
