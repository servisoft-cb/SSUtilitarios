unit UMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, ComCtrls, jpeg,
  ToolWin, Menus, Types, UCBase, UCDBXConn, ActnList, ImgList, ShellAPI, ExtCtrls, RLConsts, IniFiles, Midaslib, DBClient,
  GradPnl, SqlExpr, NxCollection, AdvPanel;
  
type
  TfMenu = class(TForm)
    pnlPrincipal: TAdvPanel;
    btnLocalizar: TNxButton;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    NxButton3: TNxButton;
    btnImportar_PlanoSped: TNxButton;
    btnImportar_ContasOrcamento: TNxButton;
    NxButton4: TNxButton;
    NxButton5: TNxButton;
    NxButton6: TNxButton;
    NxButton7: TNxButton;
    NxButton8: TNxButton;
    NxButton9: TNxButton;
    NxButton10: TNxButton;
    btnCBenef: TNxButton;
    NxButton11: TNxButton;
    btnAtualizarNCMUnidTrib: TNxButton;
    btnGravarProdutosWeb: TNxButton;
    btnAjustarCCusto: TNxButton;
    btnAjustaNCM_CFOP: TNxButton;
    btnGerarPlanoNovoSitema: TNxButton;
    btnGravarPrecoMedio: TNxButton;
    btnGravarGruposWEB: TNxButton;
    btnImportarCTN: TNxButton;
    btnAjusteNomeClienteCupom: TNxButton;
    btnGerarPlanoDominio: TNxButton;
    btnGerarPlanoSage: TNxButton;
    NxButton12: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton5Click(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure btnImportar_PlanoSpedClick(Sender: TObject);
    procedure btnImportar_ContasOrcamentoClick(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
    procedure NxButton4Click(Sender: TObject);
    procedure NxButton7Click(Sender: TObject);
    procedure NxButton9Click(Sender: TObject);
    procedure NxButton10Click(Sender: TObject);
    procedure btnCBenefClick(Sender: TObject);
    procedure NxButton11Click(Sender: TObject);
    procedure btnGravarProdutosWebClick(Sender: TObject);
    procedure btnAjustarCCustoClick(Sender: TObject);
    procedure btnAjustaNCM_CFOPClick(Sender: TObject);
    procedure btnGerarPlanoNovoSitemaClick(Sender: TObject);
    procedure btnGravarPrecoMedioClick(Sender: TObject);
    procedure btnGravarGruposWEBClick(Sender: TObject);
    procedure btnImportarCTNClick(Sender: TObject);
    procedure btnAjusteNomeClienteCupomClick(Sender: TObject);
    procedure btnGerarPlanoDominioClick(Sender: TObject);
    procedure btnGerarPlanoSageClick(Sender: TObject);
    procedure NxButton12Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  fMenu: TfMenu;

implementation

uses DmdDatabase, UImportarXML, uImportarXML_NFSe, UImportarPdx,
  UImportar_PlanoContas, UCadContaOrc_Txt, UImportarArq, UConversor,
  UimportarRegras, ULeEstoque_Mov, uAjustaConOrcDuplicata, UGeraInventario,
  UGeraCBenef, UConvProdutoProc, UGerarProdutoWeb, UAjustarCCustoNFe,
  UAjusteNCMCFOP, UImportar_PlanoNovoSistema, UProdutoCMedio, uUtilPadrao,
  UImportarCTN, UAjusteNomeClienteCF, UImportar_PlanoDominio,
  UImportar_PlanoSage, UImportar_PlanoNovoSistema_Excel;//, UGerarTalao_Setor;

{$R *.dfm}

procedure TfMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfMenu.ToolButton5Click(Sender: TObject);
begin
  Close;
end;

procedure TfMenu.btnLocalizarClick(Sender: TObject);
begin
  frmImportarXML := TfrmImportarXML.Create(self);
  frmImportarXML.ShowModal;
  FreeAndNil(frmImportarXML);
end;

procedure TfMenu.NxButton1Click(Sender: TObject);
begin
  frmImportarXML_NFSe := TfrmImportarXML_NFSe.Create(self);
  frmImportarXML_NFSe.ShowModal;
  FreeAndNil(frmImportarXML_NFSe);
end;

procedure TfMenu.NxButton2Click(Sender: TObject);
begin
  frmImportarPdx := TfrmImportarPdx.Create(self);
  frmImportarPdx.ShowModal;
  FreeAndNil(frmImportarPdx);
end;

procedure TfMenu.btnImportar_PlanoSpedClick(Sender: TObject);
begin
  frmImportar_PlanoContas := TfrmImportar_PlanoContas.Create(self);
  frmImportar_PlanoContas.ShowModal;
  FreeAndNil(frmImportar_PlanoContas);
end;

procedure TfMenu.btnImportar_ContasOrcamentoClick(Sender: TObject);
begin
  frmCadContaOrc_Txt := TfrmCadContaOrc_Txt.Create(self);
  frmCadContaOrc_Txt.ShowModal;
  FreeAndNil(frmCadContaOrc_Txt);
end;

procedure TfMenu.NxButton3Click(Sender: TObject);
begin
  frmRegrasEmpresa := TfrmRegrasEmpresa.Create(self);
  frmRegrasEmpresa.ShowModal;
  FreeAndNil(frmRegrasEmpresa);
end;

procedure TfMenu.NxButton4Click(Sender: TObject);
begin
{  frmGerarTalao_Setor := TfrmGerarTalao_Setor.Create(self);
  frmGerarTalao_Setor.ShowModal;
  FreeAndNil(frmGerarTalao_Setor);}
end;

procedure TfMenu.NxButton7Click(Sender: TObject);
begin
  frmLeEstoque_Mov := TfrmLeEstoque_Mov.Create(self);
  frmLeEstoque_Mov.ShowModal;
  FreeAndNil(frmLeEstoque_Mov);
end;

procedure TfMenu.NxButton9Click(Sender: TObject);
begin
// Gera conta de orçamento do cadastro de pessoa para as duplicatas a pagar e receber
  frmAjustaContasOrcDuplicata := TfrmAjustaContasOrcDuplicata.Create(Self);
  frmAjustaContasOrcDuplicata.ShowModal;
  FreeAndNil(frmAjustaContasOrcDuplicata);
end;

procedure TfMenu.NxButton10Click(Sender: TObject);
begin
  frmGeraInventario := TfrmGeraInventario.Create(self);
  frmGeraInventario.ShowModal;
  FreeAndNil(frmGeraInventario);
end;

procedure TfMenu.btnCBenefClick(Sender: TObject);
begin
  frmGeraCBenef := TfrmGeraCBenef.Create(self);
  frmGeraCBenef.ShowModal;
  FreeAndNil(frmGeraCBenef);
end;

procedure TfMenu.NxButton11Click(Sender: TObject);
begin
  frmConvProdutoProc := TfrmConvProdutoProc.Create(self);
  frmConvProdutoProc.ShowModal;
  FreeAndNil(frmConvProdutoProc);
end;

procedure TfMenu.btnGravarProdutosWebClick(Sender: TObject);
begin
  frmGerarProdutoWeb := TfrmGerarProdutoWeb.Create(self);
  try
    frmGerarProdutoWeb.ShowModal;
  finally
    FreeAndNil(frmGerarProdutoWeb);
  end;
end;

procedure TfMenu.btnAjustarCCustoClick(Sender: TObject);
begin
  frmAjustarCCustoNFe := TfrmAjustarCCustoNFe.Create(self);
  try
    frmAjustarCCustoNFe.ShowModal;
  finally
    FreeAndNil(frmAjustarCCustoNFe);
  end;
end;

procedure TfMenu.btnAjustaNCM_CFOPClick(Sender: TObject);
begin
  frmAjusteNCMCFOP := TfrmAjusteNCMCFOP.Create(self);
  try
    frmAjusteNCMCFOP.ShowModal;
  finally
    FreeAndNil(frmAjusteNCMCFOP);
  end;
end;

procedure TfMenu.btnGerarPlanoNovoSitemaClick(Sender: TObject);
begin
  frmImportar_PlanoNovoSistema := TfrmImportar_PlanoNovoSistema.Create(self);
  frmImportar_PlanoNovoSistema.ShowModal;
  FreeAndNil(frmImportar_PlanoNovoSistema);
end;

procedure TfMenu.btnGravarPrecoMedioClick(Sender: TObject);
begin
  frmProdutoCMedio := TfrmProdutoCMedio.Create(self);
  frmProdutoCMedio.ShowModal;
  FreeAndNil(frmProdutoCMedio);
end;

procedure TfMenu.btnGravarGruposWEBClick(Sender: TObject);
var
  sds: TSQLDataSet;
  Form: TForm;
begin
  Form := TForm.Create(Application);
  sds  := TSQLDataSet.Create(nil);
  try
    uUtilPadrao.prc_Form_Aguarde(Form);
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.Close;
    sds.CommandText := 'update GRUPO set ID = ID ';
    sds.ExecSQL;
  finally
    begin
      FreeAndNil(Form);
      FreeAndNil(sds);
    end;
  end;
  MessageDlg('*** Geração concluída!', mtInformation, [mbOk], 0);
end;

procedure TfMenu.btnImportarCTNClick(Sender: TObject);
begin
  frmImportarCTN := TfrmImportarCTN.Create(self);
  frmImportarCTN.ShowModal;
  FreeAndNil(frmImportarCTN);
end;

procedure TfMenu.btnAjusteNomeClienteCupomClick(Sender: TObject);
begin
  frmAjusteNomeClienteCF := TfrmAjusteNomeClienteCF.Create(self);
  frmAjusteNomeClienteCF.ShowModal;
  FreeAndNil(frmAjusteNomeClienteCF);
end;

procedure TfMenu.btnGerarPlanoDominioClick(Sender: TObject);
begin
  frmImportar_PlanoDominio := TfrmImportar_PlanoDominio.Create(self);
  frmImportar_PlanoDominio.ShowModal;
  FreeAndNil(frmImportar_PlanoDominio);
end;

procedure TfMenu.btnGerarPlanoSageClick(Sender: TObject);
begin
  frmImportar_PlanoSage := TfrmImportar_PlanoSage.Create(self);
  frmImportar_PlanoSage.ShowModal;
  FreeAndNil(frmImportar_PlanoSage);
end;

procedure TfMenu.NxButton12Click(Sender: TObject);
begin
  frmImportar_PlanoNovoSistema_Excel := TfrmImportar_PlanoNovoSistema_Excel.Create(self);
  frmImportar_PlanoNovoSistema_Excel.ShowModal;
  FreeAndNil(frmImportar_PlanoNovoSistema_Excel);
end;

initialization
//  RLConsts.SetVersion(3,72,'B');

end.
