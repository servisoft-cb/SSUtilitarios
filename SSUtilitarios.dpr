program SSUtilitarios;

uses
  Forms,
  Dialogs,
  SysUtils,
  UMenu in 'UMenu.pas' {fMenu},
  DmdDatabase in '..\ssfacil\DmdDatabase.pas' {dmDatabase: TDataModule},
  UDMImportarXML in 'UDMImportarXML.pas' {DMImportarXML: TDataModule},
  UImportarXML in 'UImportarXML.pas' {frmImportarXML},
  uUtilPadrao in '..\ssfacil\uUtilPadrao.pas',
  rsDBUtils in '..\rslib\nova\rsDBUtils.pas',
  uNFeComandos in '..\ssfacil\uNFeComandos.pas',
  UDMImportarXML_NFSe in 'UDMImportarXML_NFSe.pas' {DMImportarXML_NFSe: TDataModule},
  uImportarXML_NFSe in 'UImportarXML_NFSe.pas' {frmImportarXML_NFSe},
  UDMImportarPdx in 'UDMImportarPdx.pas' {DMImportarPdx: TDataModule},
  UImportarPdx in 'UImportarPdx.pas' {frmImportarPdx},
  UImportarArq in 'UImportarArq.pas' {frmImportarArq},
  UDMCadPlano_Contas in '..\ssfacil\uDMCadPlano_Contas.pas' {DMCadPlano_Contas: TDataModule},
  UImportar_PlanoContas in 'UImportar_PlanoContas.pas' {frmImportar_PlanoContas},
  uDmCadContaOrc in '..\ssfacil\uDmCadContaOrc.pas' {dmCadContaOrc: TDataModule},
  UCadContaOrc_Txt in 'UCadContaOrc_Txt.pas' {frmCadContaOrc_Txt},
  LogProvider in '..\logs\src\LogProvider.pas',
  LogTypes in '..\logs\src\LogTypes.pas',
  UConversor in 'UConversor.pas' {frmConversor},
  UEscolhe_Filial in '..\ssfacil\UEscolhe_Filial.pas' {frmEscolhe_Filial},
  UimportarRegras in 'UimportarRegras.pas' {frmRegrasEmpresa},
  UDMEstoqueUtil in 'UDMEstoqueUtil.pas' {DMEstoqueUtil: TDataModule},
  ULeEstoque_Mov in 'ULeEstoque_Mov.pas' {frmLeEstoque_Mov},
  uDMCadPlano_Contabil in '..\ssfacil\uDMCadPlano_Contabil.pas' {DMCadPlano_Contabil: TDataModule},
  UGerarTalao_Setor in 'UGerarTalao_Setor.pas' {frmGerarTalao_Setor},
  UDMCadLote_Calc in '..\SSFacil_Prod\UDMCadLote_Calc.pas' {DMCadLote_Calc: TDataModule},
  UDMGerarTalaoSetor in 'UDMGerarTalaoSetor.pas' {DMGerarTalaoSetor: TDataModule},
  UConvMaterial in 'UConvMaterial.pas' {frmConvMaterial},
  UZeraEstoque in 'UZeraEstoque.pas' {frmZeraEstoque},
  DmdDatabase_NFeBD in '..\ssfacil\DmdDatabase_NFeBD.pas' {dmDatabase_NFeBD: TDataModule},
  uNFeConsts in '..\ssfacil\uNFeConsts.pas',
  UGeraInventario in 'UGeraInventario.pas' {frmGeraInventario},
  UDMCadInventario in '..\ssfacil\UDMCadInventario.pas' {DMCadInventario: TDataModule},
  UGeraCBenef in 'UGeraCBenef.pas' {frmGeraCBenef},
  UDMProdutoProcesso in 'UDMProdutoProcesso.pas' {DMProdutoProcesso: TDataModule},
  UConvProdutoProc in 'UConvProdutoProc.pas' {frmConvProdutoProc},
  UDMCadProduto in '..\ssfacil\UDMCadProduto.pas' {dmCadProduto: TDataModule},
  UGerarProdutoWeb in 'UGerarProdutoWeb.pas' {frmGerarProdutoWeb},
  uUtilImpressao in '..\ssfacil\uUtilImpressao.pas',
  UAjustarCCustoNFe in 'UAjustarCCustoNFe.pas' {frmAjustarCCustoNFe},
  UAjusteNCMCFOP in 'UAjusteNCMCFOP.pas' {frmAjusteNCMCFOP},
  UDMAjustarNCMCFOP in 'UDMAjustarNCMCFOP.pas' {DMAjustarNCMCFOP: TDataModule},
  UImportar_PlanoNovoSistema in 'UImportar_PlanoNovoSistema.pas' {frmImportar_PlanoNovoSistema},
  UProdutoCMedio in 'UProdutoCMedio.pas' {frmProdutoCMedio},
  UDMProdutoCMedio in 'UDMProdutoCMedio.pas' {DMProdutoCMedio: TDataModule},
  UImportarCTN in 'UImportarCTN.pas' {frmImportarCTN},
  UDMCadServico in '..\ssfacil\UDMCadServico.pas' {DMCadServico: TDataModule},
  Classe.Retorno in '..\ssfacil\Classes\Classe.Retorno.pas',
  UInformeEndereco in '..\ssfacil\UInformeEndereco.pas' {frmInformeEndereco},
  UAjusteNomeClienteCF in 'UAjusteNomeClienteCF.pas' {frmAjusteNomeClienteCF},
  UImportar_PlanoDominio in 'UImportar_PlanoDominio.pas' {frmImportar_PlanoDominio},
  UImportar_PlanoSage in 'UImportar_PlanoSage.pas' {frmImportar_PlanoSage},
  UImportar_PlanoNovoSistema_Excel in 'UImportar_PlanoNovoSistema_Excel.pas' {frmImportar_PlanoNovoSistema_Excel},
  UDMRecebeXML in 'nfevisualizador\UDMRecebeXML.pas' {DMRecebeXML: TDataModule},
  UDMRecebeXMLNovo_ListarXML in 'nfevisualizador\UDMRecebeXMLNovo_ListarXML.pas' {DMRecebeXMLNovo_ListarXML: TDataModule},
  uRecebeXMLNovo in 'nfevisualizador\URecebeXMLNovo.pas' {frmRecebeXMLNovo},
  URecebeXMLNovo_ListarXML in 'nfevisualizador\URecebeXMLNovo_ListarXML.pas' {frmRecebeXMLNovo_ListarXML},
  uUtilProduto in 'uUtilProduto.pas',
  UDMConsProduto in '..\ssfacil\UDMConsProduto.pas' {DMConsProduto: TDataModule},
  uUtil_RecebeXML in 'nfevisualizador\uUtil_RecebeXML.pas',
  UDMGravarFinanceiro in '..\ssfacil\UDMGravarFinanceiro.pas' {DMGravarFinanceiro: TDataModule},
  UImportar_BalanceteDominio in 'UImportar_BalanceteDominio.pas' {frmImportar_BalanceteDominio},
  UCadInicial in '..\ssfacil\UCadInicial.pas' {frmCadInicial},
  UDMCadFilial in '..\ssfacil\UDMCadFilial.pas' {DMCadFilial: TDataModule},
  uPessoa in '..\ssfacil\Classes\uPessoa.pas';

{$R *.res}

begin
  try
    Application.Initialize;
    Application.Title := 'Utilitários';
  Application.CreateForm(TdmDatabase, dmDatabase);
  Application.CreateForm(TfMenu, fMenu);
  Application.CreateForm(TfrmCadInicial, frmCadInicial);
  Application.CreateForm(TDMCadFilial, DMCadFilial);
  Application.Run;
  except
    on e: Exception do
      ShowMessage('Ocorreu o seguinte erro ao executar: ' + #13 + e.Message);
  end;
end.
