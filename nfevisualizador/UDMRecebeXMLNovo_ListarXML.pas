unit UDMRecebeXMLNovo_ListarXML;

interface

uses
  SysUtils, Classes, DB, DBClient, ACBrBase, ACBrDFe, ACBrNFe, FMTBcd,
  SqlExpr;

type
  TDMRecebeXMLNovo_ListarXML = class(TDataModule)
    NFe: TACBrNFe;
    cdsNFe: TClientDataSet;
    IntegerField1: TIntegerField;
    dscdsNFe: TDataSource;
    cdsNFeSerie: TIntegerField;
    cdsNFeNumNota: TIntegerField;
    cdsNFeDtEmissao: TDateField;
    cdsNFeVlrTotal: TFloatField;
    cdsNFeNomeEmitente: TStringField;
    cdsNFeCNPJEmitente: TStringField;
    cdsNFeItens: TClientDataSet;
    dscdsNFeItens: TDataSource;
    cdsNFeItensEAN: TStringField;
    cdsNFeItensxProd: TStringField;
    cdsNFeItensUnidade: TStringField;
    cdsNFeItensQtd: TFloatField;
    cdsNFeItensVlrUnitario: TFloatField;
    cdsNFeItensVlrTotal: TFloatField;
    qParametros: TSQLQuery;
    qParametrosID: TIntegerField;
    qParametrosENDXMLNFE: TStringField;
    qParametrosENDPDFNFE: TStringField;
    qParametrosSERIENORMAL: TStringField;
    qParametrosSERIECONTINGENCIA: TStringField;
    qParametrosLOCALSERVIDORNFE: TStringField;
    qParametrosEMAILRESPONSAVELSISTEMA: TStringField;
    qParametrosNFEPRODUCAO: TStringField;
    qParametrosANEXARDANFE: TStringField;
    qParametrosVERSAONFE: TStringField;
    qParametrosVERSAOEMISSAONFE: TStringField;
    qParametrosTIPOLOGONFE: TStringField;
    qParametrosAPLICARDESCONTONOICMS: TStringField;
    qParametrosAPLICARDESCONTONOIPI: TStringField;
    qParametrosSOMARNOPROD_FRETE: TStringField;
    qParametrosSOMARNOPROD_OUTRASDESP: TStringField;
    qParametrosSOMARNOPROD_SEGURO: TStringField;
    qParametrosAJUSTELOGONFEAUTOMATICO: TStringField;
    qParametrosINFNUMNOTAMANUAL: TStringField;
    qParametrosOPCAO_DTENTREGAPEDIDO: TStringField;
    qParametrosOBS_SIMPLES: TStringField;
    qParametrosIMP_OBSSIMPLES: TStringField;
    qParametrosIMP_REFERENCIANANOTA: TStringField;
    qParametrosENVIARNOTABENEF_NANFE: TStringField;
    qParametrosESPECIE_NOTA: TStringField;
    qParametrosMARCA_NOTA: TStringField;
    qParametrosVERSAO_BANCO: TIntegerField;
    qParametrosUSA_QTDPACOTE_NTE: TStringField;
    qParametrosATUALIZAR_PRECO: TStringField;
    qParametrosUSA_DESCRICAODANOTA: TStringField;
    qParametrosENDXML_NOTAENTRADA: TStringField;
    qParametrosGRAVAR_NA_REF_CODPRODFORN: TStringField;
    qParametrosGRAVAR_PROD_MAT_RECXML: TStringField;
    qParametrosGRAVAR_INF_ADICIONAIS_NTE: TStringField;
    qParametrosUSA_CUPOM_FISCAL: TStringField;
    qParametrosUSA_PERC_MARGEM_RECEPCAO: TStringField;
    qParametrosPROCURAR_POR_REF_XML: TStringField;
    qParametrosINFORMAR_COR_MATERIAL: TStringField;
    qParametrosINFORMAR_COR_PROD: TStringField;
    qParametrosUSA_LOCAL_ESTOQUE: TStringField;
    qParametrosUSA_LOTE_CONTROLE: TStringField;
    qParametrosID_LOCAL_ESTOQUE_NTE: TIntegerField;
    qParametrosUSA_APROVACAO_OC_FORN: TStringField;
    qParametrosUSA_NFCE: TStringField;
    qParametrosUSA_GRADE: TStringField;
    qParametrosEMPRESA_SUCATA: TStringField;
    qParametrosUSA_CONTA_ORCAMENTO: TStringField;
    qParametrosMOSTRAR_MARCAR_PROD: TStringField;
    cdsNFechave_acesso: TStringField;
    cdsNFevArq: TStringField;
    cdsNFeItensCodProd: TStringField;
    sdsNotaImportada: TSQLDataSet;
    sdsNotaImportadaID: TIntegerField;
    cdsNFeImportado: TStringField;
    cdsNFecaminhoArq: TStringField;
    cdsNFeItensNumOC: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMRecebeXMLNovo_ListarXML: TDMRecebeXMLNovo_ListarXML;

implementation

uses
  DmdDatabase;

{$R *.dfm}

procedure TDMRecebeXMLNovo_ListarXML.DataModuleCreate(Sender: TObject);
begin
  qParametros.ParamByName('ID').AsInteger := 1;
  qParametros.Open;
end;

end.
