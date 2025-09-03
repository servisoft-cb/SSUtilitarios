unit UDMImportarXML;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, xmldom,
  Xmlxform, dialogs;

type
  TDMImportarXML = class(TDataModule)
    sdsCFOP: TSQLDataSet;
    dspCFOP: TDataSetProvider;
    cdsCFOP: TClientDataSet;
    dsCFOP: TDataSource;
    sdsCFOPID: TIntegerField;
    sdsCFOPCODCFOP: TStringField;
    sdsCFOPNOME: TStringField;
    sdsCFOPENTRADASAIDA: TStringField;
    sdsCFOPGERAR_IPI: TStringField;
    sdsCFOPGERAR_ICMS: TStringField;
    sdsCFOPGERAR_DUPLICATA: TStringField;
    sdsCFOPSOMAR_VLRTOTALPRODUTO: TStringField;
    sdsCFOPNOME_INTERNO: TStringField;
    sdsCFOPID_CSTICMS: TIntegerField;
    sdsCFOPID_CSTIPI: TIntegerField;
    sdsCFOPCOPIARNOTATRIANGULAR: TStringField;
    sdsCFOPID_PIS: TIntegerField;
    sdsCFOPID_COFINS: TIntegerField;
    sdsCFOPTIPO_PIS: TStringField;
    sdsCFOPTIPO_COFINS: TStringField;
    sdsCFOPGERAR_ICMS_SIMPLES: TStringField;
    sdsCFOPTIPO_EMPRESA: TStringField;
    sdsCFOPSUBSTITUICAO_TRIB: TStringField;
    sdsCFOPMVA: TStringField;
    sdsCFOPPERC_COFINS: TFloatField;
    sdsCFOPPERC_PIS: TFloatField;
    cdsCFOPID: TIntegerField;
    cdsCFOPCODCFOP: TStringField;
    cdsCFOPNOME: TStringField;
    cdsCFOPGERAR_IPI: TStringField;
    cdsCFOPGERAR_ICMS: TStringField;
    cdsCFOPGERAR_DUPLICATA: TStringField;
    cdsCFOPSOMAR_VLRTOTALPRODUTO: TStringField;
    cdsCFOPNOME_INTERNO: TStringField;
    cdsCFOPID_CSTICMS: TIntegerField;
    cdsCFOPID_CSTIPI: TIntegerField;
    cdsCFOPCOPIARNOTATRIANGULAR: TStringField;
    cdsCFOPID_PIS: TIntegerField;
    cdsCFOPID_COFINS: TIntegerField;
    cdsCFOPTIPO_PIS: TStringField;
    cdsCFOPTIPO_COFINS: TStringField;
    cdsCFOPGERAR_ICMS_SIMPLES: TStringField;
    cdsCFOPTIPO_EMPRESA: TStringField;
    cdsCFOPSUBSTITUICAO_TRIB: TStringField;
    cdsCFOPMVA: TStringField;
    cdsCFOPPERC_COFINS: TFloatField;
    cdsCFOPPERC_PIS: TFloatField;
    sdsCFOPLEI: TMemoField;
    cdsCFOPLEI: TMemoField;
    sdsCFOPBENEFICIAMENTO: TStringField;
    cdsCFOPBENEFICIAMENTO: TStringField;
    XMLTransformProvider1: TXMLTransformProvider;
    cdsCabecalho: TClientDataSet;
    cdsCabecalhoversao: TStringField;
    cdsCabecalhoinfNFe_Id: TStringField;
    cdsCabecalhocUF: TIntegerField;
    cdsCabecalhocNF: TIntegerField;
    cdsCabecalhonatOp: TStringField;
    cdsCabecalhoindPag: TIntegerField;
    cdsCabecalhomod: TStringField;
    cdsCabecalhoserie: TIntegerField;
    cdsCabecalhonNF: TIntegerField;
    cdsCabecalhoide_dEmi: TDateField;
    cdsCabecalhodSaiEnt: TDateField;
    cdsCabecalhohSaiEnt: TStringField;
    cdsCabecalhotpNF: TIntegerField;
    cdsCabecalhoIEST: TStringField;
    cdsCabecalhocMunFG1: TIntegerField;
    cdsCabecalhotpImp: TIntegerField;
    cdsCabecalhotpEmis: TIntegerField;
    cdsCabecalhocDV: TIntegerField;
    cdsCabecalhotpAmb: TStringField;
    cdsCabecalhofinNFe: TIntegerField;
    cdsCabecalhoprocEmi: TIntegerField;
    cdsCabecalhoverProc: TStringField;
    cdsCabecalhodhCont: TDateField;
    cdsCabecalhoxJust: TStringField;
    cdsCabecalhoemit_CNPJ: TStringField;
    cdsCabecalhoemit_CPF: TStringField;
    cdsCabecalhoemit_xNome: TStringField;
    cdsCabecalhoxFant: TStringField;
    cdsCabecalhoenderEmit_xLgr: TStringField;
    cdsCabecalhoenderEmit_nro: TStringField;
    cdsCabecalhoenderEmit_xCpl: TStringField;
    cdsCabecalhoenderEmit_xBairro: TStringField;
    cdsCabecalhoenderEmit_cMun: TIntegerField;
    cdsCabecalhoenderEmit_xMun: TStringField;
    cdsCabecalhoenderEmit_UF: TStringField;
    cdsCabecalhoenderEmit_CEP: TIntegerField;
    cdsCabecalhoenderEmit_cPais: TIntegerField;
    cdsCabecalhoenderEmit_xPais: TStringField;
    cdsCabecalhoenderEmit_fone: TStringField;
    cdsCabecalhoemit_IE: TStringField;
    cdsCabecalhoIM: TStringField;
    cdsCabecalhoCNAE: TStringField;
    cdsCabecalhoCRT: TIntegerField;
    cdsCabecalhoavulsa_CNPJ: TStringField;
    cdsCabecalhoxOrgao: TStringField;
    cdsCabecalhomatr: TStringField;
    cdsCabecalhoxAgente: TStringField;
    cdsCabecalhofone: TStringField;
    cdsCabecalhoavulsa_UF: TStringField;
    cdsCabecalhonDAR: TStringField;
    cdsCabecalhoavulsa_dEmi: TDateField;
    cdsCabecalhovDAR: TFloatField;
    cdsCabecalhorepEmi: TStringField;
    cdsCabecalhodPag: TDateField;
    cdsCabecalhodest_CNPJ: TStringField;
    cdsCabecalhodest_CPF: TStringField;
    cdsCabecalhodest_xNome: TStringField;
    cdsCabecalhoenderDest_xLgr: TStringField;
    cdsCabecalhoenderDest_nro: TStringField;
    cdsCabecalhoenderDest_xCpl: TStringField;
    cdsCabecalhoenderDest_xBairro: TStringField;
    cdsCabecalhoenderDest_cMun: TIntegerField;
    cdsCabecalhoenderDest_xMun: TStringField;
    cdsCabecalhoenderDest_UF: TStringField;
    cdsCabecalhoenderDest_CEP: TIntegerField;
    cdsCabecalhoenderDest_cPais: TIntegerField;
    cdsCabecalhoenderDest_xPais: TStringField;
    cdsCabecalhoenderDest_fone: TStringField;
    cdsCabecalhodest_IE: TStringField;
    cdsCabecalhoISUF: TStringField;
    cdsCabecalhoemail: TStringField;
    cdsCabecalhoretirada_CNPJ: TStringField;
    cdsCabecalhoretirada_CPF: TStringField;
    cdsCabecalhoretirada_xLgr: TStringField;
    cdsCabecalhoretirada_nro: TStringField;
    cdsCabecalhoretirada_xCpl: TStringField;
    cdsCabecalhoretirada_xBairro: TStringField;
    cdsCabecalhoretirada_cMun: TIntegerField;
    cdsCabecalhoretirada_xMun: TStringField;
    cdsCabecalhoretirada_UF: TStringField;
    cdsCabecalhoentrega_CNPJ: TStringField;
    cdsCabecalhoentrega_CPF: TStringField;
    cdsCabecalhoentrega_xLgr: TStringField;
    cdsCabecalhoentrega_nro: TStringField;
    cdsCabecalhoentrega_xCpl: TStringField;
    cdsCabecalhoentrega_xBairro: TStringField;
    cdsCabecalhoentrega_cMun: TIntegerField;
    cdsCabecalhoentrega_xMun: TStringField;
    cdsCabecalhoentrega_UF: TStringField;
    cdsCabecalhoICMSTot_vBC: TFloatField;
    cdsCabecalhovICMS: TFloatField;
    cdsCabecalhovBCST: TFloatField;
    cdsCabecalhovST: TFloatField;
    cdsCabecalhovProd: TFloatField;
    cdsCabecalhovFrete: TFloatField;
    cdsCabecalhovSeg: TFloatField;
    cdsCabecalhoICMSTot_vDesc: TFloatField;
    cdsCabecalhovII: TFloatField;
    cdsCabecalhovIPI: TFloatField;
    cdsCabecalhoICMSTot_vPIS: TFloatField;
    cdsCabecalhoICMSTot_vCOFINS: TFloatField;
    cdsCabecalhovOutro: TFloatField;
    cdsCabecalhovNF: TFloatField;
    cdsCabecalhoISSQNtot_vServ: TFloatField;
    cdsCabecalhoISSQNtot_vBC: TFloatField;
    cdsCabecalhovISS: TFloatField;
    cdsCabecalhoISSQNtot_vPIS: TFloatField;
    cdsCabecalhoISSQNtot_vCOFINS: TFloatField;
    cdsCabecalhovRetPIS: TFloatField;
    cdsCabecalhovRetCOFINS: TFloatField;
    cdsCabecalhovRetCSLL: TFloatField;
    cdsCabecalhovBCIRRF: TFloatField;
    cdsCabecalhovIRRF: TFloatField;
    cdsCabecalhovBCRetPrev: TFloatField;
    cdsCabecalhovRetPrev: TFloatField;
    cdsCabecalhomodFrete: TIntegerField;
    cdsCabecalhoCNPJ: TStringField;
    cdsCabecalhoCPF: TStringField;
    cdsCabecalhoxNome: TStringField;
    cdsCabecalhoIE: TStringField;
    cdsCabecalhoxEnder: TStringField;
    cdsCabecalhotransporta_xMun: TStringField;
    cdsCabecalhotransporta_UF: TStringField;
    cdsCabecalhoretTransp_vServ: TFloatField;
    cdsCabecalhovBCRet: TFloatField;
    cdsCabecalhopICMSRet: TFloatField;
    cdsCabecalhovICMSRet: TFloatField;
    cdsCabecalhoCFOP: TIntegerField;
    cdsCabecalhocMunFG2: TIntegerField;
    cdsCabecalhoveicTransp_placa: TStringField;
    cdsCabecalhoveicTransp_UF: TStringField;
    cdsCabecalhoveicTransp_RNTC: TStringField;
    cdsCabecalhoreboque_placa: TStringField;
    cdsCabecalhoreboque_UF: TStringField;
    cdsCabecalhoreboque_RNTC: TStringField;
    cdsCabecalhovagao: TStringField;
    cdsCabecalhobalsa: TStringField;
    cdsCabecalhonFat: TStringField;
    cdsCabecalhovOrig: TFloatField;
    cdsCabecalhofat_vDesc: TFloatField;
    cdsCabecalhovLiq: TFloatField;
    cdsCabecalhoinfAdFisco: TStringField;
    cdsCabecalhoinfCpl: TStringField;
    cdsCabecalhoobsCont_xCampo: TStringField;
    cdsCabecalhoobsCont_xTexto: TStringField;
    cdsCabecalhoobsFisco_xCampo: TStringField;
    cdsCabecalhoobsFisco_xTexto: TStringField;
    cdsCabecalhoUFEmbarq: TStringField;
    cdsCabecalhoxLocEmbarq: TStringField;
    cdsCabecalhoxNEmp: TStringField;
    cdsCabecalhoxPed: TStringField;
    cdsCabecalhoxCont: TStringField;
    cdsCabecalhoSignature_Id: TStringField;
    cdsCabecalhoSignedInfo_Id: TStringField;
    cdsCabecalhoAlgorithm1: TStringField;
    cdsCabecalhoSignatureMethod_Algorithm: TStringField;
    cdsCabecalhoId: TStringField;
    cdsCabecalhoURI: TStringField;
    cdsCabecalhoType: TStringField;
    cdsCabecalhoAlgorithm2: TStringField;
    cdsCabecalhoXPath: TStringField;
    cdsCabecalhoAlgorithm3: TStringField;
    cdsCabecalhoDigestValue: TStringField;
    cdsCabecalhoSignatureValue_Id: TStringField;
    cdsCabecalhoKeyInfo_Id: TStringField;
    cdsCabecalhoX509Certificate: TStringField;
    cdsCabecalhoNFref: TDataSetField;
    cdsCabecalhodet: TDataSetField;
    cdsCabecalhovol: TDataSetField;
    cdsCabecalhodup: TDataSetField;
    cdsCabecalhoprocRef: TDataSetField;
    cdsCabecalhoprotNFe: TDataSetField;
    dsCabecalho: TDataSource;
    cdsNFeRef: TClientDataSet;
    cdsNFeRefrefNFe: TIntegerField;
    cdsNFeRefrefNF_cUF: TIntegerField;
    cdsNFeRefrefNF_AAMM: TIntegerField;
    cdsNFeRefrefNF_CNPJ: TStringField;
    cdsNFeRefrefNF_mod: TStringField;
    cdsNFeRefrefNF_serie: TIntegerField;
    cdsNFeRefrefNF_nNF: TIntegerField;
    cdsNFeRefrefNFP_cUF: TIntegerField;
    cdsNFeRefrefNFP_AAMM: TIntegerField;
    cdsNFeRefrefNFP_CNPJ: TStringField;
    cdsNFeRefCPF: TStringField;
    cdsNFeRefIE: TStringField;
    cdsNFeRefrefNFP_mod: TStringField;
    cdsNFeRefrefNFP_serie: TIntegerField;
    cdsNFeRefrefNFP_nNF: TIntegerField;
    cdsNFeRefrefCTe: TIntegerField;
    cdsNFeRefrefECF_mod: TStringField;
    cdsNFeRefnECF: TIntegerField;
    cdsNFeRefnCOO: TIntegerField;
    cdsNFeProtocolo: TClientDataSet;
    cdsNFeProtocoloversao: TStringField;
    cdsNFeProtocoloId: TStringField;
    cdsNFeProtocolotpAmb: TStringField;
    cdsNFeProtocoloverAplic: TStringField;
    cdsNFeProtocolochNFe: TStringField;
    cdsNFeProtocolodhRecbto: TStringField;
    cdsNFeProtocolonProt: TStringField;
    cdsNFeProtocolodigVal: TStringField;
    cdsNFeProtocolocStat: TStringField;
    cdsNFeProtocoloxMotivo: TStringField;
    dsNFeProtocolo: TDataSource;
    dsNFeRef: TDataSource;
    dsParcelas: TDataSource;
    cdsParcelas: TClientDataSet;
    cdsDetalhe: TClientDataSet;
    dsDetalhe: TDataSource;
    cdsDeclaracaoImportacao: TClientDataSet;
    dsDeclaracaoImportacao: TDataSource;
    cdsAdicoes: TClientDataSet;
    cdsAdicoesnAdicao: TIntegerField;
    cdsAdicoesnSeqAdic: TIntegerField;
    cdsAdicoescFabricante: TStringField;
    cdsAdicoesvDescDI: TFloatField;
    dsAdicoes: TDataSource;
    mItensNota: TClientDataSet;
    mItensNotaItem: TIntegerField;
    mItensNotaCodProduto: TStringField;
    mItensNotaCodProdutoInterno: TIntegerField;
    mItensNotaCodCor: TIntegerField;
    mItensNotaCodGrade: TIntegerField;
    mItensNotaPosicao: TIntegerField;
    mItensNotaTamanho: TStringField;
    mItensNotaNomeCor: TStringField;
    mItensNotaQtd: TFloatField;
    mItensNotaVlrUnitario: TFloatField;
    mItensNotaVlrTotal: TFloatField;
    mItensNotaAliqIcms: TFloatField;
    mItensNotaAliqIPI: TFloatField;
    mItensNotaCodSitTrib: TStringField;
    mItensNotaCodSitTribInterno: TIntegerField;
    mItensNotaCodCSTIPI: TStringField;
    mItensNotaCodCofins: TStringField;
    mItensNotaCodPIS: TStringField;
    mItensNotaAliqPIS: TFloatField;
    mItensNotaAliqCofins: TFloatField;
    mItensNotaVlrPis: TFloatField;
    mItensNotaVlrIcms: TFloatField;
    mItensNotaVlrCofins: TFloatField;
    mItensNotaVlrIPI: TFloatField;
    mItensNotaBaseIcms: TFloatField;
    mItensNotaUnidade: TStringField;
    mItensNotaNumPedido: TStringField;
    mItensNotaItemPedido: TIntegerField;
    mItensNotaCodBarra: TStringField;
    mItensNotaGravarNovo: TBooleanField;
    mItensNotaPercRedIcms: TFloatField;
    mItensNotaCodFornecedor: TIntegerField;
    mItensNotaNomeProduto: TStringField;
    mItensNotaNCM: TStringField;
    mItensNotaCFOP: TStringField;
    mItensNotaCFOPInterno: TStringField;
    mItensNotaBaseCSTRet: TFloatField;
    mItensNotaVlrIcmsCSTRet: TFloatField;
    mItensNotaModICMS: TStringField;
    mItensNotaOrigem: TStringField;
    mItensNotaModIcmsST: TStringField;
    mItensNotaPercMVAST: TFloatField;
    mItensNotaPercRedBCST: TFloatField;
    mItensNotaBaseCST: TFloatField;
    mItensNotaPercIcmsST: TFloatField;
    mItensNotaVlrIcmsST: TFloatField;
    mItensNotaVlrDesconto: TFloatField;
    mItensNotaProdMat: TStringField;
    mItensNotaVlrFrete: TFloatField;
    mItensNotaInfAdicionais: TStringField;
    mItensNotaNumLote: TStringField;
    mItensNotaQtdPacote: TFloatField;
    mItensNotaUnidadeInterno: TStringField;
    mItensNotaMercado: TStringField;
    mItensNotaCFOPOriginal: TStringField;
    mItensNotaConversorUnidade: TFloatField;
    dsmItensNota: TDataSource;
    sdsProduto: TSQLDataSet;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    dsProduto: TDataSource;
    sdsProdutoID: TIntegerField;
    sdsProdutoREFERENCIA: TStringField;
    sdsProdutoNOME: TStringField;
    sdsProdutoPESOLIQUIDO: TFloatField;
    sdsProdutoPESOBRUTO: TFloatField;
    sdsProdutoINATIVO: TStringField;
    sdsProdutoID_CSTIPI: TIntegerField;
    sdsProdutoPERC_IPI: TFloatField;
    sdsProdutoPRECO_CUSTO: TFloatField;
    sdsProdutoPRECO_VENDA: TFloatField;
    sdsProdutoTIPO_REG: TStringField;
    sdsProdutoPOSSE_MATERIAL: TStringField;
    sdsProdutoESTOQUE: TStringField;
    sdsProdutoMATERIAL_OUTROS: TStringField;
    sdsProdutoUSUARIO: TStringField;
    sdsProdutoDTCAD: TDateField;
    sdsProdutoHRCAD: TTimeField;
    sdsProdutoCA: TStringField;
    sdsProdutoCOMPLEMENTO: TStringField;
    sdsProdutoID_NCM: TIntegerField;
    sdsProdutoORIGEM_PROD: TStringField;
    sdsProdutoOBS: TMemoField;
    sdsProdutoCODSITCF: TStringField;
    sdsProdutoPERC_REDUCAOICMS: TFloatField;
    sdsProdutoTIPO_VENDA: TStringField;
    sdsProdutoPERC_MARGEMLUCRO: TFloatField;
    cdsProdutoID: TIntegerField;
    cdsProdutoREFERENCIA: TStringField;
    cdsProdutoNOME: TStringField;
    cdsProdutoPESOLIQUIDO: TFloatField;
    cdsProdutoPESOBRUTO: TFloatField;
    cdsProdutoINATIVO: TStringField;
    cdsProdutoID_CSTIPI: TIntegerField;
    cdsProdutoPERC_IPI: TFloatField;
    cdsProdutoPRECO_CUSTO: TFloatField;
    cdsProdutoPRECO_VENDA: TFloatField;
    cdsProdutoTIPO_REG: TStringField;
    cdsProdutoPOSSE_MATERIAL: TStringField;
    cdsProdutoESTOQUE: TStringField;
    cdsProdutoMATERIAL_OUTROS: TStringField;
    cdsProdutoUSUARIO: TStringField;
    cdsProdutoDTCAD: TDateField;
    cdsProdutoHRCAD: TTimeField;
    cdsProdutoCA: TStringField;
    cdsProdutoCOMPLEMENTO: TStringField;
    cdsProdutoID_NCM: TIntegerField;
    cdsProdutoORIGEM_PROD: TStringField;
    cdsProdutoOBS: TMemoField;
    cdsProdutoCODSITCF: TStringField;
    cdsProdutoPERC_REDUCAOICMS: TFloatField;
    cdsProdutoTIPO_VENDA: TStringField;
    cdsProdutoPERC_MARGEMLUCRO: TFloatField;
    qCFOP: TSQLQuery;
    qCFOPID: TIntegerField;
    qCFOPCODCFOP: TStringField;
    qCFOPNOME: TStringField;
    qCFOPENTRADASAIDA: TStringField;
    qCFOPGERAR_IPI: TStringField;
    qCFOPGERAR_ICMS: TStringField;
    qCFOPGERAR_DUPLICATA: TStringField;
    qCFOPSOMAR_VLRTOTALPRODUTO: TStringField;
    qCFOPNOME_INTERNO: TStringField;
    qCFOPID_CSTICMS: TIntegerField;
    qCFOPID_CSTIPI: TIntegerField;
    qCFOPCOPIARNOTATRIANGULAR: TStringField;
    qCFOPID_PIS: TIntegerField;
    qCFOPID_COFINS: TIntegerField;
    qCFOPTIPO_PIS: TStringField;
    qCFOPTIPO_COFINS: TStringField;
    qCFOPGERAR_ICMS_SIMPLES: TStringField;
    qCFOPTIPO_EMPRESA: TStringField;
    qCFOPSUBSTITUICAO_TRIB: TStringField;
    qCFOPMVA: TStringField;
    qCFOPPERC_COFINS: TFloatField;
    qCFOPPERC_PIS: TFloatField;
    qCFOPLEI: TMemoField;
    qCFOPBENEFICIAMENTO: TStringField;
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
    sdsCidade: TSQLDataSet;
    dspCidade: TDataSetProvider;
    cdsCidade: TClientDataSet;
    dsCidade: TDataSource;
    sdsCidadeID: TIntegerField;
    sdsCidadeNOME: TStringField;
    sdsCidadeUF: TStringField;
    sdsCidadeCODMUNICIPIO: TStringField;
    cdsCidadeID: TIntegerField;
    cdsCidadeNOME: TStringField;
    cdsCidadeUF: TStringField;
    cdsCidadeCODMUNICIPIO: TStringField;
    sdsPais: TSQLDataSet;
    dspPais: TDataSetProvider;
    cdsPais: TClientDataSet;
    dsPais: TDataSource;
    sdsPaisID: TIntegerField;
    sdsPaisNOME: TStringField;
    sdsPaisCODPAIS: TStringField;
    cdsPaisID: TIntegerField;
    cdsPaisNOME: TStringField;
    cdsPaisCODPAIS: TStringField;
    sdsFornecedor: TSQLDataSet;
    dspFornecedor: TDataSetProvider;
    cdsFornecedor: TClientDataSet;
    dsFornecedor: TDataSource;
    sdsFornecedorCODIGO: TIntegerField;
    sdsFornecedorNOME: TStringField;
    sdsFornecedorFANTASIA: TStringField;
    sdsFornecedorENDERECO: TStringField;
    sdsFornecedorCOMPLEMENTO_END: TStringField;
    sdsFornecedorNUM_END: TStringField;
    sdsFornecedorBAIRRO: TStringField;
    sdsFornecedorID_CIDADE: TIntegerField;
    sdsFornecedorCIDADE: TStringField;
    sdsFornecedorUF: TStringField;
    sdsFornecedorCEP: TStringField;
    sdsFornecedorDDDFONE1: TIntegerField;
    sdsFornecedorTELEFONE1: TStringField;
    sdsFornecedorDDDFONE2: TIntegerField;
    sdsFornecedorTELEFONE2: TStringField;
    sdsFornecedorDDDFAX: TIntegerField;
    sdsFornecedorFAX: TStringField;
    sdsFornecedorPESSOA: TStringField;
    sdsFornecedorCNPJ_CPF: TStringField;
    sdsFornecedorINSCR_EST: TStringField;
    sdsFornecedorENDERECO_ENT: TStringField;
    sdsFornecedorCOMPLEMENTO_END_ENT: TStringField;
    sdsFornecedorNUM_END_ENT: TStringField;
    sdsFornecedorBAIRRO_ENT: TStringField;
    sdsFornecedorID_CIDADE_ENT: TIntegerField;
    sdsFornecedorCIDADE_ENT: TStringField;
    sdsFornecedorCEP_ENT: TStringField;
    sdsFornecedorUF_ENT: TStringField;
    sdsFornecedorPESSOA_ENT: TStringField;
    sdsFornecedorCNPJ_CPF_ENT: TStringField;
    sdsFornecedorINSC_EST_ENT: TStringField;
    sdsFornecedorENDERECO_PGTO: TStringField;
    sdsFornecedorCOMPLEMENTO_END_PGTO: TStringField;
    sdsFornecedorNUM_END_PGTO: TStringField;
    sdsFornecedorBAIRRO_PGTO: TStringField;
    sdsFornecedorID_CIDADE_PGTO: TIntegerField;
    sdsFornecedorCIDADE_PGTO: TStringField;
    sdsFornecedorCEP_PGTO: TStringField;
    sdsFornecedorUF_PGTO: TStringField;
    sdsFornecedorUSUARIO: TStringField;
    sdsFornecedorDTCADASTRO: TDateField;
    sdsFornecedorHRCADASTRO: TTimeField;
    sdsFornecedorOBS: TMemoField;
    sdsFornecedorCAIXAPOSTAL: TStringField;
    sdsFornecedorRG: TStringField;
    sdsFornecedorID_VENDEDOR: TIntegerField;
    sdsFornecedorID_CONDPGTO: TIntegerField;
    sdsFornecedorID_CONTABOLETO: TIntegerField;
    sdsFornecedorID_TRANSPORTADORA: TIntegerField;
    sdsFornecedorID_TIPOCOBRANCA: TIntegerField;
    sdsFornecedorID_REDESPACHO: TIntegerField;
    sdsFornecedorID_PAIS: TIntegerField;
    sdsFornecedorID_REGIME_TRIB: TIntegerField;
    sdsFornecedorPERC_COMISSAO: TFloatField;
    sdsFornecedorDDD_ENT: TIntegerField;
    sdsFornecedorFONE_ENT: TStringField;
    sdsFornecedorDDD_PGTO: TIntegerField;
    sdsFornecedorFONE_PGTO: TStringField;
    sdsFornecedorINATIVO: TStringField;
    sdsFornecedorHOMEPAGE: TStringField;
    sdsFornecedorTIPO_FRETE: TStringField;
    sdsFornecedorNOME_ENTREGA: TStringField;
    sdsFornecedorEMAIL_NFE: TStringField;
    sdsFornecedorEMAIL_PGTO: TStringField;
    sdsFornecedorEMAIL_NFE2: TStringField;
    sdsFornecedorPESSOA_PGTO: TStringField;
    sdsFornecedorCNPJ_CPG_PGTO: TStringField;
    sdsFornecedorINSC_EST_PGTO: TStringField;
    sdsFornecedorUF_PLACA: TStringField;
    sdsFornecedorPLACA: TStringField;
    sdsFornecedorTP_CLIENTE: TStringField;
    sdsFornecedorTP_FORNECEDOR: TStringField;
    sdsFornecedorTP_TRANSPORTADORA: TStringField;
    sdsFornecedorTP_VENDEDOR: TStringField;
    cdsFornecedorCODIGO: TIntegerField;
    cdsFornecedorNOME: TStringField;
    cdsFornecedorFANTASIA: TStringField;
    cdsFornecedorENDERECO: TStringField;
    cdsFornecedorCOMPLEMENTO_END: TStringField;
    cdsFornecedorNUM_END: TStringField;
    cdsFornecedorBAIRRO: TStringField;
    cdsFornecedorID_CIDADE: TIntegerField;
    cdsFornecedorCIDADE: TStringField;
    cdsFornecedorUF: TStringField;
    cdsFornecedorCEP: TStringField;
    cdsFornecedorDDDFONE1: TIntegerField;
    cdsFornecedorTELEFONE1: TStringField;
    cdsFornecedorDDDFONE2: TIntegerField;
    cdsFornecedorTELEFONE2: TStringField;
    cdsFornecedorDDDFAX: TIntegerField;
    cdsFornecedorFAX: TStringField;
    cdsFornecedorPESSOA: TStringField;
    cdsFornecedorCNPJ_CPF: TStringField;
    cdsFornecedorINSCR_EST: TStringField;
    cdsFornecedorENDERECO_ENT: TStringField;
    cdsFornecedorCOMPLEMENTO_END_ENT: TStringField;
    cdsFornecedorNUM_END_ENT: TStringField;
    cdsFornecedorBAIRRO_ENT: TStringField;
    cdsFornecedorID_CIDADE_ENT: TIntegerField;
    cdsFornecedorCIDADE_ENT: TStringField;
    cdsFornecedorCEP_ENT: TStringField;
    cdsFornecedorUF_ENT: TStringField;
    cdsFornecedorPESSOA_ENT: TStringField;
    cdsFornecedorCNPJ_CPF_ENT: TStringField;
    cdsFornecedorINSC_EST_ENT: TStringField;
    cdsFornecedorENDERECO_PGTO: TStringField;
    cdsFornecedorCOMPLEMENTO_END_PGTO: TStringField;
    cdsFornecedorNUM_END_PGTO: TStringField;
    cdsFornecedorBAIRRO_PGTO: TStringField;
    cdsFornecedorID_CIDADE_PGTO: TIntegerField;
    cdsFornecedorCIDADE_PGTO: TStringField;
    cdsFornecedorCEP_PGTO: TStringField;
    cdsFornecedorUF_PGTO: TStringField;
    cdsFornecedorUSUARIO: TStringField;
    cdsFornecedorDTCADASTRO: TDateField;
    cdsFornecedorHRCADASTRO: TTimeField;
    cdsFornecedorOBS: TMemoField;
    cdsFornecedorCAIXAPOSTAL: TStringField;
    cdsFornecedorRG: TStringField;
    cdsFornecedorID_VENDEDOR: TIntegerField;
    cdsFornecedorID_CONDPGTO: TIntegerField;
    cdsFornecedorID_CONTABOLETO: TIntegerField;
    cdsFornecedorID_TRANSPORTADORA: TIntegerField;
    cdsFornecedorID_TIPOCOBRANCA: TIntegerField;
    cdsFornecedorID_REDESPACHO: TIntegerField;
    cdsFornecedorID_PAIS: TIntegerField;
    cdsFornecedorID_REGIME_TRIB: TIntegerField;
    cdsFornecedorPERC_COMISSAO: TFloatField;
    cdsFornecedorDDD_ENT: TIntegerField;
    cdsFornecedorFONE_ENT: TStringField;
    cdsFornecedorDDD_PGTO: TIntegerField;
    cdsFornecedorFONE_PGTO: TStringField;
    cdsFornecedorINATIVO: TStringField;
    cdsFornecedorHOMEPAGE: TStringField;
    cdsFornecedorTIPO_FRETE: TStringField;
    cdsFornecedorNOME_ENTREGA: TStringField;
    cdsFornecedorEMAIL_NFE: TStringField;
    cdsFornecedorEMAIL_PGTO: TStringField;
    cdsFornecedorEMAIL_NFE2: TStringField;
    cdsFornecedorPESSOA_PGTO: TStringField;
    cdsFornecedorCNPJ_CPG_PGTO: TStringField;
    cdsFornecedorINSC_EST_PGTO: TStringField;
    cdsFornecedorUF_PLACA: TStringField;
    cdsFornecedorPLACA: TStringField;
    cdsFornecedorTP_CLIENTE: TStringField;
    cdsFornecedorTP_FORNECEDOR: TStringField;
    cdsFornecedorTP_TRANSPORTADORA: TStringField;
    cdsFornecedorTP_VENDEDOR: TStringField;
    mItensNotaID_NCM: TIntegerField;
    sdsTab_CSTICMS: TSQLDataSet;
    sdsTab_CSTICMSID: TIntegerField;
    sdsTab_CSTICMSPERCENTUAL: TFloatField;
    sdsTab_CSTICMSHISTORICO: TMemoField;
    sdsTab_CSTICMSTIPO: TStringField;
    sdsTab_CSTICMSNOME: TStringField;
    sdsTab_CSTICMSCOD_CST: TStringField;
    dspTab_CSTICMS: TDataSetProvider;
    cdsTab_CSTICMS: TClientDataSet;
    cdsTab_CSTICMSID: TIntegerField;
    cdsTab_CSTICMSPERCENTUAL: TFloatField;
    cdsTab_CSTICMSHISTORICO: TMemoField;
    cdsTab_CSTICMSTIPO: TStringField;
    cdsTab_CSTICMSNOME: TStringField;
    cdsTab_CSTICMSCOD_CST: TStringField;
    dsTab_CSTICMS: TDataSource;
    qUnidade: TSQLQuery;
    qUnidadeUNIDADE: TStringField;
    qUnidadeCONVERSOR: TFloatField;
    qUnidadeNOME: TStringField;
    qFilial: TSQLQuery;
    qFilialID: TIntegerField;
    qFilialNOME: TStringField;
    qFilialNOME_INTERNO: TStringField;
    qFilialENDERECO: TStringField;
    qFilialCOMPLEMENTO_END: TStringField;
    qFilialNUM_END: TStringField;
    qFilialBAIRRO: TStringField;
    qFilialCEP: TStringField;
    qFilialID_CIDADE: TIntegerField;
    qFilialCIDADE: TStringField;
    qFilialUF: TStringField;
    qFilialDDD1: TIntegerField;
    qFilialFONE1: TStringField;
    qFilialDDD2: TIntegerField;
    qFilialFONE: TStringField;
    qFilialDDDFAX: TIntegerField;
    qFilialFAX: TStringField;
    qFilialPESSOA: TStringField;
    qFilialCNPJ_CPF: TStringField;
    qFilialINSCR_EST: TStringField;
    qFilialSIMPLES: TStringField;
    qFilialENDLOGO: TStringField;
    qFilialCALCULAR_IPI: TStringField;
    qFilialINATIVO: TStringField;
    qFilialINSCMUNICIPAL: TStringField;
    qFilialCNAE: TStringField;
    qFilialHOMEPAGE: TStringField;
    qFilialUSARICMSSIMPLES: TStringField;
    qFilialID_REGIME_TRIB: TIntegerField;
    qFilialID_PIS: TIntegerField;
    qFilialID_COFINS: TIntegerField;
    qFilialTIPO_PIS: TStringField;
    qFilialTIPO_COFINS: TStringField;
    qFilialPERC_PIS: TFloatField;
    qFilialPERC_COFINS: TFloatField;
    qFilialID_CSTICMS: TIntegerField;
    qFilialID_CSTIPI: TIntegerField;
    qFilialEMAIL_NFE: TStringField;
    qFilialDTESTOQUE: TDateField;
    qFilialPRINCIPAL: TStringField;
    qFilialLIBERADO_ATE: TStringField;
    qFilialULTIMO_ACESSO: TStringField;
    sdsNCM: TSQLDataSet;
    dspNCM: TDataSetProvider;
    cdsNCM: TClientDataSet;
    dsNCM: TDataSource;
    sdsNCMID: TIntegerField;
    sdsNCMNCM: TStringField;
    sdsNCMNOME: TStringField;
    cdsNCMID: TIntegerField;
    cdsNCMNCM: TStringField;
    cdsNCMNOME: TStringField;
    qParametrosATUALIZAR_PRECO: TStringField;
    sdsProdutoDT_ALTPRECO: TDateField;
    cdsProdutoDT_ALTPRECO: TDateField;
    sdsUnidade: TSQLDataSet;
    dspUnidade: TDataSetProvider;
    cdsUnidade: TClientDataSet;
    dsUnidade: TDataSource;
    sdsUnidadeUNIDADE: TStringField;
    sdsUnidadeCONVERSOR: TFloatField;
    sdsUnidadeNOME: TStringField;
    cdsUnidadeUNIDADE: TStringField;
    cdsUnidadeCONVERSOR: TFloatField;
    cdsUnidadeNOME: TStringField;
    qFilial2: TSQLQuery;
    qFilial2ID: TIntegerField;
    qFilial2NOME: TStringField;
    qFilial2NOME_INTERNO: TStringField;
    qFilial2CNPJ_CPF: TStringField;
    mItensNotaBeneficiamento: TStringField;
    sdsTransp: TSQLDataSet;
    dspTransp: TDataSetProvider;
    cdsTransp: TClientDataSet;
    dsTransp: TDataSource;
    sdsNCMPERC_RED_STRIB: TFloatField;
    sdsNCMGERAR_ST: TStringField;
    cdsNCMPERC_RED_STRIB: TFloatField;
    cdsNCMGERAR_ST: TStringField;
    mRegistro: TClientDataSet;
    mRegistroID: TIntegerField;
    mRegistroCNPJ_CPF: TStringField;
    mRegistroPessoa: TStringField;
    mRegistroEndereco: TStringField;
    mRegistroNum_Endereco: TStringField;
    mRegistroCod_Municipio: TStringField;
    mRegistroCep: TStringField;
    mRegistroBairro: TStringField;
    mRegistroNome_Cidade: TStringField;
    mRegistroID_Cidade: TIntegerField;
    mRegistroID_Pais: TIntegerField;
    mRegistroCod_Pais: TStringField;
    mRegistroUF: TStringField;
    mRegistroCod_UF: TStringField;
    mRegistroInsc_Estadual: TStringField;
    mRegistroProcesso: TStringField;
    dsmRegistro: TDataSource;
    mRegistroTipo_Reg: TStringField;
    mRegistroTipo_Processo: TStringField;
    mRegistroRegistro: TStringField;
    mRegistroNome: TStringField;
    mRegistroInsc_Municipal: TStringField;
    mRegistroInsc_Suframa: TStringField;
    mRegistroEmail: TStringField;
    mRegistroComplemento_End: TStringField;
    mRegistroDDD: TStringField;
    mRegistroFone: TStringField;
    mItensNotaEX_TIPI: TStringField;
    mItensNotaVlrSeguro: TFloatField;
    mItensNotaVlrOutrasDespesas: TFloatField;
    mDadosImp: TClientDataSet;
    dsmDadosImp: TDataSource;
    mDadosImpNumDI: TStringField;
    mDadosImpDtDesembaracao: TStringField;
    mDadosImpDtRegistro: TStringField;
    mDadosImpCodExportador: TStringField;
    mDadosImpLocal_Desembaraco: TStringField;
    mDadosImpUF: TStringField;
    mDadosImpNumFatura: TStringField;
    mDadosImp_Adi: TClientDataSet;
    dsmDadosImp_Adi: TDataSource;
    mDadosImpItem_Imp: TIntegerField;
    mDadosImp_AdiNumAdicao: TStringField;
    mDadosImp_AdiCodFabricante: TStringField;
    mDadosImp_AdiVlrDesconto: TFloatField;
    mItensNota_Imp: TClientDataSet;
    dsmItensNota_Imp: TDataSource;
    mItensNota_ImpItem: TIntegerField;
    mItensNota_ImpItem_Imp: TIntegerField;
    mItensNota_ImpNum_DI: TStringField;
    mItensNota_Adi: TClientDataSet;
    dsmItensNota_Adi: TDataSource;
    mItensNota_AdiItem: TIntegerField;
    mItensNota_AdiItem_Imp: TIntegerField;
    mItensNota_AdiNum_Adi: TStringField;
    mItensNota_AdiItem_Adi: TStringField;
    mDadosImp_AdiItem_Adi: TStringField;
    mItensNotaBaseImportacao: TFloatField;
    mItensNotaVlrImportacao: TFloatField;
    mItensNotaVlrDespesaAduaneira: TFloatField;
    mItensNotaVlrIOF: TFloatField;
    mOutrosNota: TClientDataSet;
    dsmOutrosNota: TDataSource;
    mOutrosNotaQtdVolume: TIntegerField;
    mOutrosNotaEspecie: TStringField;
    mOutrosNotaMarca: TStringField;
    mOutrosNotaNumeroVolumes: TStringField;
    mOutrosNotaPesoLiquido: TFloatField;
    mOutrosNotaPesoBruto: TFloatField;
    mRegistroNome_Pais: TStringField;
    sdsProduto_Forn: TSQLDataSet;
    sdsProduto_FornID: TIntegerField;
    sdsProduto_FornITEM: TIntegerField;
    sdsProduto_FornID_FORNECEDOR: TIntegerField;
    sdsProduto_FornNOME_MATERIAL_FORN: TStringField;
    sdsProduto_FornCOD_MATERIAL_FORN: TStringField;
    sdsProduto_FornTAMANHO: TStringField;
    sdsProduto_FornID_COR: TIntegerField;
    sdsProduto_FornCOD_BARRA: TStringField;
    sdsProduto_FornPRECO_CUSTO: TFloatField;
    dspProduto_Forn: TDataSetProvider;
    cdsProduto_Forn: TClientDataSet;
    cdsProduto_FornID: TIntegerField;
    cdsProduto_FornITEM: TIntegerField;
    cdsProduto_FornID_FORNECEDOR: TIntegerField;
    cdsProduto_FornNOME_MATERIAL_FORN: TStringField;
    cdsProduto_FornCOD_MATERIAL_FORN: TStringField;
    cdsProduto_FornTAMANHO: TStringField;
    cdsProduto_FornID_COR: TIntegerField;
    cdsProduto_FornCOD_BARRA: TStringField;
    cdsProduto_FornPRECO_CUSTO: TFloatField;
    dsProduto_Forn: TDataSource;
    qNCM: TSQLQuery;
    qNCMID: TIntegerField;
    qNCMNCM: TStringField;
    qCSTIcms: TSQLQuery;
    qCSTIcmsID: TIntegerField;
    qCSTIcmsPERCENTUAL: TFloatField;
    qCSTIcmsCOD_CST: TStringField;
    qCSTIpi: TSQLQuery;
    qCSTIpiID: TIntegerField;
    qCSTIpiCOD_IPI: TStringField;
    qCofins: TSQLQuery;
    qCofinsID: TIntegerField;
    qCofinsCODIGO: TStringField;
    qPis: TSQLQuery;
    qPisID: TIntegerField;
    qPisCODIGO: TStringField;
    qProduto_Forn: TSQLQuery;
    qProduto_FornITEM: TIntegerField;
    sdsProdutoPERC_IMPORTACAO: TFloatField;
    sdsProdutoUSA_GRADE: TStringField;
    cdsProdutoPERC_IMPORTACAO: TFloatField;
    cdsProdutoUSA_GRADE: TStringField;
    sdsProdutoPERC_PIS: TFloatField;
    sdsProdutoPERC_COFINS: TFloatField;
    cdsProdutoPERC_PIS: TFloatField;
    cdsProdutoPERC_COFINS: TFloatField;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    cdsFilialNOME_INTERNO: TStringField;
    cdsFilialCNPJ_CPF: TStringField;
    qParametrosUSAR_PESSOA_FILIAL: TStringField;
    qParametrosUSA_PRODUTO_FILIAL: TStringField;
    sdsFornecedorFILIAL: TIntegerField;
    sdsFornecedorTP_PREPOSTO: TStringField;
    sdsFornecedorTP_EXPORTACAO: TStringField;
    sdsFornecedorTP_FUNCIONARIO: TStringField;
    sdsFornecedorTP_ATELIER: TStringField;
    sdsFornecedorTIPO_CONSUMIDOR: TSmallintField;
    sdsFornecedorTIPO_CONTRIBUINTE: TSmallintField;
    cdsFornecedorFILIAL: TIntegerField;
    cdsFornecedorTP_PREPOSTO: TStringField;
    cdsFornecedorTP_EXPORTACAO: TStringField;
    cdsFornecedorTP_FUNCIONARIO: TStringField;
    cdsFornecedorTP_ATELIER: TStringField;
    cdsFornecedorTIPO_CONSUMIDOR: TSmallintField;
    cdsFornecedorTIPO_CONTRIBUINTE: TSmallintField;
    sdsProdutoFILIAL: TIntegerField;
    cdsProdutoFILIAL: TIntegerField;
    sdsProdutoUSA_PERC_IMP_INTERESTADUAL: TStringField;
    cdsProdutoUSA_PERC_IMP_INTERESTADUAL: TStringField;
    sdsProdutoREFERENCIA_SEQ: TIntegerField;
    cdsProdutoREFERENCIA_SEQ: TIntegerField;
    sdsProdutoCOD_BARRA: TStringField;
    cdsProdutoCOD_BARRA: TStringField;
    cdsCabecalhoide_dhEmi: TStringField;
    cdsCabecalhoavulsa_dhEmi: TStringField;
    cdsDetalhenItem: TIntegerField;
    cdsDetalhecProd: TStringField;
    cdsDetalhecEAN: TStringField;
    cdsDetalhexProd: TStringField;
    cdsDetalheNCM: TStringField;
    cdsDetalheCEST: TStringField;
    cdsDetalheEXTIPI: TStringField;
    cdsDetalheCFOP: TIntegerField;
    cdsDetalheuCom: TStringField;
    cdsDetalheqCom: TFloatField;
    cdsDetalhevUnCom: TFloatField;
    cdsDetalhevProd: TFloatField;
    cdsDetalhecEANTrib: TStringField;
    cdsDetalheuTrib: TStringField;
    cdsDetalheqTrib: TFloatField;
    cdsDetalhevUnTrib: TFloatField;
    cdsDetalhevFrete: TFloatField;
    cdsDetalhevSeg: TFloatField;
    cdsDetalhevDesc: TFloatField;
    cdsDetalhevOutro: TFloatField;
    cdsDetalheindTot: TIntegerField;
    cdsDetalhexPed: TStringField;
    cdsDetalhenItemPed: TIntegerField;
    cdsDetalhetpOp: TIntegerField;
    cdsDetalhechassi: TStringField;
    cdsDetalhecCor: TStringField;
    cdsDetalhexCor: TStringField;
    cdsDetalhepot: TStringField;
    cdsDetalhecilin: TStringField;
    cdsDetalhepesoL: TFloatField;
    cdsDetalhepesoB: TFloatField;
    cdsDetalhenSerie: TStringField;
    cdsDetalhetpComb: TStringField;
    cdsDetalhenMotor: TStringField;
    cdsDetalheCMT: TStringField;
    cdsDetalhedist: TStringField;
    cdsDetalheanoMod: TIntegerField;
    cdsDetalheanoFab: TIntegerField;
    cdsDetalhetpPint: TStringField;
    cdsDetalhetpVeic: TIntegerField;
    cdsDetalheespVeic: TIntegerField;
    cdsDetalheVIN: TStringField;
    cdsDetalhecondVeic: TIntegerField;
    cdsDetalhecMod: TIntegerField;
    cdsDetalhecCorDENATRAN: TIntegerField;
    cdsDetalhelota: TIntegerField;
    cdsDetalhetpRest: TIntegerField;
    cdsDetalhecProdANP: TIntegerField;
    cdsDetalheCODIF: TIntegerField;
    cdsDetalheqTemp: TFloatField;
    cdsDetalheUFCons: TStringField;
    cdsDetalheCIDE_qBCProd: TFloatField;
    cdsDetalheCIDE_vAliqProd: TFloatField;
    cdsDetalhevCIDE: TFloatField;
    cdsDetalheICMS00_orig: TIntegerField;
    cdsDetalheICMS00_CST: TIntegerField;
    cdsDetalheICMS00_modBC: TIntegerField;
    cdsDetalheICMS00_vBC: TFloatField;
    cdsDetalheICMS00_pICMS: TFloatField;
    cdsDetalheICMS00_vICMS: TFloatField;
    cdsDetalheICMS10_orig: TIntegerField;
    cdsDetalheICMS10_CST: TIntegerField;
    cdsDetalheICMS10_modBC: TIntegerField;
    cdsDetalheICMS10_vBC: TFloatField;
    cdsDetalheICMS10_pICMS: TFloatField;
    cdsDetalheICMS10_vICMS: TFloatField;
    cdsDetalheICMS10_modBCST: TIntegerField;
    cdsDetalheICMS10_pMVAST: TFloatField;
    cdsDetalheICMS10_pRedBCST: TFloatField;
    cdsDetalheICMS10_vBCST: TFloatField;
    cdsDetalheICMS10_pICMSST: TFloatField;
    cdsDetalheICMS10_vICMSST: TFloatField;
    cdsDetalheICMS20_orig: TIntegerField;
    cdsDetalheICMS20_CST: TIntegerField;
    cdsDetalheICMS20_modBC: TIntegerField;
    cdsDetalheICMS20_pRedBC: TFloatField;
    cdsDetalheICMS20_vBC: TFloatField;
    cdsDetalheICMS20_pICMS: TFloatField;
    cdsDetalheICMS20_vICMS: TFloatField;
    cdsDetalheICMS30_orig: TIntegerField;
    cdsDetalheICMS30_CST: TIntegerField;
    cdsDetalheICMS30_modBCST: TIntegerField;
    cdsDetalheICMS30_pMVAST: TFloatField;
    cdsDetalheICMS30_pRedBCST: TFloatField;
    cdsDetalheICMS30_vBCST: TFloatField;
    cdsDetalheICMS30_pICMSST: TFloatField;
    cdsDetalheICMS30_vICMSST: TFloatField;
    cdsDetalheICMS40_orig: TIntegerField;
    cdsDetalheICMS40_CST: TIntegerField;
    cdsDetalheICMS40_vICMS: TFloatField;
    cdsDetalhemotDesICMS: TIntegerField;
    cdsDetalheICMS51_orig: TIntegerField;
    cdsDetalheICMS51_CST: TIntegerField;
    cdsDetalheICMS51_modBC: TIntegerField;
    cdsDetalheICMS51_pRedBC: TFloatField;
    cdsDetalheICMS51_vBC: TFloatField;
    cdsDetalheICMS51_pICMS: TFloatField;
    cdsDetalheICMS51_vICMS: TFloatField;
    cdsDetalheICMS60_orig: TIntegerField;
    cdsDetalheICMS60_CST: TIntegerField;
    cdsDetalheICMS60_vBCSTRet: TStringField;
    cdsDetalheICMS60_pST: TStringField;
    cdsDetalheICMS60_vICMSSTRet: TStringField;
    cdsDetalheICMS60_vBCFCPSTRet: TStringField;
    cdsDetalheICMS60_pFCPSTRet: TStringField;
    cdsDetalheICMS60_vFCPSTRet: TStringField;
    cdsDetalheICMS60_pRedBCEfet: TStringField;
    cdsDetalheICMS60_vBCEfet: TStringField;
    cdsDetalheICMS60_pICMSEfet: TStringField;
    cdsDetalheICMS60_vICMSEfet: TStringField;
    cdsDetalheICMS70_orig: TIntegerField;
    cdsDetalheICMS70_CST: TIntegerField;
    cdsDetalheICMS70_modBC: TIntegerField;
    cdsDetalheICMS70_pRedBC: TFloatField;
    cdsDetalheICMS70_vBC: TFloatField;
    cdsDetalheICMS70_pICMS: TFloatField;
    cdsDetalheICMS70_vICMS: TFloatField;
    cdsDetalheICMS70_modBCST: TIntegerField;
    cdsDetalheICMS70_pMVAST: TFloatField;
    cdsDetalheICMS70_pRedBCST: TFloatField;
    cdsDetalheICMS70_vBCST: TFloatField;
    cdsDetalheICMS70_pICMSST: TFloatField;
    cdsDetalheICMS70_vICMSST: TFloatField;
    cdsDetalheICMS90_orig: TIntegerField;
    cdsDetalheICMS90_CST: TIntegerField;
    cdsDetalheICMS90_modBC: TIntegerField;
    cdsDetalheICMS90_vBC: TFloatField;
    cdsDetalheICMS90_pRedBC: TFloatField;
    cdsDetalheICMS90_pICMS: TFloatField;
    cdsDetalheICMS90_vICMS: TFloatField;
    cdsDetalheICMS90_modBCST: TIntegerField;
    cdsDetalheICMS90_pMVAST: TFloatField;
    cdsDetalheICMS90_pRedBCST: TFloatField;
    cdsDetalheICMS90_vBCST: TFloatField;
    cdsDetalheICMS90_pICMSST: TFloatField;
    cdsDetalheICMS90_vICMSST: TFloatField;
    cdsDetalheICMSPart_orig: TIntegerField;
    cdsDetalheICMSPart_CST: TIntegerField;
    cdsDetalheICMSPart_modBC: TIntegerField;
    cdsDetalheICMSPart_vBC: TFloatField;
    cdsDetalheICMSPart_pRedBC: TFloatField;
    cdsDetalheICMSPart_pICMS: TFloatField;
    cdsDetalheICMSPart_vICMS: TFloatField;
    cdsDetalheICMSPart_modBCST: TIntegerField;
    cdsDetalheICMSPart_pMVAST: TFloatField;
    cdsDetalheICMSPart_pRedBCST: TFloatField;
    cdsDetalheICMSPart_vBCST: TFloatField;
    cdsDetalheICMSPart_pICMSST: TFloatField;
    cdsDetalheICMSPart_vICMSST: TFloatField;
    cdsDetalhepBCOp: TFloatField;
    cdsDetalheUFST: TStringField;
    cdsDetalheICMSST_orig: TIntegerField;
    cdsDetalheICMSST_CST: TIntegerField;
    cdsDetalheICMSST_vBCSTRet: TFloatField;
    cdsDetalheICMSST_vICMSSTRet: TFloatField;
    cdsDetalhevBCSTDest: TFloatField;
    cdsDetalhevICMSSTDest: TFloatField;
    cdsDetalheICMSSN101_orig: TIntegerField;
    cdsDetalheICMSSN101_CSOSN: TIntegerField;
    cdsDetalheICMSSN101_pCredSN: TFloatField;
    cdsDetalheICMSSN101_vCredICMSSN: TFloatField;
    cdsDetalheICMSSN102_orig: TIntegerField;
    cdsDetalheICMSSN102_CSOSN: TIntegerField;
    cdsDetalheICMSSN201_orig: TIntegerField;
    cdsDetalheICMSSN201_CSOSN: TIntegerField;
    cdsDetalheICMSSN201_modBCST: TIntegerField;
    cdsDetalheICMSSN201_pMVAST: TFloatField;
    cdsDetalheICMSSN201_pRedBCST: TFloatField;
    cdsDetalheICMSSN201_vBCST: TFloatField;
    cdsDetalheICMSSN201_pICMSST: TFloatField;
    cdsDetalheICMSSN201_vICMSST: TFloatField;
    cdsDetalheICMSSN201_pCredSN: TFloatField;
    cdsDetalheICMSSN201_vCredICMSSN: TFloatField;
    cdsDetalheICMSSN202_orig: TIntegerField;
    cdsDetalheICMSSN202_CSOSN: TIntegerField;
    cdsDetalheICMSSN202_modBCST: TIntegerField;
    cdsDetalheICMSSN202_pMVAST: TFloatField;
    cdsDetalheICMSSN202_pRedBCST: TFloatField;
    cdsDetalheICMSSN202_vBCST: TFloatField;
    cdsDetalheICMSSN202_pICMSST: TFloatField;
    cdsDetalheICMSSN202_vICMSST: TFloatField;
    cdsDetalheICMSSN500_orig: TIntegerField;
    cdsDetalheICMSSN500_CSOSN: TIntegerField;
    cdsDetalheICMSSN500_vBCSTRet: TFloatField;
    cdsDetalheICMSSN500_vICMSSTRet: TFloatField;
    cdsDetalheICMSSN900_orig: TIntegerField;
    cdsDetalheICMSSN900_CSOSN: TIntegerField;
    cdsDetalheICMSSN900_modBC: TIntegerField;
    cdsDetalheICMSSN900_vBC: TFloatField;
    cdsDetalheICMSSN900_pRedBC: TFloatField;
    cdsDetalheICMSSN900_pICMS: TFloatField;
    cdsDetalheICMSSN900_vICMS: TFloatField;
    cdsDetalheICMSSN900_modBCST: TIntegerField;
    cdsDetalheICMSSN900_pMVAST: TFloatField;
    cdsDetalheICMSSN900_pRedBCST: TFloatField;
    cdsDetalheICMSSN900_vBCST: TFloatField;
    cdsDetalheICMSSN900_pICMSST: TFloatField;
    cdsDetalheICMSSN900_vICMSST: TFloatField;
    cdsDetalheICMSSN900_pCredSN: TFloatField;
    cdsDetalheICMSSN900_vCredICMSSN: TFloatField;
    cdsDetalheclEnq: TStringField;
    cdsDetalheCNPJProd: TStringField;
    cdsDetalhecSelo: TStringField;
    cdsDetalheqSelo: TIntegerField;
    cdsDetalhecEnq: TStringField;
    cdsDetalheIPITrib_CST: TIntegerField;
    cdsDetalheIPITrib_vBC: TFloatField;
    cdsDetalhepIPI: TFloatField;
    cdsDetalheqUnid: TFloatField;
    cdsDetalhevUnid: TFloatField;
    cdsDetalhevIPI: TFloatField;
    cdsDetalheIPINT_CST: TIntegerField;
    cdsDetalheII_vBC: TFloatField;
    cdsDetalhevDespAdu: TFloatField;
    cdsDetalhevII: TFloatField;
    cdsDetalhevIOF: TFloatField;
    cdsDetalheISSQN_vBC: TFloatField;
    cdsDetalhevAliq: TFloatField;
    cdsDetalhevISSQN: TFloatField;
    cdsDetalhecMunFG: TIntegerField;
    cdsDetalhecListServ: TIntegerField;
    cdsDetalhecSitTrib: TStringField;
    cdsDetalhePISAliq_CST: TIntegerField;
    cdsDetalhePISAliq_vBC: TFloatField;
    cdsDetalhePISAliq_pPIS: TFloatField;
    cdsDetalhePISAliq_vPIS: TFloatField;
    cdsDetalhePISQtde_CST: TIntegerField;
    cdsDetalhePISQtde_qBCProd: TFloatField;
    cdsDetalhePISQtde_vAliqProd: TFloatField;
    cdsDetalhePISQtde_vPIS: TFloatField;
    cdsDetalhePISNT_CST: TIntegerField;
    cdsDetalhePISOutr_CST: TIntegerField;
    cdsDetalhePISOutr_vBC: TFloatField;
    cdsDetalhePISOutr_pPIS: TFloatField;
    cdsDetalhePISOutr_qBCProd: TFloatField;
    cdsDetalhePISOutr_vAliqProd: TFloatField;
    cdsDetalhePISOutr_vPIS: TFloatField;
    cdsDetalhePISST_vBC: TFloatField;
    cdsDetalhepPIS: TFloatField;
    cdsDetalhePISST_qBCProd: TFloatField;
    cdsDetalhePISST_vAliqProd: TFloatField;
    cdsDetalhevPIS: TFloatField;
    cdsDetalheCOFINSAliq_CST: TIntegerField;
    cdsDetalheCOFINSAliq_vBC: TFloatField;
    cdsDetalheCOFINSAliq_pCOFINS: TFloatField;
    cdsDetalheCOFINSAliq_vCOFINS: TFloatField;
    cdsDetalheCOFINSQtde_CST: TIntegerField;
    cdsDetalheCOFINSQtde_qBCProd: TFloatField;
    cdsDetalheCOFINSQtde_vAliqProd: TFloatField;
    cdsDetalheCOFINSQtde_vCOFINS: TFloatField;
    cdsDetalheCOFINSNT_CST: TIntegerField;
    cdsDetalheCOFINSOutr_CST: TIntegerField;
    cdsDetalheCOFINSOutr_vBC: TFloatField;
    cdsDetalheCOFINSOutr_pCOFINS: TFloatField;
    cdsDetalheCOFINSOutr_qBCProd: TFloatField;
    cdsDetalheCOFINSOutr_vAliqProd: TFloatField;
    cdsDetalheCOFINSOutr_vCOFINS: TFloatField;
    cdsDetalheCOFINSST_vBC: TFloatField;
    cdsDetalhepCOFINS: TFloatField;
    cdsDetalheCOFINSST_qBCProd: TFloatField;
    cdsDetalheCOFINSST_vAliqProd: TFloatField;
    cdsDetalhevCOFINS: TFloatField;
    cdsDetalheinfAdProd: TStringField;
    cdsDetalheDI: TDataSetField;
    cdsParcelasnDup: TStringField;
    cdsParcelasdVenc: TDateField;
    cdsParcelasvDup: TFloatField;
    sdsProdutoUSA_PRECO_COR: TStringField;
    sdsProdutoUSA_COR: TStringField;
    sdsProdutoNOME_ORIGINAL: TStringField;
    sdsProdutoUNIDADE: TStringField;
    sdsProdutoSPED_TIPO_ITEM: TStringField;
    cdsProdutoUSA_PRECO_COR: TStringField;
    cdsProdutoUSA_COR: TStringField;
    cdsProdutoNOME_ORIGINAL: TStringField;
    cdsProdutoUNIDADE: TStringField;
    cdsProdutoSPED_TIPO_ITEM: TStringField;
    sdsFornecedorCLIENTE_ESTOQUE: TStringField;
    sdsFornecedorTP_PRODUTOR_RURAL: TStringField;
    cdsFornecedorCLIENTE_ESTOQUE: TStringField;
    cdsFornecedorTP_PRODUTOR_RURAL: TStringField;
    sdsProdutoGERAR_WEB: TStringField;
    cdsProdutoGERAR_WEB: TStringField;
    cdsDetalhedescANP: TStringField;
    cdsDetalheICMS51_vICMSOp: TFloatField;
    cdsDetalheICMS51_pDif: TFloatField;
    cdsDetalheICMS60_vICMSSubstituto: TStringField;
    cdsDetalheICMSST_vICMSSubstituto: TFloatField;
    cdsDetalheICMSSN500_vICMSSubstituto: TFloatField;
    qParametrosUSA_VENDEDOR: TStringField;
    qParametrosUSA_CONSUMO: TStringField;
    qParametrosIMP_CODPRODCLI_DANFE: TStringField;
    qParametrosUSA_DESCRICAODANOTA: TStringField;
    qParametrosID_OPERACAO_BENEF_RET: TIntegerField;
    qParametrosID_OPERACAO_MAOOBRA: TIntegerField;
    qParametrosCONFECCAO: TStringField;
    qParametrosID_OPERACAO_TRIANGULAR: TIntegerField;
    qParametrosCADASTRAR_REF_DUP: TStringField;
    qParametrosMOSTRAR_NO_CONSUMO: TStringField;
    qParametrosUSA_COD_BARRAS: TStringField;
    qParametrosUSA_ID_PRODUTO: TStringField;
    qParametrosUSA_AGENDA_POR_FUNC: TStringField;
    qParametrosEMPRESA_VEICULO: TStringField;
    qParametrosID_CONTA_PADRAO: TIntegerField;
    qParametrosID_TIPO_COBRANCA_PADRAO: TIntegerField;
    qParametrosPERMITE_QTDMAIOR_PEDIDO: TStringField;
    qParametrosUSA_TAB_PRECO: TStringField;
    qParametrosENDXML_NOTAENTRADA: TStringField;
    qParametrosPERMITE_MESMA_OC: TStringField;
    qParametrosEMAIL_CONTADOR: TStringField;
    qParametrosID_BANCO_REMESSA: TIntegerField;
    qParametrosENDXMLNFSE: TStringField;
    qParametrosENDPDFNFSE: TStringField;
    qParametrosUSA_SERVICO: TStringField;
    qParametrosID_CFOP_REQ: TIntegerField;
    qParametrosID_CFOP_REQ2: TIntegerField;
    qParametrosUSA_PROJETO_OC: TStringField;
    qParametrosMOSTRAR_CONSULTA: TStringField;
    qParametrosID_CLIENTE_CONSUMIDOR: TIntegerField;
    qParametrosIMPRESSORA_FISCAL: TStringField;
    qParametrosQUITAR_AVISTA_AUT: TStringField;
    qParametrosIMPRESSAO_MATRICIAL: TStringField;
    qParametrosEMPRESA_RH: TStringField;
    qParametrosIMPRESSORA_CAMINHO: TStringField;
    qParametrosGRAVAR_NA_REF_CODPRODFORN: TStringField;
    qParametrosGRAVAR_PROD_MAT_RECXML: TStringField;
    qParametrosNOTA_ENTRADA_MOSTRAR_PROD: TStringField;
    qParametrosATUALIZAR_PRECO_DOC: TStringField;
    qParametrosBAIXAR_REQ_AUTOMATICO: TStringField;
    qParametrosDESTACAR_IMPOSTO_NOTA: TStringField;
    qParametrosCONTROLAR_PEDIDO_LIBERACAO: TStringField;
    qParametrosUSA_GRADE: TStringField;
    qParametrosTIPO_GRADE_REG: TStringField;
    qParametrosINFORMA_MAT_PEDIDO: TStringField;
    qParametrosMOSTRAR_NOME_ETIQUETA: TStringField;
    qParametrosMOSTRAR_MATERIAL_PED: TStringField;
    qParametrosMOSTRAR_CFOP_PEDIDO: TStringField;
    qParametrosDIGITACAO_PED_ITENS: TStringField;
    qParametrosID_CLIENTE_ESTOQUE: TIntegerField;
    qParametrosUSA_LOTE: TStringField;
    qParametrosUSA_POSICAO_CONSUMO: TStringField;
    qParametrosGRAVAR_INF_ADICIONAIS_NTE: TStringField;
    qParametrosUSA_AMOSTRA_GRATIS: TStringField;
    qParametrosCALCULAR_PESO_CONSUMO: TStringField;
    qParametrosTIPO_REL_PEDIDO: TStringField;
    qParametrosUSA_CARIMBO: TStringField;
    qParametrosMOSTRAR_MAT_LOTE: TStringField;
    qParametrosID_CONTA_FECHAMENTO: TIntegerField;
    qParametrosEMPRESA_INJETADO: TStringField;
    qParametrosEMPRESA_TRANSPASS: TStringField;
    qParametrosUSA_TAMANHO_AGRUPADO_NFE: TStringField;
    qParametrosEMPRESA_CARTONAGEM: TStringField;
    qParametrosUSA_DTPRODUCAO: TStringField;
    qParametrosEMPRESA_NAVALHA: TStringField;
    qParametrosIMP_PRECO_PED: TStringField;
    qParametrosUSA_NUM_SERIE_PROD: TStringField;
    qParametrosPERC_IPI_PADRAO: TFloatField;
    qParametrosID_NCM_PADRAO: TIntegerField;
    qParametrosUSA_CONTA_ORCAMENTO: TStringField;
    qParametrosID_CONTA_ORC_SERVICO: TIntegerField;
    qParametrosID_CONTA_ORC_COMISSAO: TIntegerField;
    qParametrosTIPO_LEI_TRANSPARENCIA: TStringField;
    qParametrosUSA_PRECO_FORN: TStringField;
    qParametrosEND_IMPRESSORA_DOS: TStringField;
    qParametrosIMP_PESO_PED: TStringField;
    qParametrosUSA_EDI: TStringField;
    qParametrosID_OPERACAO_VENDA: TIntegerField;
    qParametrosUSA_FAIXA_SIMPLES: TStringField;
    qParametrosESCOLA: TStringField;
    qParametrosALTURA_ETIQ_ROT: TIntegerField;
    qParametrosEMPRESA_SUCATA: TStringField;
    qParametrosBAIXA_ESTOQUE_MP: TStringField;
    qParametrosIMP_MESANO_REF_NOITEM_NFSE: TStringField;
    qParametrosUSA_LIMITE_CREDITO: TStringField;
    qParametrosSENHA_CREDITO: TStringField;
    qParametrosUSA_SPED: TStringField;
    qParametrosTIPO_COMISSAO_NFSE: TStringField;
    qParametrosTIPO_COMISSAO_PROD: TStringField;
    qParametrosOBS_EXPORTACAO_EXCEL: TMemoField;
    qParametrosEND_SALVAR_EXCEL_EXP: TStringField;
    qParametrosUSA_PEDIDO_CONTROLE_MOBRA: TStringField;
    qParametrosIMP_NFE_REF_PROD: TStringField;
    qParametrosID_OBS_LEI_SIMPLES: TIntegerField;
    qParametrosPERC_JUROS_PADRAO: TFloatField;
    qParametrosUSA_FCI: TStringField;
    qParametrosARREDONDAR_5: TStringField;
    qParametrosLEI_TRANSPARENCIA_IMP_ITEM: TStringField;
    qParametrosLEI_TRANSPARENCIA_TEXTO_ITEM: TStringField;
    qParametrosLEI_TRANSPARENCIA_PERC_ADIC: TStringField;
    qParametrosLEI_TRANSPARENCIA_SERVICO: TStringField;
    qParametrosUSA_VALE: TStringField;
    qParametrosSENHA_EXCLUIR_VALE: TStringField;
    qParametrosIMP_MEIA_FOLHA_PED: TStringField;
    qParametrosUSA_PRODUTO_CLIENTE: TStringField;
    qParametrosSOMAR_PIS_COFINS_IMP: TStringField;
    qParametrosUSA_CUPOM_FISCAL: TStringField;
    qParametrosALERTA_VALE: TStringField;
    qParametrosPRODUTO_PRECO_POR_FINALIDADE: TStringField;
    qParametrosSENHA_PEDIDO: TStringField;
    qParametrosALERTA_VLR_ATRASO: TStringField;
    qParametrosID_CONTA_ORC_JUROS_REC: TIntegerField;
    qParametrosID_CONTA_ORC_TAXA_BANCARIA_REC: TIntegerField;
    qParametrosID_CONTA_ORC_DESPESA_REC: TIntegerField;
    qParametrosID_CONTA_ORC_JUROS_PAG: TIntegerField;
    qParametrosID_CONTA_ORC_DESPESA_PAG: TIntegerField;
    qParametrosTIPO_REL_OC: TStringField;
    qParametrosUSA_PERC_MARGEM_RECEPCAO: TStringField;
    qParametrosUSA_BOLETO_ACBR: TStringField;
    qParametrosUSA_PREVISAO: TStringField;
    qParametrosUSA_ENVIO_EMAIL_CATEGORIA: TStringField;
    qParametrosUSA_DANFE_FLEXDOCS: TStringField;
    qParametrosUSA_DESONERACAO: TStringField;
    qParametrosTIPO_REG_PRODUTO_PADRAO: TStringField;
    qParametrosTIPO_CONSULTA_PRODUTO_PADRAO: TStringField;
    qParametrosABRIR_NFECONFIG: TStringField;
    qParametrosCADASTRA_ORGAO_PUBLICO: TStringField;
    qParametrosCONTROLAR_NOTIFICACAO: TStringField;
    qParametrosUSA_RECIBO_NFSE: TStringField;
    qParametrosINFORMAR_COR_MATERIAL: TStringField;
    qParametrosNFSE_RETEN_PIS: TStringField;
    qParametrosNUMERO_SERIE_INTERNO: TStringField;
    qParametrosUSA_PEDIDO_FUT: TStringField;
    qParametrosID_OPERACAO_PED_FUT: TIntegerField;
    qParametrosUSA_COPIA_OS_NOTA: TStringField;
    qParametrosEMPRESA_CONTABIL: TStringField;
    qParametrosID_COND_PGTO_NFSE: TIntegerField;
    qParametrosIMP_TIPO_TRIBUTOS_ITENS: TStringField;
    qParametrosIMP_TIPO_TRIBUTOS: TStringField;
    qParametrosIMP_PERC_TRIB_DADOS_ADIC: TStringField;
    qParametrosIMP_PERC_TRIB_ITENS: TStringField;
    qParametrosIMP_TIPO_TRIBUTOS_SERVICO: TStringField;
    qParametrosIMP_PERC_TRIB_SERVICO: TStringField;
    qParametrosIMP_NOME_POSICAO: TStringField;
    qParametrosPROCURAR_POR_REF_XML: TStringField;
    qParametrosQTD_DIG_COD_CLI_CTB: TIntegerField;
    qParametrosEMPRESA_AMBIENTES: TStringField;
    qParametrosINFORMAR_COR_PROD: TStringField;
    qParametrosINV_TRAZER_QTD_ZERADA: TStringField;
    qParametrosMOSTRAR_MARCAR_PROD: TStringField;
    qParametrosMOSTRAR_LINHA_PROD: TStringField;
    qParametrosMOSTRAR_EMBALAGEM: TStringField;
    qParametrosCONTROLAR_FAT_SEPARADO: TStringField;
    qParametrosCONTROLAR_DUP_PEDIDO: TStringField;
    qParametrosID_RESP_SUPORTE: TIntegerField;
    qParametrosCONTROLAR_ISSQN_RET: TStringField;
    qParametrosOBS_SIMPLES2: TStringField;
    qParametrosPERC_COMISSAO_PAGA_NOTA: TFloatField;
    qParametrosUSA_SETOR_CONSUMO: TStringField;
    qParametrosMOSTRAR_ATELIER_PROD: TStringField;
    qParametrosGERAR_TALAO_AUXILIAR: TStringField;
    qParametrosTIPO_ESTOQUE: TStringField;
    qParametrosUSA_COD_BARRAS_PROPRIO: TStringField;
    qParametrosUSA_ETIQUETA_IND: TStringField;
    qParametrosUSA_NFCE: TStringField;
    qParametrosENDXMLNFCE: TStringField;
    qParametrosENDPDFNFCE: TStringField;
    qParametrosCALC_VOLUME_EMB: TStringField;
    qParametrosGERAR_ROTULO_EMB: TStringField;
    qParametrosUSA_ENVIO_NOVO_NFE: TStringField;
    qParametrosOPCAO_ESCOLHER_PRECO_COR: TStringField;
    qParametrosCONTROLAR_ESTOQUE_SAIDA: TStringField;
    qParametrosSENHA_LIBERA_ESTOQUE: TStringField;
    qParametrosOPCAO_REL_PED_AGRUPADO: TStringField;
    qParametrosGERAR_NUM_AUT_CONTRATO: TStringField;
    qParametrosUSA_ANO_CONTRATO: TStringField;
    qParametrosUSA_COPIA_PEDIDO_ITEM: TStringField;
    qParametrosUSA_COPIA_OS_NFSE: TStringField;
    qParametrosUSA_COPIA_PEDIDO: TStringField;
    qParametrosSOMAR_SISCOMEX_IMP: TStringField;
    qParametrosSOMAR_IPI_IMP: TStringField;
    qParametrosSOMAR_II_IMP: TStringField;
    qParametrosSOMAR_SEGURO_IMP: TStringField;
    qParametrosSOMAR_ADUANEIRA_IMP: TStringField;
    qParametrosCONTRATO_CONSUMO: TStringField;
    qParametrosUSA_SERVICO_MOTOR: TStringField;
    qParametrosCONTROLAR_MENSAL_CSRF: TStringField;
    qParametrosGRAVAR_CONSUMO_NOTA: TStringField;
    qParametrosID_ATELIER_ADEFINIR: TIntegerField;
    qParametrosINFORMAR_COR_MATERIAL_RZ: TStringField;
    qParametrosGRAVAR_FINANCEIRO_ATELIER: TStringField;
    qParametrosID_CONTA_ORC_ATELIER: TIntegerField;
    qParametrosUSA_ICMSOPERACAO_CST51: TStringField;
    qParametrosUSA_PRODUTO_FORNECEDOR: TStringField;
    qParametrosUSA_PRODUTO_LOCALIZACAO: TStringField;
    qParametrosMOSTRAR_TOTAL_ACUMULADO_DUP: TStringField;
    qParametrosID_CONTA_ORC_DESCONTADA: TIntegerField;
    qParametrosREPETIR_ULTIMO_ITEM_PED: TStringField;
    qParametrosUNIDADE_PECA: TStringField;
    qParametrosDECISAO: TStringField;
    qParametrosEMPRESA_LIVRARIA: TStringField;
    qParametrosUSA_LOCAL_ESTOQUE: TStringField;
    qParametrosFUSOHORARIO: TStringField;
    qParametrosFUSOHORARIO_VERAO: TStringField;
    qParametrosUSA_APROVACAO_PED: TStringField;
    qParametrosUSA_ROTULO2: TStringField;
    qParametrosUSA_LOTE_CONTROLE: TStringField;
    qParametrosUSA_PERC_ORGAO_PUBLICO: TStringField;
    qParametrosUSA_PERC_ORGAO_PUBLICO_IMP: TStringField;
    qParametrosUSA_APROVACAO_OC_FORN: TStringField;
    qParametrosID_LOCAL_ESTOQUE_NTE: TIntegerField;
    qParametrosUSA_ADIANTAMENTO_PEDIDO: TStringField;
    qParametrosID_CONTA_PADRAO_ADI: TIntegerField;
    qParametrosID_TIPO_COBRANCA_PADRAO_ADI: TIntegerField;
    qParametrosSOMAR_BASE_ICMS_SISCOMEX: TStringField;
    qParametrosCONTROLAR_SERIE_OPERACAO: TStringField;
    qParametrosMOSTRAR_END_ENTREGA_DADOS_ADI: TStringField;
    qParametrosMSG_PADRAO_NOTA: TMemoField;
    qParametrosALERTA_FRETE_DEST: TStringField;
    qParametrosUSA_OBS_PEDIDO_NOTA: TStringField;
    qParametrosID_LOCAL_ESTOQUE_PROD: TIntegerField;
    qParametrosEMPRESA_CAMABOX: TStringField;
    qParametrosVERSAO_LEIAUTE_SPED: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsNCMNewRecord(DataSet: TDataSet);
    procedure cdsProdutoNewRecord(DataSet: TDataSet);
    procedure mItensNotaBeforePost(DataSet: TDataSet);
    procedure mRegistroBeforePost(DataSet: TDataSet);
    procedure mDadosImp_AdiBeforePost(DataSet: TDataSet);
    procedure mItensNotaAfterEdit(DataSet: TDataSet);
    procedure mDadosImp_AdiAfterEdit(DataSet: TDataSet);
  private
    { Private declarations }

  public
    { Public declarations }
    vMsgErro : String;
    ctCommand_CFOP : String;
    ctCommand_Produto : String;
    ctCommand_Produto_Forn : String;
    vCSTInterno    : Integer;
    vQtd_Produto_NaoEncontrado : Integer;
    vCliente_OK : Boolean;
    vQtd_Adicao_Erro : Integer;
    vID_Produto : Integer;
    vCodFabricante : String;
    vID_Fornecedor: Integer;

    procedure prc_Abrir_Produto(ID : Integer ; Referencia, Nome, CodBarra : String);

    function fnc_Abrir_Fornecedor(CNPJ : String ; Tipo : String = 'C') : Boolean;
    function fnc_Abrir_Cidade(CodMunicipio : String ; Tipo : String = 'C') : Boolean;
    function fnc_Abrir_Pais(CodPais : String ; Tipo : String = 'C') : Boolean; //C=Codigo   I=ID   N=Nome
    function fnc_Abrir_NCM(NCM : String) : Integer;
    function fnc_Abrir_Produto_Forn(Cod_Material : String ; Cod_Fornecedor : Integer ; Nome : String = '') : Integer;

    function fnc_Abrir_qCSTIcms(Codigo : String) : Integer;
    function fnc_Abrir_qCSTIPI(Codigo : String) : Integer;
    function fnc_Abrir_qCofins(Codigo : String) : Integer;
    function fnc_Abrir_qPis(Codigo : String) : Integer;


    procedure AbrirNFe(AXMLNFe: string);
    procedure Gravar_ClasFiscal;
    procedure Gravar_Unidade;
    procedure Gravar_Produto(Usuario : String ; Gravar_Preco, NotaEntrada : Boolean);
    procedure Busca_SitTrib(Codigo : String);
    procedure prc_Gravar_Produto_Forn;
    
  end;

var
  DMImportarXML: TDMImportarXML;

implementation

uses DmdDatabase, Forms, uUtilPadrao;

{$R *.dfm}

{ TDMCadCFOP}

procedure TDMImportarXML.DataModuleCreate(Sender: TObject);
begin
  XMLTransformProvider1.TransformRead.TransformationFile := ExtractFilePath(Application.ExeName) + 'nfe_v2.00_ToDp.xtr';

  ctCommand_CFOP         := sdsCFOP.CommandText;
  ctCommand_Produto      := sdsProduto.CommandText;
  ctCommand_Produto_Forn := sdsProduto_Forn.CommandText;

  qParametros.Close;
  qParametros.ParamByName('ID').AsInteger := 1;
  qParametros.Open;

  cdsTab_CSTICMS.Open;
  cdsCFOP.Open;
  qFilial2.Open;
end;

function TDMImportarXML.fnc_Abrir_Fornecedor(CNPJ : String ; Tipo : String = 'C') : Boolean;
begin
  Result := False;
  cdsFornecedor.Close;
  sdsFornecedor.CommandText := 'SELECT * FROM PESSOA ';
  if Tipo = 'C'  then
    sdsFornecedor.CommandText := sdsFornecedor.CommandText + ' WHERE CNPJ_CPF = ' + QuotedStr(CNPJ)
  else
  if Tipo = 'N'  then
    sdsFornecedor.CommandText := sdsFornecedor.CommandText + ' WHERE NOME = ' + QuotedStr(CNPJ)
  else
    sdsFornecedor.CommandText := sdsFornecedor.CommandText + ' WHERE TP_CLIENTE = ' + QuotedStr('S');
  cdsFornecedor.Open;
  if not(cdsFornecedor.IsEmpty) or (cdsFornecedorCNPJ_CPF.AsString = CNPJ) then
    Result := True;
end;

procedure TDMImportarXML.prc_Abrir_Produto(ID : Integer ; Referencia, Nome, CodBarra : String);
begin
  cdsProduto.Close;
  sdsProduto.CommandText := ctCommand_Produto;
  if trim(CodBarra) <> '' then
    sdsProduto.CommandText := sdsProduto.CommandText + ' WHERE COD_BARRA = ' + QuotedStr(CodBarra)
  else
  if trim(Referencia) <> '' then
    sdsProduto.CommandText := sdsProduto.CommandText + ' WHERE REFERENCIA = ' + QuotedStr(Referencia)
  else
  if ID <> 0 then
    sdsProduto.CommandText := sdsProduto.CommandText + ' WHERE ID = ' + IntToStr(ID)
  else
  if trim(Nome) <> '' then
    sdsProduto.CommandText := sdsProduto.CommandText + ' WHERE NOME = ' + QuotedStr(UpperCase(Nome));
  cdsProduto.Open;
end;

function TDMImportarXML.fnc_Abrir_Cidade(CodMunicipio : String ; Tipo : String = 'C') : Boolean;
begin
  Result := False;
  cdsCidade.Close;
  sdsCidade.CommandText := 'SELECT * FROM CIDADE ';
  if Tipo = 'C' then
    sdsCidade.CommandText := sdsCidade.CommandText + ' WHERE CODMUNICIPIO = ' + QuotedStr(CodMunicipio)
  else
  if Tipo = 'N' then
    sdsCidade.CommandText := sdsCidade.CommandText + ' WHERE NOME = ' + QuotedStr(CodMunicipio);
  cdsCidade.Open;
  if not(cdsCidade.IsEmpty) then
    Result := True;
end;

function TDMImportarXML.fnc_Abrir_Pais(CodPais : String ; Tipo : String = 'C') : Boolean;
begin
  Result := False;
  cdsPais.Close;
  sdsPais.CommandText := 'SELECT * FROM PAIS ';
  if Tipo = 'C'  then
    sdsPais.CommandText := sdsPais.CommandText + ' WHERE CODPAIS = ' + QuotedStr(CodPais)
  else
  if Tipo = 'N'  then
    sdsPais.CommandText := sdsPais.CommandText + ' WHERE NOME = ' + QuotedStr(CodPais)
  else
  if Tipo = 'I'  then
    sdsPais.CommandText := sdsPais.CommandText + ' WHERE ID = ' + CodPais;
  cdsPais.Open;
  if not(cdsPais.IsEmpty) then
    Result := True;
end;

function TDMImportarXML.fnc_Abrir_NCM(NCM: String) : Integer;
var
  vNCMAux : String;
begin
  vNCMAux := Monta_Numero(NCM,0);
  Result := 0;
  cdsNCM.Close;
  sdsNCM.ParamByName('NCM').AsString := vNCMAux;
  cdsNCM.Open;
  if not(cdsNCM.IsEmpty) then
    Result := cdsNCMID.AsInteger;
end;

procedure TDMImportarXML.AbrirNFe(AXMLNFe: string);
begin
  if cdsCabecalho.Active then
    cdsCabecalho.Close;

  try
    XMLTransformProvider1.XMLDataFile := AXMLNFe;
    cdsCabecalho.Open;
  except
  end;
end;

procedure TDMImportarXML.cdsNCMNewRecord(DataSet: TDataSet);
begin
  cdsNCMGERAR_ST.AsString := 'N';
end;

function TDMImportarXML.fnc_Abrir_Produto_Forn(Cod_Material : String ; Cod_Fornecedor : Integer ; Nome : String = '') : Integer;
begin
  cdsProduto_Forn.Close;
  sdsProduto_Forn.CommandText := ctCommand_Produto_Forn;
  if ((trim(Nome) <> '') and (Cod_Fornecedor > 0)) and (trim(Cod_Material) = '') then
  begin
    sdsProduto_Forn.CommandText := sdsProduto_Forn.CommandText
                                 + ' WHERE ID_FORNECEDOR = ' + IntToStr(Cod_Fornecedor)
                                 + '   AND NOME_MATERIAL_FORN = ' + QuotedStr(Nome);
  end
  else
  begin
    sdsProduto_Forn.CommandText := sdsProduto_Forn.CommandText
                                 + ' WHERE COD_MATERIAL_FORN = ' + QuotedStr(Cod_Material)
                                 + '   AND ID_FORNECEDOR = ' + IntToStr(Cod_Fornecedor);
  end;
  cdsProduto_Forn.Open;
  if cdsProduto_Forn.IsEmpty then
    Result := 0
  else
    Result := cdsProduto_FornID.AsInteger;
end;

procedure TDMImportarXML.Gravar_ClasFiscal;
var
  vAux : Integer;
begin
  if mItensNotaID_NCM.AsInteger > 0 then
    exit;

  vAux := fnc_Abrir_NCM(mItensNotaNCM.AsString);
  if vAux > 0 then
  begin
    mItensNota.Edit;
    mItensNotaID_NCM.AsInteger := vAux;
    mItensNota.Post;
    exit;
  end;

  vAux := dmDatabase.ProximaSequencia('TAB_NCM',0);

  cdsNCM.Insert;
  cdsNCMID.AsInteger  := vAux;
  cdsNCMNCM.AsString  := Monta_Numero(mItensNotaNCM.AsString,0);
  cdsNCMNOME.AsString := '';
  cdsNCM.Post;
  cdsNCM.ApplyUpdates(0);

  mItensNota.Edit;
  mItensNotaID_NCM.AsInteger := vAux;
  mItensNota.Post;
end;

procedure TDMImportarXML.Gravar_Unidade;
begin
  if trim(mItensNotaUnidade.AsString) = '' then
    exit;

  cdsUnidade.Close;
  sdsUnidade.ParamByName('UNIDADE').AsString := mItensNotaUnidade.AsString;
  cdsUnidade.Open;
  if (cdsUnidade.IsEmpty) or (cdsUnidadeUNIDADE.AsString = '') then
  begin
   cdsUnidade.Insert;
   cdsUnidadeUNIDADE.AsString  := mItensNotaUnidade.AsString;
   cdsUnidadeNOME.AsString     := mItensNotaUnidade.AsString;
   cdsUnidadeCONVERSOR.AsFloat := 0;
   cdsUnidade.Post;
   cdsUnidade.ApplyUpdates(0);
  end;
end;

procedure TDMImportarXML.Gravar_Produto(Usuario : String ; Gravar_Preco, NotaEntrada : Boolean);
var
  vAux, vAux2 : Integer;
  vTexto : String;
begin
  vAux := dmDatabase.ProximaSequencia('PRODUTO',0);
  vAux := vAux;

  cdsProduto.Insert;
  cdsProdutoID.AsInteger             := vAux;
  cdsProdutoNOME.AsString            := UpperCase(mItensNotaNomeProduto.AsString);
  cdsProdutoUNIDADE.AsString         := UpperCase(mItensNotaUnidade.AsString);
  if mItensNotaCodBarra.AsString <> 'SEM GTIN' then
    cdsProdutoCOD_BARRA.AsString := mItensNotaCodBarra.AsString;
  cdsProdutoID_NCM.AsInteger         := mItensNotaID_NCM.AsInteger;
  cdsProdutoINATIVO.AsString         := 'N';
  cdsProdutoPERC_IPI.AsFloat         := mItensNotaAliqIPI.AsFloat;
  if mItensNotaBeneficiamento.AsString = 'S' then
    cdsProdutoTIPO_REG.AsString        := 'M'
  else
    cdsProdutoTIPO_REG.AsString        := 'P';
  if trim(mItensNotaCodProduto.AsString) <> '' then
    cdsProdutoREFERENCIA.AsString := UpperCase(mItensNotaCodProduto.AsString)
  else
  begin
    cdsProdutoREFERENCIA.AsString      := IntToStr(vAux);
    //16/02/2017
    cdsProdutoREFERENCIA_SEQ.AsInteger := vAux;
    //***********
  end;
  cdsProdutoPRECO_VENDA.AsFloat := 0;
  cdsProdutoPRECO_CUSTO.AsFloat := 0;
  if Gravar_Preco then
  begin
    if NotaEntrada then
      cdsProdutoPRECO_CUSTO.AsFloat      := mItensNotaVlrUnitario.AsFloat
    else
    if cdsProdutoTIPO_REG.AsString = 'P' then
      cdsProdutoPRECO_VENDA.AsFloat      := mItensNotaVlrUnitario.AsFloat
    else
      cdsProdutoPRECO_CUSTO.AsFloat      := mItensNotaVlrUnitario.AsFloat;
  end;
  cdsProdutoPOSSE_MATERIAL.AsString  := 'E';
  cdsProdutoESTOQUE.AsString         := 'S';
  cdsProdutoMATERIAL_OUTROS.AsString := 'M';
  cdsProdutoUSUARIO.AsString         := Usuario;
  cdsProdutoDTCAD.AsDateTime         := Date;
  cdsProdutoHRCAD.AsDateTime         := Now;
  cdsProdutoORIGEM_PROD.AsString     := mItensNotaOrigem.AsString;
  //16/02/2017
  if (cdsProdutoORIGEM_PROD.AsString = '1') or (cdsProdutoORIGEM_PROD.AsString = '2') or
     (cdsProdutoORIGEM_PROD.AsString = '3') or (cdsProdutoORIGEM_PROD.AsString = '8') then
    cdsProdutoUSA_PERC_IMP_INTERESTADUAL.AsString := 'S'
  else
    cdsProdutoUSA_PERC_IMP_INTERESTADUAL.AsString := 'N';
  //*********************
  cdsProdutoDT_ALTPRECO.AsDateTime   := Date;
  if (StrToFloat(FormatFloat('0.00',mItensNotaBaseImportacao.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.00',mItensNotaVlrImportacao.AsFloat)) > 0) then
  begin
    cdsProdutoPERC_IMPORTACAO.AsFloat := StrToFloat(FormatFloat('0.00',(mItensNotaVlrImportacao.AsFloat / mItensNotaBaseImportacao.AsFloat) * 100));
    vTexto := cdsProdutoPERC_IMPORTACAO.AsString;
    if copy(vTexto,Length(vTexto),1) = '9' then
      cdsProdutoPERC_IMPORTACAO.AsFloat := StrToFloat(FormatFloat('0.00',cdsProdutoPERC_IMPORTACAO.AsFloat + StrToFloat(FormatFloat('0.00',0.01))));
  end;
  cdsProdutoPERC_COFINS.AsFloat := StrToFloat(FormatFloat('0.00',mItensNotaAliqCofins.AsFloat));
  cdsProdutoPERC_PIS.AsFloat    := StrToFloat(FormatFloat('0.00',mItensNotaAliqPIS.AsFloat));
  if qParametrosUSA_PRODUTO_FILIAL.AsString = 'S' then
    cdsProdutoFILIAL.AsInteger := vFilial;
  cdsProdutoSPED_TIPO_ITEM.AsString := '00';
  cdsProdutoUSA_COR.AsString        := 'N';
  cdsProdutoUSA_GRADE.AsString      := 'N';
  cdsProdutoUSA_PRECO_COR.AsString  := 'N';
  cdsProdutoGERAR_WEB.AsString      := 'N';
  cdsProduto.Post;
  cdsProduto.ApplyUpdates(0);

  mItensNota.Edit;
  mItensNotaCodProdutoInterno.AsInteger := vAux;
  mItensNota.Post;
                     
  prc_Gravar_Produto_Forn;
end;

procedure TDMImportarXML.Busca_SitTrib(Codigo: String);
begin
  if Codigo = '0' then
    Codigo := '00';

  if cdsTab_CSTICMS.Locate('COD_CST',Codigo, ([LocaseInsensitive])) then
    vCSTInterno := cdsTab_CSTICMSID.AsInteger;
end;

function TDMImportarXML.fnc_Abrir_qCofins(Codigo: String): Integer;
begin
  qCofins.Close;
  qCofins.ParamByName('CODIGO').AsString := Codigo;
  qCofins.Open;
  if qCofins.IsEmpty then
    Result := 0
  else
    Result := qCofinsID.AsInteger;
end;

function TDMImportarXML.fnc_Abrir_qCSTIcms(Codigo: String): Integer;
begin
  qCSTIcms.Close;
  qCSTIcms.ParamByName('COD_CST').AsString := Codigo;
  qCSTIcms.Open;
  if qCSTIcms.IsEmpty then
    Result := 0
  else
    Result := qCSTIcmsID.AsInteger;
end;

function TDMImportarXML.fnc_Abrir_qCSTIPI(Codigo: String): Integer;
begin
  qCSTIpi.Close;
  qCSTIpi.ParamByName('COD_IPI').AsString := Codigo;
  qCSTIpi.Open;
  if qCSTIpi.IsEmpty then
    Result := 0
  else
    Result := qCSTIpiID.AsInteger;
end;

function TDMImportarXML.fnc_Abrir_qPis(Codigo: String): Integer;
begin
  qPis.Close;
  qPis.ParamByName('CODIGO').AsString := Codigo;
  qPis.Open;
  if qPis.IsEmpty then
    Result := 0
  else
    Result := qPisID.AsInteger;
end;

procedure TDMImportarXML.prc_Gravar_Produto_Forn;
var
  vAux : String;
  vItem, vAux2 : Integer;
begin
  vAux2 := fnc_Abrir_Produto_Forn(mItensNotaCodProduto.AsString,vID_Fornecedor,'');
  if vAux2 > 0 then
    exit;
  vAux := '';
  if trim(mItensNotaCodProduto.AsString) <> '' then
    vAux := mItensNotaCodProduto.AsString;
  qProduto_Forn.Close;
  qProduto_Forn.ParamByName('ID').AsInteger := mItensNotaCodProdutoInterno.AsInteger;
  qProduto_Forn.Open;
  vItem := qProduto_FornITEM.AsInteger + 1;
  begin
    cdsProduto_Forn.Insert;
    cdsProduto_FornID.AsInteger   := mItensNotaCodProdutoInterno.AsInteger;
    cdsProduto_FornITEM.AsInteger := vItem;
    if mRegistroID.AsInteger > 0 then
      cdsProduto_FornID_FORNECEDOR.AsInteger := mRegistroID.AsInteger
    else
      cdsProduto_FornID_FORNECEDOR.AsInteger := vID_Fornecedor;
    cdsProduto_FornNOME_MATERIAL_FORN.AsString := mItensNotaNomeProduto.AsString;
    cdsProduto_FornCOD_MATERIAL_FORN.AsString  := vaux;
    cdsProduto_FornTAMANHO.AsString            := '';
    if mItensNotaCodBarra.AsString <> 'SEM GTIN' then
      cdsProduto_FornCOD_BARRA.AsString          := mItensNotaCodBarra.AsString;
    cdsProduto_FornPRECO_CUSTO.AsFloat         := mItensNotaVlrUnitario.AsFloat;
    cdsProduto_Forn.Post;
    cdsProduto_Forn.ApplyUpdates(0);
  end;
end;

procedure TDMImportarXML.cdsProdutoNewRecord(DataSet: TDataSet);
begin
  cdsProdutoUSA_GRADE.AsString := 'N';
end;

procedure TDMImportarXML.mItensNotaBeforePost(DataSet: TDataSet);
begin
  if (mItensNota.State in [dsInsert]) or (mItensNotaCodProdutoInterno.AsInteger <> vID_Produto) then
  begin
    if (mItensNota.State in [dsEdit]) and (mItensNotaCodProdutoInterno.AsInteger > 0) then
      vQtd_Produto_NaoEncontrado := vQtd_Produto_NaoEncontrado - 1;
    if mItensNotaCodProdutoInterno.AsInteger <= 0 then
      vQtd_Produto_NaoEncontrado := vQtd_Produto_NaoEncontrado + 1;
  end;
end;

procedure TDMImportarXML.mRegistroBeforePost(DataSet: TDataSet);
begin
  if (mRegistroID.AsInteger <= 0) or (mRegistroID_Cidade.AsInteger <= 0) or (mRegistroID_Pais.AsInteger <= 0) then
    vCliente_OK := False
  else
    vCliente_OK := True;
end;

procedure TDMImportarXML.mDadosImp_AdiBeforePost(DataSet: TDataSet);
begin
  if (mDadosImp_Adi.State in [dsInsert]) or (mDadosImp_AdiCodFabricante.AsString <> vCodFabricante) then
  begin
    if (mDadosImp_Adi.State in [dsEdit]) and (trim(mDadosImp_AdiCodFabricante.AsString) <> '') then
      vQtd_Adicao_Erro := vQtd_Adicao_Erro - 1;
    if trim(mDadosImp_AdiCodFabricante.AsString) = '' then
      vQtd_Adicao_Erro := vQtd_Adicao_Erro + 1;
  end;
end;

procedure TDMImportarXML.mItensNotaAfterEdit(DataSet: TDataSet);
begin
  vID_Produto := mItensNotaCodProdutoInterno.AsInteger;
end;

procedure TDMImportarXML.mDadosImp_AdiAfterEdit(DataSet: TDataSet);
begin
  vCodFabricante := mDadosImp_AdiCodFabricante.AsString;
end;

end.
