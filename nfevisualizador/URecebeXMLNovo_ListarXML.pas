unit URecebeXMLNovo_ListarXML;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, Grids, DBGrids, SMDBGrid, ExtCtrls, UDMRecebeXMLNovo_ListarXML,
  DBCtrls, NxCollection,DB;

type
  TfrmRecebeXMLNovo_ListarXML = class(TForm)
    pnlFiltro: TPanel;
    Panel1: TPanel;
    lblDiretorio: TLabel;
    edtDiretorio: TDirectoryEdit;
    lblLeitor: TLabel;
    edtProcuraChave: TEdit;
    gridChave: TSMDBGrid;
    btnAtualizar: TNxButton;
    btnApagarImportados: TButton;
    procedure edtProcuraChaveKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridChaveDblClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnApagarImportadosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    fDMRecebeXMLNovo_ListarXML: TDMRecebeXMLNovo_ListarXML;
    procedure ListarArquivos(Diretorio : string);
    Procedure prc_Scroll(DataSet: TDataSet);
    procedure CarregaComponentes;
    procedure prc_Carrega_Principal(i : integer; vArq : string);
    procedure prc_Buscar_XML;
  public
    { Public declarations }
    vArqSelecionado : string;
  end;

var
  frmRecebeXMLNovo_ListarXML: TfrmRecebeXMLNovo_ListarXML;

implementation

uses
  rsDBUtils, DBClient, pcnNFe, ACBrNFeNotasFiscais, uUtil_RecebeXML,
  uRecebeXMLNovo, uUtilPadrao;

{$R *.dfm}

procedure TfrmRecebeXMLNovo_ListarXML.ListarArquivos(Diretorio: string);
var
  aSr : TSearchRec;
  i : integer;
begin
  fDMRecebeXMLNovo_ListarXML.cdsNFe.Close;
  fDMRecebeXMLNovo_ListarXML.cdsNFe.CreateDataSet;
  fDMRecebeXMLNovo_ListarXML.cdsNFe.DisableControls;
  fDMRecebeXMLNovo_ListarXML.cdsNFe.AfterScroll := nil;
    
  i := 1;
  if FindFirst(Diretorio + '\' + '*.xml', faAnyFile, aSr) = 0 then
  begin
    repeat
      if (aSr.Attr > 0) then
      begin
        if (aSr.Name <> '.') and (aSr.Name <> '..') and (Length(aSr.Name) > 3) then
        begin
          try
            prc_Carrega_Principal(i,aSr.Name);
          except
          end;
          i := i + 1;
        end;
      end;
    until FindNext(aSr) > 0;
    FindClose(aSr);
  end;
  fDMRecebeXMLNovo_ListarXML.cdsNFe.EnableControls;
  fDMRecebeXMLNovo_ListarXML.cdsNFe.AfterScroll := prc_Scroll;
  fDMRecebeXMLNovo_ListarXML.cdsNFe.First;  
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
    fDMRecebeXMLNovo_ListarXML.cdsNFe.Locate('chave_acesso',edtProcuraChave.Text,[loCaseInsensitive]);
//    CarregaComponentes;
  end;
end;

procedure TfrmRecebeXMLNovo_ListarXML.prc_Scroll(DataSet: TDataSet);
begin
  if fDMRecebeXMLNovo_ListarXML.cdsNFe.IsEmpty then
    Exit;

  fDMRecebeXMLNovo_ListarXML.NFe.NotasFiscais.Clear;
  fDMRecebeXMLNovo_ListarXML.NFe.NotasFiscais.LoadFromFile(edtDiretorio.Text + '\' + fDMRecebeXMLNovo_ListarXML.cdsNFevArq.AsString);
  CarregaComponentes;
end;

procedure TfrmRecebeXMLNovo_ListarXML.prc_Carrega_Principal(i: integer; vArq : string);
var
  NfId : string;
begin
  fDMRecebeXMLNovo_ListarXML.NFe.NotasFiscais.Clear;
  fDMRecebeXMLNovo_ListarXML.NFe.NotasFiscais.LoadFromFile(edtDiretorio.Text + '\' + vArq);

  with fDMRecebeXMLNovo_ListarXML do
  begin
    NfId := NFe.NotasFiscais.Items[0].NFe.infNFe.ID;

    if not(cdsNfe.Active) then
      cdsNFe.CreateDataSet;

    cdsnfe.Append;
    cdsNFecaminhoArq.Value    := edtDiretorio.Text + '\' + vArq;
    cdsNFeSerie.Value         := NFe.NotasFiscais.Items[0].NFe.Ide.serie;
    cdsNFeNumNota.Value       := NFe.NotasFiscais.Items[0].NFe.Ide.nNF;
    cdsNFeDtEmissao.Value     := NFe.NotasFiscais.Items[0].NFe.Ide.dEmi;
    cdsNFeVlrTotal.Value      := NFe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF;
    cdsNFeNomeEmitente.Value  := NFe.NotasFiscais.Items[0].NFe.Emit.xNome;
    cdsNFeCNPJEmitente.Value  := NFe.NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
    cdsNFechave_acesso.Value  := Copy(NfId,4,Length(NfId) - 2);
    cdsNFevArq.Value          := vArq;

    sdsNotaImportada.Close;
    sdsNotaImportada.Params.ParamValues['CHAVE'] := Copy(NfId,4,Length(NfId) - 2);
    sdsNotaImportada.Open;
    if sdsNotaImportadaID.AsInteger > 0 then
      cdsNFeImportado.Value := 'S'
    else
      cdsNFeImportado.Value := 'N';
    cdsNFe.Post;
  end;
end;

procedure TfrmRecebeXMLNovo_ListarXML.gridChaveDblClick(Sender: TObject);
begin
  if fDMRecebeXMLNovo_ListarXML.cdsNFevArq.AsString = EmptyStr then
    Exit;
    
  vArqSelecionado := edtDiretorio.Text + '\' + fDMRecebeXMLNovo_ListarXML.cdsNFevArq.AsString;
  Close;
  ModalResult := mrOk;
end;

procedure TfrmRecebeXMLNovo_ListarXML.btnAtualizarClick(Sender: TObject);
begin
  ListarArquivos(edtDiretorio.Text);
end;

procedure TfrmRecebeXMLNovo_ListarXML.prc_Buscar_XML;
begin
  fDMRecebeXMLNovo_ListarXML := TDMRecebeXMLNovo_ListarXML.Create(Self);
  oDBUtils.SetDataSourceProperties(Self,fDMRecebeXMLNovo_ListarXML);
  edtDiretorio.InitialDir := fDMRecebeXMLNovo_ListarXML.qParametrosENDXML_NOTAENTRADA.AsString;
  edtDiretorio.Text := fDMRecebeXMLNovo_ListarXML.qParametrosENDXML_NOTAENTRADA.AsString;
  //ListarArquivos(edtDiretorio.Text);
end;

procedure TfrmRecebeXMLNovo_ListarXML.btnApagarImportadosClick(
  Sender: TObject);
var
  form: tForm;
begin
  frmRecebeXMLNovo := TfrmRecebeXMLNovo.Create(self);
  form := TForm.Create(nil);
  try
    uUtilPadrao.prc_Form_Aguarde(Form,'Gravando Notas');
    fDMRecebeXMLNovo_ListarXML.cdsNFe.First;
    while not fDMRecebeXMLNovo_ListarXML.cdsNFe.Eof do
    begin
      frmRecebeXMLNovo.vArqLista := fDMRecebeXMLNovo_ListarXML.cdsNFecaminhoArq.AsString;
      frmRecebeXMLNovo.btnAbrirXMLClick(nil);
      fDMRecebeXMLNovo_ListarXML.cdsNFe.Next;
    end;
  finally
    FreeAndNil(frmRecebeXMLNovo);
    FreeAndNil(form);
  end;
  MessageDlg('Concluído', mtConfirmation, [mbOk], 0);
end;

procedure TfrmRecebeXMLNovo_ListarXML.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMRecebeXMLNovo_ListarXML);
end;

procedure TfrmRecebeXMLNovo_ListarXML.FormCreate(Sender: TObject);
begin
  prc_Buscar_XML;
end;

end.
