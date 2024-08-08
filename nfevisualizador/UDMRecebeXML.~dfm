object DMRecebeXML: TDMRecebeXML
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 65529
  Top = 30
  Height = 678
  Width = 1334
  object sdsCFOP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_CFOP'#13#10'WHERE INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 361
    Top = 7
  end
  object dspCFOP: TDataSetProvider
    DataSet = sdsCFOP
    Left = 392
    Top = 7
  end
  object cdsCFOP: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODCFOP'
    Params = <>
    ProviderName = 'dspCFOP'
    Left = 434
    Top = 7
    object cdsCFOPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCFOPCODCFOP: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'CODCFOP'
      Size = 5
    end
    object cdsCFOPNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 50
    end
    object cdsCFOPGERAR_IPI: TStringField
      DisplayLabel = 'Gerar IPI'
      FieldName = 'GERAR_IPI'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPGERAR_ICMS: TStringField
      DisplayLabel = 'Gerar ICMS'
      FieldName = 'GERAR_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPGERAR_DUPLICATA: TStringField
      DisplayLabel = 'Gerar Duplicata'
      FieldName = 'GERAR_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPSOMAR_VLRTOTALPRODUTO: TStringField
      DisplayLabel = 'Somar no Vlr. dos Produtos'
      FieldName = 'SOMAR_VLRTOTALPRODUTO'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPNOME_INTERNO: TStringField
      DisplayLabel = 'Nome Interno'
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object cdsCFOPID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object cdsCFOPID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsCFOPCOPIARNOTATRIANGULAR: TStringField
      FieldName = 'COPIARNOTATRIANGULAR'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object cdsCFOPID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object cdsCFOPTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      Size = 2
    end
    object cdsCFOPTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      Size = 2
    end
    object cdsCFOPGERAR_ICMS_SIMPLES: TStringField
      DisplayLabel = 'Gerar ICMS Simples'
      FieldName = 'GERAR_ICMS_SIMPLES'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPTIPO_EMPRESA: TStringField
      DisplayLabel = 'Tipo Empresa'
      FieldName = 'TIPO_EMPRESA'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPSUBSTITUICAO_TRIB: TStringField
      FieldName = 'SUBSTITUICAO_TRIB'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPMVA: TStringField
      FieldName = 'MVA'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object cdsCFOPPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object cdsCFOPLEI: TMemoField
      FieldName = 'LEI'
      BlobType = ftMemo
      Size = 1
    end
    object cdsCFOPBENEFICIAMENTO: TStringField
      DisplayLabel = 'Beneficiamento'
      FieldName = 'BENEFICIAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPGERAR_ESTOQUE: TStringField
      FieldName = 'GERAR_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPTIPO_IND_VEN: TStringField
      FieldName = 'TIPO_IND_VEN'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPALT_NCM_CUSTO: TStringField
      FieldName = 'ALT_NCM_CUSTO'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPMARCAR_NCM_ST: TStringField
      FieldName = 'MARCAR_NCM_ST'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPALT_CUSTO: TStringField
      FieldName = 'ALT_CUSTO'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPUSA_NAO_CONTR_FISICA: TStringField
      FieldName = 'USA_NAO_CONTR_FISICA'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPCONTROLA_FINALIDADE: TStringField
      FieldName = 'CONTROLA_FINALIDADE'
      Size = 1
    end
    object cdsCFOPCREDITA_ST: TStringField
      FieldName = 'CREDITA_ST'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPALT_VENDA: TStringField
      FieldName = 'ALT_VENDA'
      FixedChar = True
      Size = 1
    end
  end
  object dsCFOP: TDataSource
    DataSet = cdsCFOP
    Left = 472
    Top = 7
  end
  object XMLTransformProvider1: TXMLTransformProvider
    TransformRead.TransformationFile = 'C:\Delphi7\SSFacil\EXE\nfe_v2.00_ToDp.xtr'
    XMLDataFile = 
      'C:\A\Supplier\NFe_REAL CENTER MATERIAIS E EQUIP. ELETR. LTDA_003' +
      '_175713.xml'
    Left = 1211
    Top = 251
  end
  object cdsCabecalho: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'XMLTransformProvider1'
    Left = 829
    Top = 330
    object cdsCabecalhoversao: TStringField
      FieldName = 'versao'
      Required = True
      Size = 6
    end
    object cdsCabecalhoinfNFe_Id: TStringField
      FieldName = 'infNFe_Id'
      Required = True
      Size = 47
    end
    object cdsCabecalhocUF: TIntegerField
      FieldName = 'cUF'
    end
    object cdsCabecalhocNF: TIntegerField
      FieldName = 'cNF'
    end
    object cdsCabecalhonatOp: TStringField
      FieldName = 'natOp'
      Size = 60
    end
    object cdsCabecalhoindPag: TIntegerField
      FieldName = 'indPag'
    end
    object cdsCabecalhomod: TStringField
      FieldName = 'mod'
      Size = 3
    end
    object cdsCabecalhoserie: TIntegerField
      FieldName = 'serie'
    end
    object cdsCabecalhonNF: TIntegerField
      FieldName = 'nNF'
    end
    object cdsCabecalhodSaiEnt: TDateField
      FieldName = 'dSaiEnt'
    end
    object cdsCabecalhohSaiEnt: TStringField
      FieldName = 'hSaiEnt'
      Size = 8
    end
    object cdsCabecalhotpNF: TIntegerField
      FieldName = 'tpNF'
    end
    object cdsCabecalhoIEST: TStringField
      FieldName = 'IEST'
      Size = 14
    end
    object cdsCabecalhocMunFG1: TIntegerField
      FieldName = 'cMunFG1'
    end
    object cdsCabecalhotpImp: TIntegerField
      FieldName = 'tpImp'
    end
    object cdsCabecalhotpEmis: TIntegerField
      FieldName = 'tpEmis'
    end
    object cdsCabecalhocDV: TIntegerField
      FieldName = 'cDV'
    end
    object cdsCabecalhotpAmb: TStringField
      FieldName = 'tpAmb'
      Size = 31
    end
    object cdsCabecalhofinNFe: TIntegerField
      FieldName = 'finNFe'
    end
    object cdsCabecalhoprocEmi: TIntegerField
      FieldName = 'procEmi'
    end
    object cdsCabecalhoverProc: TStringField
      FieldName = 'verProc'
    end
    object cdsCabecalhodhCont: TDateField
      FieldName = 'dhCont'
    end
    object cdsCabecalhoxJust: TStringField
      FieldName = 'xJust'
      Size = 256
    end
    object cdsCabecalhoemit_CNPJ: TStringField
      FieldName = 'emit_CNPJ'
      Size = 14
    end
    object cdsCabecalhoemit_CPF: TStringField
      FieldName = 'emit_CPF'
      Size = 11
    end
    object cdsCabecalhoemit_xNome: TStringField
      FieldName = 'emit_xNome'
      Size = 60
    end
    object cdsCabecalhoxFant: TStringField
      FieldName = 'xFant'
      Size = 60
    end
    object cdsCabecalhoenderEmit_xLgr: TStringField
      FieldName = 'enderEmit_xLgr'
      Size = 60
    end
    object cdsCabecalhoenderEmit_nro: TStringField
      FieldName = 'enderEmit_nro'
      Size = 60
    end
    object cdsCabecalhoenderEmit_xCpl: TStringField
      FieldName = 'enderEmit_xCpl'
      Size = 60
    end
    object cdsCabecalhoenderEmit_xBairro: TStringField
      FieldName = 'enderEmit_xBairro'
      Size = 60
    end
    object cdsCabecalhoenderEmit_cMun: TIntegerField
      FieldName = 'enderEmit_cMun'
    end
    object cdsCabecalhoenderEmit_xMun: TStringField
      FieldName = 'enderEmit_xMun'
      Size = 60
    end
    object cdsCabecalhoenderEmit_UF: TStringField
      FieldName = 'enderEmit_UF'
      Size = 3
    end
    object cdsCabecalhoenderEmit_CEP: TIntegerField
      FieldName = 'enderEmit_CEP'
    end
    object cdsCabecalhoenderEmit_cPais: TIntegerField
      FieldName = 'enderEmit_cPais'
    end
    object cdsCabecalhoenderEmit_xPais: TStringField
      FieldName = 'enderEmit_xPais'
      Size = 60
    end
    object cdsCabecalhoenderEmit_fone: TStringField
      FieldName = 'enderEmit_fone'
    end
    object cdsCabecalhoemit_IE: TStringField
      FieldName = 'emit_IE'
      Size = 14
    end
    object cdsCabecalhoIM: TStringField
      FieldName = 'IM'
      Size = 15
    end
    object cdsCabecalhoCNAE: TStringField
      FieldName = 'CNAE'
      Size = 7
    end
    object cdsCabecalhoCRT: TIntegerField
      FieldName = 'CRT'
    end
    object cdsCabecalhoavulsa_CNPJ: TStringField
      FieldName = 'avulsa_CNPJ'
      Size = 14
    end
    object cdsCabecalhoxOrgao: TStringField
      FieldName = 'xOrgao'
      Size = 60
    end
    object cdsCabecalhomatr: TStringField
      FieldName = 'matr'
      Size = 60
    end
    object cdsCabecalhoxAgente: TStringField
      FieldName = 'xAgente'
      Size = 60
    end
    object cdsCabecalhofone: TStringField
      FieldName = 'fone'
    end
    object cdsCabecalhoavulsa_UF: TStringField
      FieldName = 'avulsa_UF'
      Size = 3
    end
    object cdsCabecalhonDAR: TStringField
      FieldName = 'nDAR'
      Size = 60
    end
    object cdsCabecalhoavulsa_dEmi: TDateField
      FieldName = 'avulsa_dEmi'
    end
    object cdsCabecalhovDAR: TFloatField
      FieldName = 'vDAR'
    end
    object cdsCabecalhorepEmi: TStringField
      FieldName = 'repEmi'
      Size = 60
    end
    object cdsCabecalhodPag: TDateField
      FieldName = 'dPag'
    end
    object cdsCabecalhodest_CNPJ: TStringField
      FieldName = 'dest_CNPJ'
      Size = 14
    end
    object cdsCabecalhodest_CPF: TStringField
      FieldName = 'dest_CPF'
      Size = 11
    end
    object cdsCabecalhodest_xNome: TStringField
      FieldName = 'dest_xNome'
      Size = 60
    end
    object cdsCabecalhoenderDest_xLgr: TStringField
      FieldName = 'enderDest_xLgr'
      Size = 60
    end
    object cdsCabecalhoenderDest_nro: TStringField
      FieldName = 'enderDest_nro'
      Size = 60
    end
    object cdsCabecalhoenderDest_xCpl: TStringField
      FieldName = 'enderDest_xCpl'
      Size = 60
    end
    object cdsCabecalhoenderDest_xBairro: TStringField
      FieldName = 'enderDest_xBairro'
      Size = 60
    end
    object cdsCabecalhoenderDest_cMun: TIntegerField
      FieldName = 'enderDest_cMun'
    end
    object cdsCabecalhoenderDest_xMun: TStringField
      FieldName = 'enderDest_xMun'
      Size = 60
    end
    object cdsCabecalhoenderDest_UF: TStringField
      FieldName = 'enderDest_UF'
      Size = 3
    end
    object cdsCabecalhoenderDest_CEP: TIntegerField
      FieldName = 'enderDest_CEP'
    end
    object cdsCabecalhoenderDest_cPais: TIntegerField
      FieldName = 'enderDest_cPais'
    end
    object cdsCabecalhoenderDest_xPais: TStringField
      FieldName = 'enderDest_xPais'
      Size = 60
    end
    object cdsCabecalhoenderDest_fone: TStringField
      FieldName = 'enderDest_fone'
    end
    object cdsCabecalhodest_IE: TStringField
      FieldName = 'dest_IE'
      Size = 14
    end
    object cdsCabecalhoISUF: TStringField
      FieldName = 'ISUF'
      Size = 9
    end
    object cdsCabecalhoemail: TStringField
      FieldName = 'email'
      Size = 60
    end
    object cdsCabecalhoretirada_CNPJ: TStringField
      FieldName = 'retirada_CNPJ'
      Size = 14
    end
    object cdsCabecalhoretirada_CPF: TStringField
      FieldName = 'retirada_CPF'
      Size = 11
    end
    object cdsCabecalhoretirada_xLgr: TStringField
      FieldName = 'retirada_xLgr'
      Size = 60
    end
    object cdsCabecalhoretirada_nro: TStringField
      FieldName = 'retirada_nro'
      Size = 60
    end
    object cdsCabecalhoretirada_xCpl: TStringField
      FieldName = 'retirada_xCpl'
      Size = 60
    end
    object cdsCabecalhoretirada_xBairro: TStringField
      FieldName = 'retirada_xBairro'
      Size = 60
    end
    object cdsCabecalhoretirada_cMun: TIntegerField
      FieldName = 'retirada_cMun'
    end
    object cdsCabecalhoretirada_xMun: TStringField
      FieldName = 'retirada_xMun'
      Size = 60
    end
    object cdsCabecalhoretirada_UF: TStringField
      FieldName = 'retirada_UF'
      Size = 3
    end
    object cdsCabecalhoentrega_CNPJ: TStringField
      FieldName = 'entrega_CNPJ'
      Size = 14
    end
    object cdsCabecalhoentrega_CPF: TStringField
      FieldName = 'entrega_CPF'
      Size = 11
    end
    object cdsCabecalhoentrega_xLgr: TStringField
      FieldName = 'entrega_xLgr'
      Size = 60
    end
    object cdsCabecalhoentrega_nro: TStringField
      FieldName = 'entrega_nro'
      Size = 60
    end
    object cdsCabecalhoentrega_xCpl: TStringField
      FieldName = 'entrega_xCpl'
      Size = 60
    end
    object cdsCabecalhoentrega_xBairro: TStringField
      FieldName = 'entrega_xBairro'
      Size = 60
    end
    object cdsCabecalhoentrega_cMun: TIntegerField
      FieldName = 'entrega_cMun'
    end
    object cdsCabecalhoentrega_xMun: TStringField
      FieldName = 'entrega_xMun'
      Size = 60
    end
    object cdsCabecalhoentrega_UF: TStringField
      FieldName = 'entrega_UF'
      Size = 3
    end
    object cdsCabecalhoICMSTot_vBC: TFloatField
      FieldName = 'ICMSTot_vBC'
    end
    object cdsCabecalhovICMS: TFloatField
      FieldName = 'vICMS'
    end
    object cdsCabecalhovBCST: TFloatField
      FieldName = 'vBCST'
    end
    object cdsCabecalhovST: TFloatField
      FieldName = 'vST'
    end
    object cdsCabecalhovProd: TFloatField
      FieldName = 'vProd'
    end
    object cdsCabecalhovFrete: TFloatField
      FieldName = 'vFrete'
    end
    object cdsCabecalhovSeg: TFloatField
      FieldName = 'vSeg'
    end
    object cdsCabecalhoICMSTot_vDesc: TFloatField
      FieldName = 'ICMSTot_vDesc'
    end
    object cdsCabecalhovII: TFloatField
      FieldName = 'vII'
    end
    object cdsCabecalhovIPI: TFloatField
      FieldName = 'vIPI'
    end
    object cdsCabecalhoICMSTot_vPIS: TFloatField
      FieldName = 'ICMSTot_vPIS'
    end
    object cdsCabecalhoICMSTot_vCOFINS: TFloatField
      FieldName = 'ICMSTot_vCOFINS'
    end
    object cdsCabecalhovOutro: TFloatField
      FieldName = 'vOutro'
    end
    object cdsCabecalhovNF: TFloatField
      FieldName = 'vNF'
      DisplayFormat = '0.00'
    end
    object cdsCabecalhoISSQNtot_vServ: TFloatField
      FieldName = 'ISSQNtot_vServ'
    end
    object cdsCabecalhoISSQNtot_vBC: TFloatField
      FieldName = 'ISSQNtot_vBC'
    end
    object cdsCabecalhovISS: TFloatField
      FieldName = 'vISS'
    end
    object cdsCabecalhoISSQNtot_vPIS: TFloatField
      FieldName = 'ISSQNtot_vPIS'
    end
    object cdsCabecalhoISSQNtot_vCOFINS: TFloatField
      FieldName = 'ISSQNtot_vCOFINS'
    end
    object cdsCabecalhovRetPIS: TFloatField
      FieldName = 'vRetPIS'
    end
    object cdsCabecalhovRetCOFINS: TFloatField
      FieldName = 'vRetCOFINS'
    end
    object cdsCabecalhovRetCSLL: TFloatField
      FieldName = 'vRetCSLL'
    end
    object cdsCabecalhovBCIRRF: TFloatField
      FieldName = 'vBCIRRF'
    end
    object cdsCabecalhovIRRF: TFloatField
      FieldName = 'vIRRF'
    end
    object cdsCabecalhovBCRetPrev: TFloatField
      FieldName = 'vBCRetPrev'
    end
    object cdsCabecalhovRetPrev: TFloatField
      FieldName = 'vRetPrev'
    end
    object cdsCabecalhomodFrete: TIntegerField
      FieldName = 'modFrete'
    end
    object cdsCabecalhoCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object cdsCabecalhoCPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object cdsCabecalhoxNome: TStringField
      FieldName = 'xNome'
      Size = 60
    end
    object cdsCabecalhoIE: TStringField
      FieldName = 'IE'
      Size = 14
    end
    object cdsCabecalhoxEnder: TStringField
      FieldName = 'xEnder'
      Size = 60
    end
    object cdsCabecalhotransporta_xMun: TStringField
      FieldName = 'transporta_xMun'
      Size = 60
    end
    object cdsCabecalhotransporta_UF: TStringField
      FieldName = 'transporta_UF'
      Size = 3
    end
    object cdsCabecalhoretTransp_vServ: TFloatField
      FieldName = 'retTransp_vServ'
    end
    object cdsCabecalhovBCRet: TFloatField
      FieldName = 'vBCRet'
    end
    object cdsCabecalhopICMSRet: TFloatField
      FieldName = 'pICMSRet'
    end
    object cdsCabecalhovICMSRet: TFloatField
      FieldName = 'vICMSRet'
    end
    object cdsCabecalhoCFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object cdsCabecalhocMunFG2: TIntegerField
      FieldName = 'cMunFG2'
    end
    object cdsCabecalhoveicTransp_placa: TStringField
      FieldName = 'veicTransp_placa'
      Size = 8
    end
    object cdsCabecalhoveicTransp_UF: TStringField
      FieldName = 'veicTransp_UF'
      Size = 3
    end
    object cdsCabecalhoveicTransp_RNTC: TStringField
      FieldName = 'veicTransp_RNTC'
    end
    object cdsCabecalhoreboque_placa: TStringField
      FieldName = 'reboque_placa'
      Size = 8
    end
    object cdsCabecalhoreboque_UF: TStringField
      FieldName = 'reboque_UF'
      Size = 3
    end
    object cdsCabecalhoreboque_RNTC: TStringField
      FieldName = 'reboque_RNTC'
    end
    object cdsCabecalhovagao: TStringField
      FieldName = 'vagao'
    end
    object cdsCabecalhobalsa: TStringField
      FieldName = 'balsa'
    end
    object cdsCabecalhonFat: TStringField
      FieldName = 'nFat'
      Size = 60
    end
    object cdsCabecalhovOrig: TFloatField
      FieldName = 'vOrig'
    end
    object cdsCabecalhofat_vDesc: TFloatField
      FieldName = 'fat_vDesc'
    end
    object cdsCabecalhovLiq: TFloatField
      FieldName = 'vLiq'
    end
    object cdsCabecalhoinfAdFisco: TStringField
      FieldName = 'infAdFisco'
      Size = 2000
    end
    object cdsCabecalhoinfCpl: TStringField
      FieldName = 'infCpl'
      Size = 5000
    end
    object cdsCabecalhoobsCont_xCampo: TStringField
      FieldName = 'obsCont_xCampo'
      Required = True
    end
    object cdsCabecalhoobsCont_xTexto: TStringField
      FieldName = 'obsCont_xTexto'
      Size = 60
    end
    object cdsCabecalhoobsFisco_xCampo: TStringField
      FieldName = 'obsFisco_xCampo'
      Required = True
    end
    object cdsCabecalhoobsFisco_xTexto: TStringField
      FieldName = 'obsFisco_xTexto'
      Size = 60
    end
    object cdsCabecalhoUFEmbarq: TStringField
      FieldName = 'UFEmbarq'
      Size = 3
    end
    object cdsCabecalhoxLocEmbarq: TStringField
      FieldName = 'xLocEmbarq'
      Size = 60
    end
    object cdsCabecalhoxNEmp: TStringField
      FieldName = 'xNEmp'
      Size = 17
    end
    object cdsCabecalhoxPed: TStringField
      FieldName = 'xPed'
      Size = 60
    end
    object cdsCabecalhoxCont: TStringField
      FieldName = 'xCont'
      Size = 60
    end
    object cdsCabecalhoSignature_Id: TStringField
      FieldName = 'Signature_Id'
      Required = True
      Size = 47
    end
    object cdsCabecalhoSignedInfo_Id: TStringField
      FieldName = 'SignedInfo_Id'
      Required = True
      Size = 47
    end
    object cdsCabecalhoAlgorithm1: TStringField
      FieldName = 'Algorithm1'
      Required = True
      Size = 31
    end
    object cdsCabecalhoSignatureMethod_Algorithm: TStringField
      FieldName = 'SignatureMethod_Algorithm'
      Required = True
      Size = 31
    end
    object cdsCabecalhoId: TStringField
      FieldName = 'Id'
      Required = True
      Size = 47
    end
    object cdsCabecalhoURI: TStringField
      FieldName = 'URI'
      Required = True
      Size = 31
    end
    object cdsCabecalhoType: TStringField
      FieldName = 'Type'
      Size = 31
    end
    object cdsCabecalhoAlgorithm2: TStringField
      FieldName = 'Algorithm2'
      Required = True
      Size = 31
    end
    object cdsCabecalhoXPath: TStringField
      FieldName = 'XPath'
      Size = 31
    end
    object cdsCabecalhoAlgorithm3: TStringField
      FieldName = 'Algorithm3'
      Required = True
      Size = 31
    end
    object cdsCabecalhoDigestValue: TStringField
      FieldName = 'DigestValue'
      Size = 31
    end
    object cdsCabecalhoSignatureValue_Id: TStringField
      FieldName = 'SignatureValue_Id'
      Required = True
      Size = 47
    end
    object cdsCabecalhoKeyInfo_Id: TStringField
      FieldName = 'KeyInfo_Id'
      Required = True
      Size = 47
    end
    object cdsCabecalhoX509Certificate: TStringField
      FieldName = 'X509Certificate'
      Size = 31
    end
    object cdsCabecalhoNFref: TDataSetField
      FieldName = 'NFref'
      UnNamed = True
    end
    object cdsCabecalhodet: TDataSetField
      FieldName = 'det'
      UnNamed = True
    end
    object cdsCabecalhovol: TDataSetField
      FieldName = 'vol'
      UnNamed = True
    end
    object cdsCabecalhodup: TDataSetField
      FieldName = 'dup'
      UnNamed = True
    end
    object cdsCabecalhoprocRef: TDataSetField
      FieldName = 'procRef'
      UnNamed = True
    end
    object cdsCabecalhoprotNFe: TDataSetField
      FieldName = 'protNFe'
      UnNamed = True
    end
    object cdsCabecalhoide_dhemi: TStringField
      FieldName = 'ide_dhemi'
      Size = 25
    end
    object cdsCabecalhoide_dEmi: TDateField
      FieldName = 'ide_dEmi'
    end
    object cdsCabecalhoavulsa_dhEmi: TStringField
      FieldName = 'avulsa_dhEmi'
      Size = 25
    end
  end
  object dsCabecalho: TDataSource
    DataSet = cdsCabecalho
    Left = 856
    Top = 328
  end
  object cdsNFeRef: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCabecalhoNFref
    Params = <>
    Left = 831
    Top = 281
    object cdsNFeRefrefNFe: TIntegerField
      FieldName = 'refNFe'
    end
    object cdsNFeRefrefNF_cUF: TIntegerField
      FieldName = 'refNF_cUF'
    end
    object cdsNFeRefrefNF_AAMM: TIntegerField
      FieldName = 'refNF_AAMM'
    end
    object cdsNFeRefrefNF_CNPJ: TStringField
      FieldName = 'refNF_CNPJ'
      Size = 14
    end
    object cdsNFeRefrefNF_mod: TStringField
      FieldName = 'refNF_mod'
      Size = 3
    end
    object cdsNFeRefrefNF_serie: TIntegerField
      FieldName = 'refNF_serie'
    end
    object cdsNFeRefrefNF_nNF: TIntegerField
      FieldName = 'refNF_nNF'
    end
    object cdsNFeRefrefNFP_cUF: TIntegerField
      FieldName = 'refNFP_cUF'
    end
    object cdsNFeRefrefNFP_AAMM: TIntegerField
      FieldName = 'refNFP_AAMM'
    end
    object cdsNFeRefrefNFP_CNPJ: TStringField
      FieldName = 'refNFP_CNPJ'
      Size = 14
    end
    object cdsNFeRefCPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object cdsNFeRefIE: TStringField
      FieldName = 'IE'
      Size = 14
    end
    object cdsNFeRefrefNFP_mod: TStringField
      FieldName = 'refNFP_mod'
      Size = 3
    end
    object cdsNFeRefrefNFP_serie: TIntegerField
      FieldName = 'refNFP_serie'
    end
    object cdsNFeRefrefNFP_nNF: TIntegerField
      FieldName = 'refNFP_nNF'
    end
    object cdsNFeRefrefCTe: TIntegerField
      FieldName = 'refCTe'
    end
    object cdsNFeRefrefECF_mod: TStringField
      FieldName = 'refECF_mod'
      Size = 3
    end
    object cdsNFeRefnECF: TIntegerField
      FieldName = 'nECF'
    end
    object cdsNFeRefnCOO: TIntegerField
      FieldName = 'nCOO'
    end
  end
  object cdsNFeProtocolo: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCabecalhoprotNFe
    Params = <>
    Left = 928
    Top = 280
    object cdsNFeProtocoloversao: TStringField
      FieldName = 'versao'
      Required = True
      Size = 6
    end
    object cdsNFeProtocoloId: TStringField
      FieldName = 'Id'
      Required = True
      Size = 47
    end
    object cdsNFeProtocolotpAmb: TStringField
      FieldName = 'tpAmb'
      Size = 31
    end
    object cdsNFeProtocoloverAplic: TStringField
      FieldName = 'verAplic'
    end
    object cdsNFeProtocolochNFe: TStringField
      FieldName = 'chNFe'
      Size = 45
    end
    object cdsNFeProtocolodhRecbto: TStringField
      FieldName = 'dhRecbto'
      Size = 31
    end
    object cdsNFeProtocolonProt: TStringField
      FieldName = 'nProt'
      Size = 31
    end
    object cdsNFeProtocolodigVal: TStringField
      FieldName = 'digVal'
      Size = 31
    end
    object cdsNFeProtocolocStat: TStringField
      FieldName = 'cStat'
      Size = 31
    end
    object cdsNFeProtocoloxMotivo: TStringField
      FieldName = 'xMotivo'
      Size = 255
    end
  end
  object dsNFeProtocolo: TDataSource
    DataSet = cdsNFeProtocolo
    Left = 960
    Top = 280
  end
  object dsNFeRef: TDataSource
    DataSet = cdsNFeRef
    Left = 856
    Top = 280
  end
  object dsParcelas: TDataSource
    DataSet = cdsParcelas
    Left = 952
    Top = 376
  end
  object cdsParcelas: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCabecalhodup
    Params = <>
    Left = 928
    Top = 376
    object cdsParcelasnDup: TStringField
      FieldName = 'nDup'
      Size = 60
    end
    object cdsParcelasdVenc: TDateField
      FieldName = 'dVenc'
    end
    object cdsParcelasvDup: TFloatField
      FieldName = 'vDup'
      DisplayFormat = '##0.00'
    end
  end
  object cdsDetalhe: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCabecalhodet
    Params = <>
    Left = 833
    Top = 376
    object cdsDetalhenItem: TIntegerField
      FieldName = 'nItem'
      Required = True
    end
    object cdsDetalhecProd: TStringField
      FieldName = 'cProd'
      Size = 60
    end
    object cdsDetalhecEAN: TStringField
      FieldName = 'cEAN'
      Size = 14
    end
    object cdsDetalhexProd: TStringField
      FieldName = 'xProd'
      Size = 120
    end
    object cdsDetalheNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object cdsDetalheEXTIPI: TStringField
      FieldName = 'EXTIPI'
      Size = 3
    end
    object cdsDetalheCFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object cdsDetalheuCom: TStringField
      FieldName = 'uCom'
      Size = 6
    end
    object cdsDetalheqCom: TFloatField
      FieldName = 'qCom'
    end
    object cdsDetalhevUnCom: TFloatField
      FieldName = 'vUnCom'
    end
    object cdsDetalhevProd: TFloatField
      FieldName = 'vProd'
    end
    object cdsDetalhecEANTrib: TStringField
      FieldName = 'cEANTrib'
      Size = 14
    end
    object cdsDetalheuTrib: TStringField
      FieldName = 'uTrib'
      Size = 6
    end
    object cdsDetalheqTrib: TFloatField
      FieldName = 'qTrib'
    end
    object cdsDetalhevUnTrib: TFloatField
      FieldName = 'vUnTrib'
    end
    object cdsDetalhevFrete: TFloatField
      FieldName = 'vFrete'
    end
    object cdsDetalhevSeg: TFloatField
      FieldName = 'vSeg'
    end
    object cdsDetalhevDesc: TFloatField
      FieldName = 'vDesc'
    end
    object cdsDetalhevOutro: TFloatField
      FieldName = 'vOutro'
    end
    object cdsDetalheindTot: TIntegerField
      FieldName = 'indTot'
    end
    object cdsDetalhexPed: TStringField
      FieldName = 'xPed'
      Size = 60
    end
    object cdsDetalhenItemPed: TIntegerField
      FieldName = 'nItemPed'
    end
    object cdsDetalhetpOp: TIntegerField
      FieldName = 'tpOp'
    end
    object cdsDetalhechassi: TStringField
      FieldName = 'chassi'
      Size = 17
    end
    object cdsDetalhecCor: TStringField
      FieldName = 'cCor'
      Size = 4
    end
    object cdsDetalhexCor: TStringField
      FieldName = 'xCor'
      Size = 40
    end
    object cdsDetalhepot: TStringField
      FieldName = 'pot'
      Size = 4
    end
    object cdsDetalhecilin: TStringField
      FieldName = 'cilin'
      Size = 4
    end
    object cdsDetalhepesoL: TFloatField
      FieldName = 'pesoL'
    end
    object cdsDetalhepesoB: TFloatField
      FieldName = 'pesoB'
    end
    object cdsDetalhenSerie: TStringField
      FieldName = 'nSerie'
      Size = 9
    end
    object cdsDetalhetpComb: TStringField
      FieldName = 'tpComb'
      Size = 2
    end
    object cdsDetalhenMotor: TStringField
      FieldName = 'nMotor'
      Size = 21
    end
    object cdsDetalheCMT: TStringField
      FieldName = 'CMT'
      Size = 9
    end
    object cdsDetalhedist: TStringField
      FieldName = 'dist'
      Size = 4
    end
    object cdsDetalheanoMod: TIntegerField
      FieldName = 'anoMod'
    end
    object cdsDetalheanoFab: TIntegerField
      FieldName = 'anoFab'
    end
    object cdsDetalhetpPint: TStringField
      FieldName = 'tpPint'
      Size = 3
    end
    object cdsDetalhetpVeic: TIntegerField
      FieldName = 'tpVeic'
    end
    object cdsDetalheespVeic: TIntegerField
      FieldName = 'espVeic'
    end
    object cdsDetalheVIN: TStringField
      FieldName = 'VIN'
      Size = 3
    end
    object cdsDetalhecondVeic: TIntegerField
      FieldName = 'condVeic'
    end
    object cdsDetalhecMod: TIntegerField
      FieldName = 'cMod'
    end
    object cdsDetalhecCorDENATRAN: TIntegerField
      FieldName = 'cCorDENATRAN'
    end
    object cdsDetalhelota: TIntegerField
      FieldName = 'lota'
    end
    object cdsDetalhetpRest: TIntegerField
      FieldName = 'tpRest'
    end
    object cdsDetalhecProdANP: TIntegerField
      FieldName = 'cProdANP'
    end
    object cdsDetalheCODIF: TIntegerField
      FieldName = 'CODIF'
    end
    object cdsDetalheqTemp: TFloatField
      FieldName = 'qTemp'
    end
    object cdsDetalheUFCons: TStringField
      FieldName = 'UFCons'
      Size = 3
    end
    object cdsDetalheCIDE_qBCProd: TFloatField
      FieldName = 'CIDE_qBCProd'
    end
    object cdsDetalheCIDE_vAliqProd: TFloatField
      FieldName = 'CIDE_vAliqProd'
    end
    object cdsDetalhevCIDE: TFloatField
      FieldName = 'vCIDE'
    end
    object cdsDetalheICMS00_orig: TIntegerField
      FieldName = 'ICMS00_orig'
    end
    object cdsDetalheICMS00_CST: TIntegerField
      FieldName = 'ICMS00_CST'
    end
    object cdsDetalheICMS00_modBC: TIntegerField
      FieldName = 'ICMS00_modBC'
    end
    object cdsDetalheICMS00_vBC: TFloatField
      FieldName = 'ICMS00_vBC'
    end
    object cdsDetalheICMS00_pICMS: TFloatField
      FieldName = 'ICMS00_pICMS'
    end
    object cdsDetalheICMS00_vICMS: TFloatField
      FieldName = 'ICMS00_vICMS'
    end
    object cdsDetalheICMS10_orig: TIntegerField
      FieldName = 'ICMS10_orig'
    end
    object cdsDetalheICMS10_CST: TIntegerField
      FieldName = 'ICMS10_CST'
    end
    object cdsDetalheICMS10_modBC: TIntegerField
      FieldName = 'ICMS10_modBC'
    end
    object cdsDetalheICMS10_vBC: TFloatField
      FieldName = 'ICMS10_vBC'
    end
    object cdsDetalheICMS10_pICMS: TFloatField
      FieldName = 'ICMS10_pICMS'
    end
    object cdsDetalheICMS10_vICMS: TFloatField
      FieldName = 'ICMS10_vICMS'
    end
    object cdsDetalheICMS10_modBCST: TIntegerField
      FieldName = 'ICMS10_modBCST'
    end
    object cdsDetalheICMS10_pMVAST: TFloatField
      FieldName = 'ICMS10_pMVAST'
    end
    object cdsDetalheICMS10_pRedBCST: TFloatField
      FieldName = 'ICMS10_pRedBCST'
    end
    object cdsDetalheICMS10_vBCST: TFloatField
      FieldName = 'ICMS10_vBCST'
    end
    object cdsDetalheICMS10_pICMSST: TFloatField
      FieldName = 'ICMS10_pICMSST'
    end
    object cdsDetalheICMS10_vICMSST: TFloatField
      FieldName = 'ICMS10_vICMSST'
    end
    object cdsDetalheICMS20_orig: TIntegerField
      FieldName = 'ICMS20_orig'
    end
    object cdsDetalheICMS20_CST: TIntegerField
      FieldName = 'ICMS20_CST'
    end
    object cdsDetalheICMS20_modBC: TIntegerField
      FieldName = 'ICMS20_modBC'
    end
    object cdsDetalheICMS20_pRedBC: TFloatField
      FieldName = 'ICMS20_pRedBC'
    end
    object cdsDetalheICMS20_vBC: TFloatField
      FieldName = 'ICMS20_vBC'
    end
    object cdsDetalheICMS20_pICMS: TFloatField
      FieldName = 'ICMS20_pICMS'
    end
    object cdsDetalheICMS20_vICMS: TFloatField
      FieldName = 'ICMS20_vICMS'
    end
    object cdsDetalheICMS30_orig: TIntegerField
      FieldName = 'ICMS30_orig'
    end
    object cdsDetalheICMS30_CST: TIntegerField
      FieldName = 'ICMS30_CST'
    end
    object cdsDetalheICMS30_modBCST: TIntegerField
      FieldName = 'ICMS30_modBCST'
    end
    object cdsDetalheICMS30_pMVAST: TFloatField
      FieldName = 'ICMS30_pMVAST'
    end
    object cdsDetalheICMS30_pRedBCST: TFloatField
      FieldName = 'ICMS30_pRedBCST'
    end
    object cdsDetalheICMS30_vBCST: TFloatField
      FieldName = 'ICMS30_vBCST'
    end
    object cdsDetalheICMS30_pICMSST: TFloatField
      FieldName = 'ICMS30_pICMSST'
    end
    object cdsDetalheICMS30_vICMSST: TFloatField
      FieldName = 'ICMS30_vICMSST'
    end
    object cdsDetalheICMS40_orig: TIntegerField
      FieldName = 'ICMS40_orig'
    end
    object cdsDetalheICMS40_CST: TIntegerField
      FieldName = 'ICMS40_CST'
    end
    object cdsDetalheICMS40_vICMS: TFloatField
      FieldName = 'ICMS40_vICMS'
    end
    object cdsDetalhemotDesICMS: TIntegerField
      FieldName = 'motDesICMS'
    end
    object cdsDetalheICMS51_orig: TIntegerField
      FieldName = 'ICMS51_orig'
    end
    object cdsDetalheICMS51_CST: TIntegerField
      FieldName = 'ICMS51_CST'
    end
    object cdsDetalheICMS51_modBC: TIntegerField
      FieldName = 'ICMS51_modBC'
    end
    object cdsDetalheICMS51_pRedBC: TFloatField
      FieldName = 'ICMS51_pRedBC'
    end
    object cdsDetalheICMS51_vBC: TFloatField
      FieldName = 'ICMS51_vBC'
    end
    object cdsDetalheICMS51_pICMS: TFloatField
      FieldName = 'ICMS51_pICMS'
    end
    object cdsDetalheICMS51_vICMS: TFloatField
      FieldName = 'ICMS51_vICMS'
    end
    object cdsDetalheICMS60_orig: TIntegerField
      FieldName = 'ICMS60_orig'
    end
    object cdsDetalheICMS60_CST: TIntegerField
      FieldName = 'ICMS60_CST'
    end
    object cdsDetalheICMS70_orig: TIntegerField
      FieldName = 'ICMS70_orig'
    end
    object cdsDetalheICMS70_CST: TIntegerField
      FieldName = 'ICMS70_CST'
    end
    object cdsDetalheICMS70_modBC: TIntegerField
      FieldName = 'ICMS70_modBC'
    end
    object cdsDetalheICMS70_pRedBC: TFloatField
      FieldName = 'ICMS70_pRedBC'
    end
    object cdsDetalheICMS70_vBC: TFloatField
      FieldName = 'ICMS70_vBC'
    end
    object cdsDetalheICMS70_pICMS: TFloatField
      FieldName = 'ICMS70_pICMS'
    end
    object cdsDetalheICMS70_vICMS: TFloatField
      FieldName = 'ICMS70_vICMS'
    end
    object cdsDetalheICMS70_modBCST: TIntegerField
      FieldName = 'ICMS70_modBCST'
    end
    object cdsDetalheICMS70_pMVAST: TFloatField
      FieldName = 'ICMS70_pMVAST'
    end
    object cdsDetalheICMS70_pRedBCST: TFloatField
      FieldName = 'ICMS70_pRedBCST'
    end
    object cdsDetalheICMS70_vBCST: TFloatField
      FieldName = 'ICMS70_vBCST'
    end
    object cdsDetalheICMS70_pICMSST: TFloatField
      FieldName = 'ICMS70_pICMSST'
    end
    object cdsDetalheICMS70_vICMSST: TFloatField
      FieldName = 'ICMS70_vICMSST'
    end
    object cdsDetalheICMS90_orig: TIntegerField
      FieldName = 'ICMS90_orig'
    end
    object cdsDetalheICMS90_CST: TIntegerField
      FieldName = 'ICMS90_CST'
    end
    object cdsDetalheICMS90_modBC: TIntegerField
      FieldName = 'ICMS90_modBC'
    end
    object cdsDetalheICMS90_vBC: TFloatField
      FieldName = 'ICMS90_vBC'
    end
    object cdsDetalheICMS90_pRedBC: TFloatField
      FieldName = 'ICMS90_pRedBC'
    end
    object cdsDetalheICMS90_pICMS: TFloatField
      FieldName = 'ICMS90_pICMS'
    end
    object cdsDetalheICMS90_vICMS: TFloatField
      FieldName = 'ICMS90_vICMS'
    end
    object cdsDetalheICMS90_modBCST: TIntegerField
      FieldName = 'ICMS90_modBCST'
    end
    object cdsDetalheICMS90_pMVAST: TFloatField
      FieldName = 'ICMS90_pMVAST'
    end
    object cdsDetalheICMS90_pRedBCST: TFloatField
      FieldName = 'ICMS90_pRedBCST'
    end
    object cdsDetalheICMS90_vBCST: TFloatField
      FieldName = 'ICMS90_vBCST'
    end
    object cdsDetalheICMS90_pICMSST: TFloatField
      FieldName = 'ICMS90_pICMSST'
    end
    object cdsDetalheICMS90_vICMSST: TFloatField
      FieldName = 'ICMS90_vICMSST'
    end
    object cdsDetalheICMSPart_orig: TIntegerField
      FieldName = 'ICMSPart_orig'
    end
    object cdsDetalheICMSPart_CST: TIntegerField
      FieldName = 'ICMSPart_CST'
    end
    object cdsDetalheICMSPart_modBC: TIntegerField
      FieldName = 'ICMSPart_modBC'
    end
    object cdsDetalheICMSPart_vBC: TFloatField
      FieldName = 'ICMSPart_vBC'
    end
    object cdsDetalheICMSPart_pRedBC: TFloatField
      FieldName = 'ICMSPart_pRedBC'
    end
    object cdsDetalheICMSPart_pICMS: TFloatField
      FieldName = 'ICMSPart_pICMS'
    end
    object cdsDetalheICMSPart_vICMS: TFloatField
      FieldName = 'ICMSPart_vICMS'
    end
    object cdsDetalheICMSPart_modBCST: TIntegerField
      FieldName = 'ICMSPart_modBCST'
    end
    object cdsDetalheICMSPart_pMVAST: TFloatField
      FieldName = 'ICMSPart_pMVAST'
    end
    object cdsDetalheICMSPart_pRedBCST: TFloatField
      FieldName = 'ICMSPart_pRedBCST'
    end
    object cdsDetalheICMSPart_vBCST: TFloatField
      FieldName = 'ICMSPart_vBCST'
    end
    object cdsDetalheICMSPart_pICMSST: TFloatField
      FieldName = 'ICMSPart_pICMSST'
    end
    object cdsDetalheICMSPart_vICMSST: TFloatField
      FieldName = 'ICMSPart_vICMSST'
    end
    object cdsDetalhepBCOp: TFloatField
      FieldName = 'pBCOp'
    end
    object cdsDetalheUFST: TStringField
      FieldName = 'UFST'
      Size = 31
    end
    object cdsDetalheICMSST_orig: TIntegerField
      FieldName = 'ICMSST_orig'
    end
    object cdsDetalheICMSST_CST: TIntegerField
      FieldName = 'ICMSST_CST'
    end
    object cdsDetalheICMSST_vBCSTRet: TFloatField
      FieldName = 'ICMSST_vBCSTRet'
    end
    object cdsDetalheICMSST_vICMSSTRet: TFloatField
      FieldName = 'ICMSST_vICMSSTRet'
    end
    object cdsDetalhevBCSTDest: TFloatField
      FieldName = 'vBCSTDest'
    end
    object cdsDetalhevICMSSTDest: TFloatField
      FieldName = 'vICMSSTDest'
    end
    object cdsDetalheICMSSN101_orig: TIntegerField
      FieldName = 'ICMSSN101_orig'
    end
    object cdsDetalheICMSSN101_CSOSN: TIntegerField
      FieldName = 'ICMSSN101_CSOSN'
    end
    object cdsDetalheICMSSN101_pCredSN: TFloatField
      FieldName = 'ICMSSN101_pCredSN'
    end
    object cdsDetalheICMSSN101_vCredICMSSN: TFloatField
      FieldName = 'ICMSSN101_vCredICMSSN'
    end
    object cdsDetalheICMSSN102_orig: TIntegerField
      FieldName = 'ICMSSN102_orig'
    end
    object cdsDetalheICMSSN102_CSOSN: TIntegerField
      FieldName = 'ICMSSN102_CSOSN'
    end
    object cdsDetalheICMSSN201_orig: TIntegerField
      FieldName = 'ICMSSN201_orig'
    end
    object cdsDetalheICMSSN201_CSOSN: TIntegerField
      FieldName = 'ICMSSN201_CSOSN'
    end
    object cdsDetalheICMSSN201_modBCST: TIntegerField
      FieldName = 'ICMSSN201_modBCST'
    end
    object cdsDetalheICMSSN201_pMVAST: TFloatField
      FieldName = 'ICMSSN201_pMVAST'
    end
    object cdsDetalheICMSSN201_pRedBCST: TFloatField
      FieldName = 'ICMSSN201_pRedBCST'
    end
    object cdsDetalheICMSSN201_vBCST: TFloatField
      FieldName = 'ICMSSN201_vBCST'
    end
    object cdsDetalheICMSSN201_pICMSST: TFloatField
      FieldName = 'ICMSSN201_pICMSST'
    end
    object cdsDetalheICMSSN201_vICMSST: TFloatField
      FieldName = 'ICMSSN201_vICMSST'
    end
    object cdsDetalheICMSSN201_pCredSN: TFloatField
      FieldName = 'ICMSSN201_pCredSN'
    end
    object cdsDetalheICMSSN201_vCredICMSSN: TFloatField
      FieldName = 'ICMSSN201_vCredICMSSN'
    end
    object cdsDetalheICMSSN202_orig: TIntegerField
      FieldName = 'ICMSSN202_orig'
    end
    object cdsDetalheICMSSN202_CSOSN: TIntegerField
      FieldName = 'ICMSSN202_CSOSN'
    end
    object cdsDetalheICMSSN202_modBCST: TIntegerField
      FieldName = 'ICMSSN202_modBCST'
    end
    object cdsDetalheICMSSN202_pMVAST: TFloatField
      FieldName = 'ICMSSN202_pMVAST'
    end
    object cdsDetalheICMSSN202_pRedBCST: TFloatField
      FieldName = 'ICMSSN202_pRedBCST'
    end
    object cdsDetalheICMSSN202_vBCST: TFloatField
      FieldName = 'ICMSSN202_vBCST'
    end
    object cdsDetalheICMSSN202_pICMSST: TFloatField
      FieldName = 'ICMSSN202_pICMSST'
    end
    object cdsDetalheICMSSN202_vICMSST: TFloatField
      FieldName = 'ICMSSN202_vICMSST'
    end
    object cdsDetalheICMSSN500_orig: TIntegerField
      FieldName = 'ICMSSN500_orig'
    end
    object cdsDetalheICMSSN500_CSOSN: TIntegerField
      FieldName = 'ICMSSN500_CSOSN'
    end
    object cdsDetalheICMSSN500_vBCSTRet: TFloatField
      FieldName = 'ICMSSN500_vBCSTRet'
    end
    object cdsDetalheICMSSN500_vICMSSTRet: TFloatField
      FieldName = 'ICMSSN500_vICMSSTRet'
    end
    object cdsDetalheICMSSN900_orig: TIntegerField
      FieldName = 'ICMSSN900_orig'
    end
    object cdsDetalheICMSSN900_CSOSN: TIntegerField
      FieldName = 'ICMSSN900_CSOSN'
    end
    object cdsDetalheICMSSN900_modBC: TIntegerField
      FieldName = 'ICMSSN900_modBC'
    end
    object cdsDetalheICMSSN900_vBC: TFloatField
      FieldName = 'ICMSSN900_vBC'
    end
    object cdsDetalheICMSSN900_pRedBC: TFloatField
      FieldName = 'ICMSSN900_pRedBC'
    end
    object cdsDetalheICMSSN900_pICMS: TFloatField
      FieldName = 'ICMSSN900_pICMS'
    end
    object cdsDetalheICMSSN900_vICMS: TFloatField
      FieldName = 'ICMSSN900_vICMS'
    end
    object cdsDetalheICMSSN900_modBCST: TIntegerField
      FieldName = 'ICMSSN900_modBCST'
    end
    object cdsDetalheICMSSN900_pMVAST: TFloatField
      FieldName = 'ICMSSN900_pMVAST'
    end
    object cdsDetalheICMSSN900_pRedBCST: TFloatField
      FieldName = 'ICMSSN900_pRedBCST'
    end
    object cdsDetalheICMSSN900_vBCST: TFloatField
      FieldName = 'ICMSSN900_vBCST'
    end
    object cdsDetalheICMSSN900_pICMSST: TFloatField
      FieldName = 'ICMSSN900_pICMSST'
    end
    object cdsDetalheICMSSN900_vICMSST: TFloatField
      FieldName = 'ICMSSN900_vICMSST'
    end
    object cdsDetalheICMSSN900_pCredSN: TFloatField
      FieldName = 'ICMSSN900_pCredSN'
    end
    object cdsDetalheICMSSN900_vCredICMSSN: TFloatField
      FieldName = 'ICMSSN900_vCredICMSSN'
    end
    object cdsDetalheCEST: TStringField
      FieldName = 'CEST'
      Size = 7
    end
    object cdsDetalheICMS60_vBCSTRet: TStringField
      FieldName = 'ICMS60_vBCSTRet'
      Size = 31
    end
    object cdsDetalheICMS60_pST: TStringField
      FieldName = 'ICMS60_pST'
      Size = 31
    end
    object cdsDetalheICMS60_vICMSSubstituto: TStringField
      FieldName = 'ICMS60_vICMSSubstituto'
      Size = 31
    end
    object cdsDetalheICMS60_vICMSSTRet: TStringField
      FieldName = 'ICMS60_vICMSSTRet'
      Size = 31
    end
    object cdsDetalheICMS60_vBCFCPSTRet: TStringField
      FieldName = 'ICMS60_vBCFCPSTRet'
      Size = 31
    end
    object cdsDetalheICMS60_pFCPSTRet: TStringField
      FieldName = 'ICMS60_pFCPSTRet'
      Size = 31
    end
    object cdsDetalheICMS60_vFCPSTRet: TStringField
      FieldName = 'ICMS60_vFCPSTRet'
      Size = 31
    end
    object cdsDetalheICMS60_pRedBCEfet: TStringField
      FieldName = 'ICMS60_pRedBCEfet'
      Size = 31
    end
    object cdsDetalheICMS60_vBCEfet: TStringField
      FieldName = 'ICMS60_vBCEfet'
      Size = 31
    end
    object cdsDetalheICMS60_pICMSEfet: TStringField
      FieldName = 'ICMS60_pICMSEfet'
      Size = 31
    end
    object cdsDetalheICMS60_vICMSEfet: TStringField
      FieldName = 'ICMS60_vICMSEfet'
      Size = 31
    end
    object cdsDetalheICMSST_vICMSSubstituto: TFloatField
      FieldName = 'ICMSST_vICMSSubstituto'
    end
    object cdsDetalheICMSSN500_vICMSSubstituto: TFloatField
      FieldName = 'ICMSSN500_vICMSSubstituto'
    end
    object cdsDetalheclEnq: TStringField
      FieldName = 'clEnq'
      Size = 5
    end
    object cdsDetalheCNPJProd: TStringField
      FieldName = 'CNPJProd'
      Size = 14
    end
    object cdsDetalhecSelo: TStringField
      FieldName = 'cSelo'
      Size = 60
    end
    object cdsDetalheqSelo: TIntegerField
      FieldName = 'qSelo'
    end
    object cdsDetalhecEnq: TStringField
      FieldName = 'cEnq'
      Size = 3
    end
    object cdsDetalheIPITrib_CST: TIntegerField
      FieldName = 'IPITrib_CST'
    end
    object cdsDetalheIPITrib_vBC: TFloatField
      FieldName = 'IPITrib_vBC'
    end
    object cdsDetalhepIPI: TFloatField
      FieldName = 'pIPI'
    end
    object cdsDetalheqUnid: TFloatField
      FieldName = 'qUnid'
    end
    object cdsDetalhevUnid: TFloatField
      FieldName = 'vUnid'
    end
    object cdsDetalhevIPI: TFloatField
      FieldName = 'vIPI'
    end
    object cdsDetalheIPINT_CST: TIntegerField
      FieldName = 'IPINT_CST'
    end
    object cdsDetalheII_vBC: TFloatField
      FieldName = 'II_vBC'
    end
    object cdsDetalhevDespAdu: TFloatField
      FieldName = 'vDespAdu'
    end
    object cdsDetalhevII: TFloatField
      FieldName = 'vII'
    end
    object cdsDetalhevIOF: TFloatField
      FieldName = 'vIOF'
    end
    object cdsDetalheISSQN_vBC: TFloatField
      FieldName = 'ISSQN_vBC'
    end
    object cdsDetalhevAliq: TFloatField
      FieldName = 'vAliq'
    end
    object cdsDetalhevISSQN: TFloatField
      FieldName = 'vISSQN'
    end
    object cdsDetalhecMunFG: TIntegerField
      FieldName = 'cMunFG'
    end
    object cdsDetalhecListServ: TIntegerField
      FieldName = 'cListServ'
    end
    object cdsDetalhecSitTrib: TStringField
      FieldName = 'cSitTrib'
      Size = 3
    end
    object cdsDetalhePISAliq_CST: TIntegerField
      FieldName = 'PISAliq_CST'
    end
    object cdsDetalhePISAliq_vBC: TFloatField
      FieldName = 'PISAliq_vBC'
    end
    object cdsDetalhePISAliq_pPIS: TFloatField
      FieldName = 'PISAliq_pPIS'
    end
    object cdsDetalhePISAliq_vPIS: TFloatField
      FieldName = 'PISAliq_vPIS'
    end
    object cdsDetalhePISQtde_CST: TIntegerField
      FieldName = 'PISQtde_CST'
    end
    object cdsDetalhePISQtde_qBCProd: TFloatField
      FieldName = 'PISQtde_qBCProd'
    end
    object cdsDetalhePISQtde_vAliqProd: TFloatField
      FieldName = 'PISQtde_vAliqProd'
    end
    object cdsDetalhePISQtde_vPIS: TFloatField
      FieldName = 'PISQtde_vPIS'
    end
    object cdsDetalhePISNT_CST: TIntegerField
      FieldName = 'PISNT_CST'
    end
    object cdsDetalhePISOutr_CST: TIntegerField
      FieldName = 'PISOutr_CST'
    end
    object cdsDetalhePISOutr_vBC: TFloatField
      FieldName = 'PISOutr_vBC'
    end
    object cdsDetalhePISOutr_pPIS: TFloatField
      FieldName = 'PISOutr_pPIS'
    end
    object cdsDetalhePISOutr_qBCProd: TFloatField
      FieldName = 'PISOutr_qBCProd'
    end
    object cdsDetalhePISOutr_vAliqProd: TFloatField
      FieldName = 'PISOutr_vAliqProd'
    end
    object cdsDetalhePISOutr_vPIS: TFloatField
      FieldName = 'PISOutr_vPIS'
    end
    object cdsDetalhePISST_vBC: TFloatField
      FieldName = 'PISST_vBC'
    end
    object cdsDetalhepPIS: TFloatField
      FieldName = 'pPIS'
    end
    object cdsDetalhePISST_qBCProd: TFloatField
      FieldName = 'PISST_qBCProd'
    end
    object cdsDetalhePISST_vAliqProd: TFloatField
      FieldName = 'PISST_vAliqProd'
    end
    object cdsDetalhevPIS: TFloatField
      FieldName = 'vPIS'
    end
    object cdsDetalheCOFINSAliq_CST: TIntegerField
      FieldName = 'COFINSAliq_CST'
    end
    object cdsDetalheCOFINSAliq_vBC: TFloatField
      FieldName = 'COFINSAliq_vBC'
    end
    object cdsDetalheCOFINSAliq_pCOFINS: TFloatField
      FieldName = 'COFINSAliq_pCOFINS'
    end
    object cdsDetalheCOFINSAliq_vCOFINS: TFloatField
      FieldName = 'COFINSAliq_vCOFINS'
    end
    object cdsDetalheCOFINSQtde_CST: TIntegerField
      FieldName = 'COFINSQtde_CST'
    end
    object cdsDetalheCOFINSQtde_qBCProd: TFloatField
      FieldName = 'COFINSQtde_qBCProd'
    end
    object cdsDetalheCOFINSQtde_vAliqProd: TFloatField
      FieldName = 'COFINSQtde_vAliqProd'
    end
    object cdsDetalheCOFINSQtde_vCOFINS: TFloatField
      FieldName = 'COFINSQtde_vCOFINS'
    end
    object cdsDetalheCOFINSNT_CST: TIntegerField
      FieldName = 'COFINSNT_CST'
    end
    object cdsDetalheCOFINSOutr_CST: TIntegerField
      FieldName = 'COFINSOutr_CST'
    end
    object cdsDetalheCOFINSOutr_vBC: TFloatField
      FieldName = 'COFINSOutr_vBC'
    end
    object cdsDetalheCOFINSOutr_pCOFINS: TFloatField
      FieldName = 'COFINSOutr_pCOFINS'
    end
    object cdsDetalheCOFINSOutr_qBCProd: TFloatField
      FieldName = 'COFINSOutr_qBCProd'
    end
    object cdsDetalheCOFINSOutr_vAliqProd: TFloatField
      FieldName = 'COFINSOutr_vAliqProd'
    end
    object cdsDetalheCOFINSOutr_vCOFINS: TFloatField
      FieldName = 'COFINSOutr_vCOFINS'
    end
    object cdsDetalheCOFINSST_vBC: TFloatField
      FieldName = 'COFINSST_vBC'
    end
    object cdsDetalhepCOFINS: TFloatField
      FieldName = 'pCOFINS'
    end
    object cdsDetalheCOFINSST_qBCProd: TFloatField
      FieldName = 'COFINSST_qBCProd'
    end
    object cdsDetalheCOFINSST_vAliqProd: TFloatField
      FieldName = 'COFINSST_vAliqProd'
    end
    object cdsDetalhevCOFINS: TFloatField
      FieldName = 'vCOFINS'
    end
    object cdsDetalheinfAdProd: TStringField
      FieldName = 'infAdProd'
      Size = 500
    end
    object cdsDetalheDI: TDataSetField
      FieldName = 'DI'
      UnNamed = True
    end
    object cdsDetalhedescANP: TStringField
      FieldName = 'descANP'
      Size = 95
    end
    object cdsDetalheICMS51_vICMSOp: TFloatField
      FieldName = 'ICMS51_vICMSOp'
    end
    object cdsDetalheICMS51_pDif: TFloatField
      FieldName = 'ICMS51_pDif'
    end
  end
  object dsDetalhe: TDataSource
    DataSet = cdsDetalhe
    Left = 856
    Top = 376
  end
  object cdsDeclaracaoImportacao: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 834
    Top = 424
    object cdsDeclaracaoImportacaonDI: TStringField
      FieldName = 'nDI'
      Size = 10
    end
    object cdsDeclaracaoImportacaodDI: TDateField
      FieldName = 'dDI'
    end
    object cdsDeclaracaoImportacaoxLocDesemb: TStringField
      FieldName = 'xLocDesemb'
      Size = 60
    end
    object cdsDeclaracaoImportacaoUFDesemb: TStringField
      FieldName = 'UFDesemb'
      Size = 3
    end
    object cdsDeclaracaoImportacaodDesemb: TDateField
      FieldName = 'dDesemb'
    end
    object cdsDeclaracaoImportacaocExportador: TStringField
      FieldName = 'cExportador'
      Size = 60
    end
    object cdsDeclaracaoImportacaoadi: TDataSetField
      FieldName = 'adi'
      UnNamed = True
    end
  end
  object dsDeclaracaoImportacao: TDataSource
    DataSet = cdsDeclaracaoImportacao
    Left = 864
    Top = 424
  end
  object cdsAdicoes: TClientDataSet
    Aggregates = <>
    DataSetField = cdsDeclaracaoImportacaoadi
    Params = <>
    Left = 929
    Top = 425
    object cdsAdicoesnAdicao: TIntegerField
      FieldName = 'nAdicao'
    end
    object cdsAdicoesnSeqAdic: TIntegerField
      FieldName = 'nSeqAdic'
    end
    object cdsAdicoescFabricante: TStringField
      FieldName = 'cFabricante'
      Size = 60
    end
    object cdsAdicoesvDescDI: TFloatField
      FieldName = 'vDescDI'
    end
  end
  object dsAdicoes: TDataSource
    DataSet = cdsAdicoes
    Left = 960
    Top = 424
  end
  object mItensNota: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'CodProduto'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CodProdutoInterno'
        DataType = ftInteger
      end
      item
        Name = 'CodCor'
        DataType = ftInteger
      end
      item
        Name = 'CodGrade'
        DataType = ftInteger
      end
      item
        Name = 'Posicao'
        DataType = ftInteger
      end
      item
        Name = 'Tamanho'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'NomeCor'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'VlrUnitario'
        DataType = ftFloat
      end
      item
        Name = 'VlrTotal'
        DataType = ftFloat
      end
      item
        Name = 'AliqIcms'
        DataType = ftFloat
      end
      item
        Name = 'AliqIPI'
        DataType = ftFloat
      end
      item
        Name = 'CodSitTrib'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CodSitTribInterno'
        DataType = ftInteger
      end
      item
        Name = 'CodCSTIPI'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CodCofins'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CodPIS'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'AliqPIS'
        DataType = ftFloat
      end
      item
        Name = 'AliqCofins'
        DataType = ftFloat
      end
      item
        Name = 'VlrPis'
        DataType = ftFloat
      end
      item
        Name = 'VlrIcms'
        DataType = ftFloat
      end
      item
        Name = 'VlrCofins'
        DataType = ftFloat
      end
      item
        Name = 'VlrIPI'
        DataType = ftFloat
      end
      item
        Name = 'BaseIcms'
        DataType = ftFloat
      end
      item
        Name = 'Unidade'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'NumPedido'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ItemPedido'
        DataType = ftInteger
      end
      item
        Name = 'CodBarra'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'GravarNovo'
        DataType = ftBoolean
      end
      item
        Name = 'PercRedIcms'
        DataType = ftFloat
      end
      item
        Name = 'CodFornecedor'
        DataType = ftInteger
      end
      item
        Name = 'NomeProduto'
        DataType = ftString
        Size = 120
      end
      item
        Name = 'NCM'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'CFOP'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CFOPInterno'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'BaseCSTRet'
        DataType = ftFloat
      end
      item
        Name = 'VlrIcmsCSTRet'
        DataType = ftFloat
      end
      item
        Name = 'ModICMS'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Origem'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ModIcmsST'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PercMVAST'
        DataType = ftFloat
      end
      item
        Name = 'PercRedBCST'
        DataType = ftFloat
      end
      item
        Name = 'BaseCST'
        DataType = ftFloat
      end
      item
        Name = 'PercIcmsST'
        DataType = ftFloat
      end
      item
        Name = 'VlrIcmsST'
        DataType = ftFloat
      end
      item
        Name = 'VlrDesconto'
        DataType = ftFloat
      end
      item
        Name = 'ProdMat'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'VlrFrete'
        DataType = ftFloat
      end
      item
        Name = 'InfAdicionais'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'NumLote'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'QtdPacote'
        DataType = ftFloat
      end
      item
        Name = 'Mercado'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CFOPOriginal'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'ConversorUnidade'
        DataType = ftFloat
      end
      item
        Name = 'ID_NCM'
        DataType = ftInteger
      end
      item
        Name = 'NomeProduto_Nota'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'TipoVenda'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ID_CSTIPI'
        DataType = ftInteger
      end
      item
        Name = 'ID_CSTICMS'
        DataType = ftInteger
      end
      item
        Name = 'ID_Cofins'
        DataType = ftInteger
      end
      item
        Name = 'ID_Pis'
        DataType = ftInteger
      end
      item
        Name = 'Referencia_Int'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ID_Pedido'
        DataType = ftInteger
      end
      item
        Name = 'Item_Unidade'
        DataType = ftInteger
      end
      item
        Name = 'Converter_Unid_Medida'
        DataType = ftBoolean
      end
      item
        Name = 'QtdPacoteInterno'
        DataType = ftFloat
      end
      item
        Name = 'UnidadeInterno'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'ID_SitTrib_CF'
        DataType = ftInteger
      end
      item
        Name = 'Cod_SitTrib_CF'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'Usa_Cor'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ID_Cor'
        DataType = ftInteger
      end
      item
        Name = 'Usa_Preco_Cor'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Inativo_Produto'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Num_Lote_Controle'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ID_CFOP_NFCe'
        DataType = ftInteger
      end
      item
        Name = 'CodCFOP_NFCe'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Obs_Complementar'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'AtualizarCustoTotal'
        DataType = ftBoolean
      end
      item
        Name = 'AtualizarPreco'
        DataType = ftBoolean
      end
      item
        Name = 'Perc_Margem'
        DataType = ftFloat
      end
      item
        Name = 'ID_Grupo'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Grupo'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Vlr_Venda'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Custo_Prod'
        DataType = ftFloat
      end
      item
        Name = 'Perc_ISSQN'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_ISSQN'
        DataType = ftFloat
      end
      item
        Name = 'NumNota'
        DataType = ftInteger
      end
      item
        Name = 'Serie'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Nome_Cor'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CEST'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'CEST_Interno'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'Gerar_CLiquido'
        DataType = ftBoolean
      end
      item
        Name = 'SUB_PISCOFINS_CUSTO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'SUB_ICMS_CUSTO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'SOMAR_IPI_NO_CUSTO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'SOMAR_FRETE_NO_CUSTO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'SOMAR_ST_NO_CUSTO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TipoVenda_Prod'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'AtualizarNCM'
        DataType = ftBoolean
      end
      item
        Name = 'Gravar_Adic_Prod'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'SUB_IPI_Custo'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Preco_Custo_Total'
        DataType = ftFloat
      end
      item
        Name = 'CodBarra2'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'Gerar_Estoque'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ID_ContaOrcamento'
        DataType = ftInteger
      end
      item
        Name = 'ID_CentroCusto'
        DataType = ftInteger
      end
      item
        Name = 'Nome_ContaOrcamento'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Posse_Material'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Perc_Devol'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_IPI_Devol'
        DataType = ftFloat
      end
      item
        Name = 'Perc_Base_Red_Efet'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Base_Efet'
        DataType = ftFloat
      end
      item
        Name = 'Perc_ICMS_Efet'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_ICMS_Efet'
        DataType = ftFloat
      end
      item
        Name = 'Item_NTE'
        DataType = ftInteger
      end
      item
        Name = 'ID_NTE'
        DataType = ftInteger
      end
      item
        Name = 'Num_Nota_NTE'
        DataType = ftInteger
      end
      item
        Name = 'Sped_Tipo'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'PossuiRateio'
        DataType = ftBoolean
      end
      item
        Name = 'CodCFOPAtual'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'CodCFOPNCM'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'Copiar_CFOP_Prod'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ID_CFOPNCM'
        DataType = ftInteger
      end
      item
        Name = 'ID_CFOPAtual'
        DataType = ftInteger
      end
      item
        Name = 'Vlr_Icms_Substituto'
        DataType = ftFloat
      end
      item
        Name = 'Base_Pis'
        DataType = ftFloat
      end
      item
        Name = 'Base_Cofins'
        DataType = ftFloat
      end
      item
        Name = 'ANP_PRODUTO'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'ANP_UF_CONS'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ANP_DESCRICAO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ANP_PERC_PGNI'
        DataType = ftFloat
      end
      item
        Name = 'ANP_PERC_PGNN'
        DataType = ftFloat
      end
      item
        Name = 'ANP_ID'
        DataType = ftInteger
      end
      item
        Name = 'Nome_CentroCusto'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Vlr_Venda_Atual'
        DataType = ftFloat
      end
      item
        Name = 'VlrUnitario_Conversao'
        DataType = ftFloat
      end
      item
        Name = 'Preco_Custo_Ant'
        DataType = ftFloat
      end
      item
        Name = 'CodCor_Forn'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Marca'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ID_MARCA'
        DataType = ftInteger
      end
      item
        Name = 'ID_SERVICO_INT'
        DataType = ftInteger
      end
      item
        Name = 'NOME_SERVICO_INT'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'NomeProduto_Int'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Perc_Diferido'
        DataType = ftFloat
      end
      item
        Name = 'RegMS'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ID_CFOP_Ped'
        DataType = ftInteger
      end
      item
        Name = 'CodCFOP_Ped'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CodProduto_Ped'
        DataType = ftInteger
      end
      item
        Name = 'Preco_Custo_Manual'
        DataType = ftFloat
      end
      item
        Name = 'DtValidade'
        DataType = ftDate
      end
      item
        Name = 'ID_Tipo_Material'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Tipo_Material'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'NomeProduto_Pedido'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Vlr_Pedido_Total'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Pedido_Unitario'
        DataType = ftFloat
      end
      item
        Name = 'Qtd_Pedido'
        DataType = ftFloat
      end
      item
        Name = 'Unidade_Pedido'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'Num_OS'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Pedido_Cliente'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'OBS_Pedido'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'OBS_Pedido_NFe'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'Item_Cliente'
        DataType = ftInteger
      end
      item
        Name = 'Cod_Produto_Nome'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ID_Variacao'
        DataType = ftInteger
      end
      item
        Name = 'Vlr_Outros_Itens'
        DataType = ftFloat
      end
      item
        Name = 'Grafico'
        DataType = ftGraphic
      end
      item
        Name = 'AtualizarPrecoVenda'
        DataType = ftBoolean
      end
      item
        Name = 'Comprimento'
        DataType = ftFloat
      end
      item
        Name = 'Largura'
        DataType = ftFloat
      end
      item
        Name = 'Espessura'
        DataType = ftFloat
      end
      item
        Name = 'Preco_Varejo'
        DataType = ftCurrency
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'NumNota;Item'
    Params = <>
    StoreDefs = True
    BeforePost = mItensNotaBeforePost
    OnNewRecord = mItensNotaNewRecord
    Left = 918
    Top = 232
    Data = {
      621100009619E0BD0100000018000000AC000000000003000000621104497465
      6D04000100000000000A436F6450726F6475746F010049000000010005574944
      5448020002003C0011436F6450726F6475746F496E7465726E6F040001000000
      000006436F64436F72040001000000000008436F644772616465040001000000
      000007506F736963616F04000100000000000754616D616E686F010049000000
      0100055749445448020002000A00074E6F6D65436F7201004900000001000557
      494454480200020028000351746408000400000000000B566C72556E69746172
      696F080004000000000008566C72546F74616C080004000000000008416C6971
      49636D73080004000000000007416C697149504908000400000000000A436F64
      53697454726962010049000000010005574944544802000200030011436F6453
      697454726962496E7465726E6F040001000000000009436F6443535449504901
      0049000000010005574944544802000200030009436F64436F66696E73010049
      000000010005574944544802000200030006436F645049530100490000000100
      05574944544802000200030007416C697150495308000400000000000A416C69
      71436F66696E73080004000000000006566C7250697308000400000000000756
      6C7249636D73080004000000000009566C72436F66696E730800040000000000
      06566C724950490800040000000000084261736549636D730800040000000000
      07556E69646164650100490000000100055749445448020002000600094E756D
      50656469646F01004900000001000557494454480200020014000A4974656D50
      656469646F040001000000000008436F64426172726101004900000001000557
      49445448020002001E000A4772617661724E6F766F02000300000000000B5065
      726352656449636D7308000400000000000D436F64466F726E656365646F7204
      000100000000000B4E6F6D6550726F6475746F01004900000001000557494454
      48020002007800034E434D010049000000010005574944544802000200080004
      43464F5001004900000001000557494454480200020004000B43464F50496E74
      65726E6F01004900000001000557494454480200020004000A42617365435354
      52657408000400000000000D566C7249636D7343535452657408000400000000
      00074D6F6449434D530100490000000100055749445448020002000100064F72
      6967656D0100490000000100055749445448020002000100094D6F6449636D73
      5354010049000000010005574944544802000200010009506572634D56415354
      08000400000000000B5065726352656442435354080004000000000007426173
      6543535408000400000000000A5065726349636D735354080004000000000009
      566C7249636D73535408000400000000000B566C72446573636F6E746F080004
      00000000000750726F644D617401004900000001000557494454480200020001
      0008566C72467265746508000400000000000D496E6641646963696F6E616973
      010049000000010005574944544802000200FA00074E756D4C6F746501004900
      00000100055749445448020002000F00095174645061636F7465080004000000
      0000074D65726361646F01004900000001000557494454480200020001000C43
      464F504F726967696E616C010049000000010005574944544802000200050010
      436F6E766572736F72556E696461646508000400000000000649445F4E434D04
      00010000000000104E6F6D6550726F6475746F5F4E6F74610100490000000100
      055749445448020002006400095469706F56656E646101004900000001000557
      494454480200020001000949445F43535449504904000100000000000A49445F
      43535449434D5304000100000000000949445F436F66696E7304000100000000
      000649445F50697304000100000000000E5265666572656E6369615F496E7401
      004900000001000557494454480200020014000949445F50656469646F040001
      00000000000C4974656D5F556E6964616465040001000000000015436F6E7665
      727465725F556E69645F4D65646964610200030000000000105174645061636F
      7465496E7465726E6F08000400000000000E556E6964616465496E7465726E6F
      01004900000001000557494454480200020006000D49445F536974547269625F
      434604000100000000000E436F645F536974547269625F434601004900000001
      00055749445448020002000500075573615F436F720100490000000100055749
      4454480200020001000649445F436F7204000100000000000D5573615F507265
      636F5F436F7201004900000001000557494454480200020001000F496E617469
      766F5F50726F6475746F0100490000000100055749445448020002000100114E
      756D5F4C6F74655F436F6E74726F6C6501004900000001000557494454480200
      020014000C49445F43464F505F4E46436504000100000000000C436F6443464F
      505F4E4643650100490000000100055749445448020002000400104F62735F43
      6F6D706C656D656E746172010049000000010005574944544802000200FA0013
      417475616C697A6172437573746F546F74616C02000300000000000E41747561
      6C697A6172507265636F02000300000000000B506572635F4D617267656D0800
      0400000000000849445F477275706F04000100000000000A4E6F6D655F477275
      706F0100490000000100055749445448020002003C0009566C725F56656E6461
      08000400000000000E566C725F437573746F5F50726F6408000400000000000A
      506572635F495353514E080004000000000009566C725F495353514E08000400
      00000000074E756D4E6F74610400010000000000055365726965010049000000
      0100055749445448020002000300084E6F6D655F436F72010049000000010005
      5749445448020002003C00044345535401004900000001000557494454480200
      020007000C434553545F496E7465726E6F010049000000010005574944544802
      00020007000E47657261725F434C69717569646F020003000000000013535542
      5F504953434F46494E535F435553544F01004900000001000557494454480200
      020001000E5355425F49434D535F435553544F01004900000001000557494454
      4802000200010012534F4D41525F4950495F4E4F5F435553544F010049000000
      010005574944544802000200010014534F4D41525F46524554455F4E4F5F4355
      53544F010049000000010005574944544802000200010011534F4D41525F5354
      5F4E4F5F435553544F01004900000001000557494454480200020001000E5469
      706F56656E64615F50726F640100490000000100055749445448020002000100
      0C417475616C697A61724E434D0200030000000000104772617661725F416469
      635F50726F6401004900000001000557494454480200020001000D5355425F49
      50495F437573746F010049000000010005574944544802000200010011507265
      636F5F437573746F5F546F74616C080004000000000009436F64426172726132
      0100490000000100055749445448020002000E000D47657261725F4573746F71
      756501004900000001000557494454480200020001001149445F436F6E74614F
      7263616D656E746F04000100000000000E49445F43656E74726F437573746F04
      00010000000000134E6F6D655F436F6E74614F7263616D656E746F0100490000
      000100055749445448020002003C000E506F7373655F4D6174657269616C0100
      4900000001000557494454480200020001000A506572635F4465766F6C080004
      00000000000D566C725F4950495F4465766F6C08000400000000001250657263
      5F426173655F5265645F4566657408000400000000000D566C725F426173655F
      4566657408000400000000000E506572635F49434D535F456665740800040000
      0000000D566C725F49434D535F456665740800040000000000084974656D5F4E
      544504000100000000000649445F4E544504000100000000000C4E756D5F4E6F
      74615F4E5445040001000000000009537065645F5469706F0100490000000100
      0557494454480200020002000C506F7373756952617465696F02000300000000
      000C436F6443464F50417475616C010049000000010005574944544802000200
      05000A436F6443464F504E434D01004900000001000557494454480200020005
      0010436F706961725F43464F505F50726F640100490000000100055749445448
      0200020001000A49445F43464F504E434D04000100000000000C49445F43464F
      50417475616C040001000000000013566C725F49636D735F5375627374697475
      746F080004000000000008426173655F50697308000400000000000B42617365
      5F436F66696E7308000400000000000B414E505F50524F4455544F0100490000
      0001000557494454480200020009000B414E505F55465F434F4E530100490000
      0001000557494454480200020002000D414E505F44455343524943414F010049
      00000001000557494454480200020064000D414E505F504552435F50474E4908
      000400000000000D414E505F504552435F50474E4E080004000000000006414E
      505F49440400010000000000104E6F6D655F43656E74726F437573746F010049
      0000000100055749445448020002003C000F566C725F56656E64615F41747561
      6C080004000000000015566C72556E69746172696F5F436F6E76657273616F08
      000400000000000F507265636F5F437573746F5F416E7408000400000000000B
      436F64436F725F466F726E0100490000000100055749445448020002000A0005
      4D6172636101004900000001000557494454480200020028000849445F4D4152
      434104000100000000000E49445F5345525649434F5F494E5404000100000000
      00104E4F4D455F5345525649434F5F494E540100490000000100055749445448
      020002001E000F4E6F6D6550726F6475746F5F496E7401004900000001000557
      494454480200020064000D506572635F446966657269646F0800040000000000
      055265674D5301004900000001000557494454480200020014000B49445F4346
      4F505F50656404000100000000000B436F6443464F505F506564010049000000
      01000557494454480200020004000E436F6450726F6475746F5F506564040001
      000000000012507265636F5F437573746F5F4D616E75616C0800040000000000
      0A447456616C696461646504000600000000001049445F5469706F5F4D617465
      7269616C0400010000000000124E6F6D655F5469706F5F4D6174657269616C01
      00490000000100055749445448020002002800124E6F6D6550726F6475746F5F
      50656469646F010049000000010005574944544802000200640010566C725F50
      656469646F5F546F74616C080004000000000013566C725F50656469646F5F55
      6E69746172696F08000400000000000A5174645F50656469646F080004000000
      00000E556E69646164655F50656469646F010049000000010005574944544802
      0002000600064E756D5F4F530100490000000100055749445448020002001E00
      0E50656469646F5F436C69656E74650100490000000100055749445448020002
      0014000A4F42535F50656469646F010049000000010005574944544802000200
      C8000E4F42535F50656469646F5F4E4665010049000000010005574944544802
      000200C8000C4974656D5F436C69656E7465040001000000000010436F645F50
      726F6475746F5F4E6F6D650100490000000100055749445448020002001E000B
      49445F566172696163616F040001000000000010566C725F4F7574726F735F49
      74656E730800040000000000074772616669636F04004B000000010007535542
      5459504502004900090047726170686963730013417475616C697A6172507265
      636F56656E646102000300000000000B436F6D7072696D656E746F0800040000
      000000074C617267757261080004000000000009457370657373757261080004
      00000000000C507265636F5F566172656A6F0800040000000100075355425459
      50450200490006004D6F6E65790001000D44454641554C545F4F524445520200
      820000000000}
    object mItensNotaItem: TIntegerField
      FieldName = 'Item'
    end
    object mItensNotaCodProduto: TStringField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'CodProduto'
      Size = 60
    end
    object mItensNotaCodProdutoInterno: TIntegerField
      DisplayLabel = 'C'#243'd. Produto Interno'
      FieldName = 'CodProdutoInterno'
    end
    object mItensNotaCodCor: TIntegerField
      DisplayLabel = 'C'#243'd. Cor'
      FieldName = 'CodCor'
    end
    object mItensNotaCodGrade: TIntegerField
      DisplayLabel = 'C'#243'd. Grade'
      FieldName = 'CodGrade'
    end
    object mItensNotaPosicao: TIntegerField
      DisplayLabel = 'Posi'#231#227'o'
      FieldName = 'Posicao'
    end
    object mItensNotaTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 10
    end
    object mItensNotaNomeCor: TStringField
      DisplayLabel = 'Nome da Cor'
      FieldName = 'NomeCor'
      Size = 40
    end
    object mItensNotaQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mItensNotaVlrUnitario: TFloatField
      DisplayLabel = 'Vlr. Unit'#225'rio'
      FieldName = 'VlrUnitario'
      DisplayFormat = '0.00'
    end
    object mItensNotaVlrTotal: TFloatField
      DisplayLabel = 'Vlr. Total'
      FieldName = 'VlrTotal'
      DisplayFormat = '0.00'
    end
    object mItensNotaAliqIcms: TFloatField
      DisplayLabel = '% ICMS'
      FieldName = 'AliqIcms'
    end
    object mItensNotaAliqIPI: TFloatField
      DisplayLabel = '% IPI'
      FieldName = 'AliqIPI'
    end
    object mItensNotaCodSitTrib: TStringField
      DisplayLabel = 'CST ICMS'
      FieldName = 'CodSitTrib'
      Size = 3
    end
    object mItensNotaCodSitTribInterno: TIntegerField
      DisplayLabel = 'C'#243'd. CST ICMS Interno'
      FieldName = 'CodSitTribInterno'
    end
    object mItensNotaCodCSTIPI: TStringField
      DisplayLabel = 'CST IPI'
      FieldName = 'CodCSTIPI'
      Size = 3
    end
    object mItensNotaCodCofins: TStringField
      DisplayLabel = 'CST Cofins'
      FieldName = 'CodCofins'
      Size = 3
    end
    object mItensNotaCodPIS: TStringField
      FieldName = 'CodPIS'
      Size = 3
    end
    object mItensNotaAliqPIS: TFloatField
      FieldName = 'AliqPIS'
    end
    object mItensNotaAliqCofins: TFloatField
      FieldName = 'AliqCofins'
    end
    object mItensNotaVlrPis: TFloatField
      FieldName = 'VlrPis'
      DisplayFormat = '0.00'
    end
    object mItensNotaVlrIcms: TFloatField
      DisplayLabel = 'Vlr. Icms'
      FieldName = 'VlrIcms'
      DisplayFormat = '0.00'
    end
    object mItensNotaVlrCofins: TFloatField
      FieldName = 'VlrCofins'
      DisplayFormat = '0.00'
    end
    object mItensNotaVlrIPI: TFloatField
      DisplayLabel = 'Vlr. IPI'
      FieldName = 'VlrIPI'
      DisplayFormat = '0.00'
    end
    object mItensNotaBaseIcms: TFloatField
      DisplayLabel = 'Base Icms'
      FieldName = 'BaseIcms'
    end
    object mItensNotaUnidade: TStringField
      DisplayLabel = 'Unid.'
      FieldName = 'Unidade'
      Size = 6
    end
    object mItensNotaNumPedido: TStringField
      DisplayLabel = 'N'#186' Pedido (OC)'
      FieldName = 'NumPedido'
    end
    object mItensNotaItemPedido: TIntegerField
      DisplayLabel = 'Item Pedido (OC)'
      FieldName = 'ItemPedido'
    end
    object mItensNotaCodBarra: TStringField
      DisplayLabel = 'C'#243'd. Barra'
      FieldName = 'CodBarra'
      Size = 30
    end
    object mItensNotaGravarNovo: TBooleanField
      DisplayLabel = 'Gravar Novo'
      FieldName = 'GravarNovo'
    end
    object mItensNotaPercRedIcms: TFloatField
      DisplayLabel = '% Red. Icms'
      FieldName = 'PercRedIcms'
    end
    object mItensNotaCodFornecedor: TIntegerField
      DisplayLabel = 'C'#243'd. Fornecedor'
      FieldName = 'CodFornecedor'
    end
    object mItensNotaNomeProduto: TStringField
      DisplayLabel = 'Nome Produto'
      FieldName = 'NomeProduto'
      Size = 120
    end
    object mItensNotaNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object mItensNotaCFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object mItensNotaCFOPInterno: TStringField
      DisplayLabel = 'CFOP Interno'
      FieldName = 'CFOPInterno'
      Size = 4
    end
    object mItensNotaBaseCSTRet: TFloatField
      FieldName = 'BaseCSTRet'
    end
    object mItensNotaVlrIcmsCSTRet: TFloatField
      FieldName = 'VlrIcmsCSTRet'
      DisplayFormat = '0.00'
    end
    object mItensNotaModICMS: TStringField
      FieldName = 'ModICMS'
      Size = 1
    end
    object mItensNotaOrigem: TStringField
      FieldName = 'Origem'
      Size = 1
    end
    object mItensNotaModIcmsST: TStringField
      FieldName = 'ModIcmsST'
      Size = 1
    end
    object mItensNotaPercMVAST: TFloatField
      FieldName = 'PercMVAST'
    end
    object mItensNotaPercRedBCST: TFloatField
      FieldName = 'PercRedBCST'
    end
    object mItensNotaBaseCST: TFloatField
      FieldName = 'BaseCST'
    end
    object mItensNotaPercIcmsST: TFloatField
      FieldName = 'PercIcmsST'
    end
    object mItensNotaVlrIcmsST: TFloatField
      FieldName = 'VlrIcmsST'
      DisplayFormat = '0.00'
    end
    object mItensNotaVlrDesconto: TFloatField
      FieldName = 'VlrDesconto'
      DisplayFormat = '0.00'
    end
    object mItensNotaProdMat: TStringField
      FieldName = 'ProdMat'
      Size = 1
    end
    object mItensNotaVlrFrete: TFloatField
      FieldName = 'VlrFrete'
      DisplayFormat = '0.00'
    end
    object mItensNotaInfAdicionais: TStringField
      FieldName = 'InfAdicionais'
      Size = 250
    end
    object mItensNotaNumLote: TStringField
      DisplayLabel = 'No. Lote'
      FieldName = 'NumLote'
      Size = 15
    end
    object mItensNotaQtdPacote: TFloatField
      DisplayLabel = 'Qtd. Pacote'
      FieldName = 'QtdPacote'
    end
    object mItensNotaMercado: TStringField
      FieldName = 'Mercado'
      Size = 1
    end
    object mItensNotaCFOPOriginal: TStringField
      DisplayLabel = 'CFOP Original'
      FieldName = 'CFOPOriginal'
      Size = 5
    end
    object mItensNotaConversorUnidade: TFloatField
      FieldName = 'ConversorUnidade'
    end
    object mItensNotaID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object mItensNotaNomeProduto_Nota: TStringField
      FieldName = 'NomeProduto_Nota'
      Size = 100
    end
    object mItensNotaTipoVenda: TStringField
      FieldName = 'TipoVenda'
      Size = 1
    end
    object mItensNotaID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object mItensNotaID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object mItensNotaID_Cofins: TIntegerField
      FieldName = 'ID_Cofins'
    end
    object mItensNotaID_Pis: TIntegerField
      FieldName = 'ID_Pis'
    end
    object mItensNotaReferencia_Int: TStringField
      FieldName = 'Referencia_Int'
    end
    object mItensNotaID_Pedido: TIntegerField
      FieldName = 'ID_Pedido'
    end
    object mItensNotaItem_Unidade: TIntegerField
      FieldName = 'Item_Unidade'
    end
    object mItensNotaConverter_Unid_Medida: TBooleanField
      FieldName = 'Converter_Unid_Medida'
    end
    object mItensNotaQtdPacoteInterno: TFloatField
      FieldName = 'QtdPacoteInterno'
    end
    object mItensNotaUnidadeInterno: TStringField
      FieldName = 'UnidadeInterno'
      Size = 6
    end
    object mItensNotaID_SitTrib_CF: TIntegerField
      FieldName = 'ID_SitTrib_CF'
    end
    object mItensNotaCod_SitTrib_CF: TStringField
      FieldName = 'Cod_SitTrib_CF'
      Size = 5
    end
    object mItensNotaUsa_Cor: TStringField
      FieldName = 'Usa_Cor'
      Size = 1
    end
    object mItensNotaID_Cor: TIntegerField
      FieldName = 'ID_Cor'
    end
    object mItensNotaUsa_Preco_Cor: TStringField
      FieldName = 'Usa_Preco_Cor'
      Size = 1
    end
    object mItensNotaInativo_Produto: TStringField
      FieldName = 'Inativo_Produto'
      Size = 1
    end
    object mItensNotaNum_Lote_Controle: TStringField
      FieldName = 'Num_Lote_Controle'
    end
    object mItensNotaID_CFOP_NFCe: TIntegerField
      FieldName = 'ID_CFOP_NFCe'
    end
    object mItensNotaCodCFOP_NFCe: TStringField
      FieldName = 'CodCFOP_NFCe'
      Size = 4
    end
    object mItensNotaObs_Complementar: TStringField
      FieldName = 'Obs_Complementar'
      Size = 250
    end
    object mItensNotaAtualizarCustoTotal: TBooleanField
      FieldName = 'AtualizarCustoTotal'
    end
    object mItensNotaAtualizarPreco: TBooleanField
      FieldName = 'AtualizarPreco'
    end
    object mItensNotaPerc_Margem: TFloatField
      FieldName = 'Perc_Margem'
    end
    object mItensNotaID_Grupo: TIntegerField
      FieldName = 'ID_Grupo'
    end
    object mItensNotaNome_Grupo: TStringField
      FieldName = 'Nome_Grupo'
      Size = 60
    end
    object mItensNotaVlr_Venda: TFloatField
      FieldName = 'Vlr_Venda'
      DisplayFormat = '0.00'
    end
    object mItensNotaVlr_Custo_Prod: TFloatField
      FieldName = 'Vlr_Custo_Prod'
      DisplayFormat = '0.00'
    end
    object mItensNotaPerc_ISSQN: TFloatField
      FieldName = 'Perc_ISSQN'
    end
    object mItensNotaVlr_ISSQN: TFloatField
      FieldName = 'Vlr_ISSQN'
      DisplayFormat = '0.00'
    end
    object mItensNotaNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object mItensNotaSerie: TStringField
      FieldName = 'Serie'
      Size = 3
    end
    object mItensNotaNome_Cor: TStringField
      FieldName = 'Nome_Cor'
      Size = 60
    end
    object mItensNotaCEST: TStringField
      FieldName = 'CEST'
      Size = 7
    end
    object mItensNotaCEST_Interno: TStringField
      FieldName = 'CEST_Interno'
      Size = 7
    end
    object mItensNotaGerar_CLiquido: TBooleanField
      FieldName = 'Gerar_CLiquido'
    end
    object mItensNotaSUB_PISCOFINS_CUSTO: TStringField
      FieldName = 'SUB_PISCOFINS_CUSTO'
      Size = 1
    end
    object mItensNotaSUB_ICMS_CUSTO: TStringField
      FieldName = 'SUB_ICMS_CUSTO'
      Size = 1
    end
    object mItensNotaSOMAR_IPI_NO_CUSTO: TStringField
      FieldName = 'SOMAR_IPI_NO_CUSTO'
      Size = 1
    end
    object mItensNotaSOMAR_FRETE_NO_CUSTO: TStringField
      FieldName = 'SOMAR_FRETE_NO_CUSTO'
      Size = 1
    end
    object mItensNotaSOMAR_ST_NO_CUSTO: TStringField
      FieldName = 'SOMAR_ST_NO_CUSTO'
      Size = 1
    end
    object mItensNotaTipoVenda_Prod: TStringField
      FieldName = 'TipoVenda_Prod'
      Size = 1
    end
    object mItensNotaAtualizarNCM: TBooleanField
      FieldName = 'AtualizarNCM'
    end
    object mItensNotaGravar_Adic_Prod: TStringField
      FieldName = 'Gravar_Adic_Prod'
      Size = 1
    end
    object mItensNotaSUB_IPI_Custo: TStringField
      FieldName = 'SUB_IPI_Custo'
      Size = 1
    end
    object mItensNotaPreco_Custo_Total: TFloatField
      FieldName = 'Preco_Custo_Total'
      DisplayFormat = '0.00'
    end
    object mItensNotaCodBarra2: TStringField
      FieldName = 'CodBarra2'
      Size = 14
    end
    object mItensNotaGerar_Estoque: TStringField
      FieldName = 'Gerar_Estoque'
      Size = 1
    end
    object mItensNotaID_ContaOrcamento: TIntegerField
      FieldName = 'ID_ContaOrcamento'
    end
    object mItensNotaID_CentroCusto: TIntegerField
      FieldName = 'ID_CentroCusto'
    end
    object mItensNotaNome_ContaOrcamento: TStringField
      FieldName = 'Nome_ContaOrcamento'
      Size = 60
    end
    object mItensNotaPosse_Material: TStringField
      FieldName = 'Posse_Material'
      Size = 1
    end
    object mItensNotaPerc_Devol: TFloatField
      FieldName = 'Perc_Devol'
    end
    object mItensNotaVlr_IPI_Devol: TFloatField
      FieldName = 'Vlr_IPI_Devol'
    end
    object mItensNotaPerc_Base_Red_Efet: TFloatField
      FieldName = 'Perc_Base_Red_Efet'
    end
    object mItensNotaVlr_Base_Efet: TFloatField
      FieldName = 'Vlr_Base_Efet'
    end
    object mItensNotaPerc_ICMS_Efet: TFloatField
      FieldName = 'Perc_ICMS_Efet'
    end
    object mItensNotaVlr_ICMS_Efet: TFloatField
      FieldName = 'Vlr_ICMS_Efet'
    end
    object mItensNotaItem_NTE: TIntegerField
      FieldName = 'Item_NTE'
    end
    object mItensNotaID_NTE: TIntegerField
      FieldName = 'ID_NTE'
    end
    object mItensNotaNum_Nota_NTE: TIntegerField
      FieldName = 'Num_Nota_NTE'
    end
    object mItensNotaSped_Tipo: TStringField
      FieldName = 'Sped_Tipo'
      Size = 2
    end
    object mItensNotaPossuiRateio: TBooleanField
      FieldName = 'PossuiRateio'
    end
    object mItensNotaCodCFOPAtual: TStringField
      FieldName = 'CodCFOPAtual'
      Size = 5
    end
    object mItensNotaCodCFOPNCM: TStringField
      FieldName = 'CodCFOPNCM'
      Size = 5
    end
    object mItensNotaCopiar_CFOP_Prod: TStringField
      FieldName = 'Copiar_CFOP_Prod'
      Size = 1
    end
    object mItensNotaID_CFOPNCM: TIntegerField
      FieldName = 'ID_CFOPNCM'
    end
    object mItensNotaID_CFOPAtual: TIntegerField
      FieldName = 'ID_CFOPAtual'
    end
    object mItensNotaVlr_Icms_Substituto: TFloatField
      FieldName = 'Vlr_Icms_Substituto'
    end
    object mItensNotaBase_Pis: TFloatField
      FieldName = 'Base_Pis'
    end
    object mItensNotaBase_Cofins: TFloatField
      FieldName = 'Base_Cofins'
    end
    object mItensNotaANP_PRODUTO: TStringField
      FieldName = 'ANP_PRODUTO'
      Size = 9
    end
    object mItensNotaANP_UF_CONS: TStringField
      FieldName = 'ANP_UF_CONS'
      Size = 2
    end
    object mItensNotaANP_DESCRICAO: TStringField
      FieldName = 'ANP_DESCRICAO'
      Size = 100
    end
    object mItensNotaANP_PERC_PGNI: TFloatField
      FieldName = 'ANP_PERC_PGNI'
    end
    object mItensNotaANP_PERC_PGNN: TFloatField
      FieldName = 'ANP_PERC_PGNN'
    end
    object mItensNotaANP_ID: TIntegerField
      FieldName = 'ANP_ID'
    end
    object mItensNotaNome_CentroCusto: TStringField
      FieldName = 'Nome_CentroCusto'
      Size = 60
    end
    object mItensNotaVlr_Venda_Atual: TFloatField
      FieldName = 'Vlr_Venda_Atual'
      DisplayFormat = '0.00'
    end
    object mItensNotaVlrUnitario_Conversao: TFloatField
      FieldName = 'VlrUnitario_Conversao'
      DisplayFormat = '0.00'
    end
    object mItensNotaPreco_Custo_Ant: TFloatField
      FieldName = 'Preco_Custo_Ant'
      DisplayFormat = '0.00'
    end
    object mItensNotaCodCor_Forn: TStringField
      FieldName = 'CodCor_Forn'
      Size = 10
    end
    object mItensNotaMarca: TStringField
      FieldName = 'Marca'
      Size = 40
    end
    object mItensNotaID_MARCA: TIntegerField
      FieldName = 'ID_MARCA'
    end
    object mItensNotaID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object mItensNotaNOME_SERVICO_INT: TStringField
      FieldName = 'NOME_SERVICO_INT'
      Size = 30
    end
    object mItensNotaNomeProduto_Int: TStringField
      FieldName = 'NomeProduto_Int'
      Size = 100
    end
    object mItensNotaPerc_Diferido: TFloatField
      FieldName = 'Perc_Diferido'
    end
    object mItensNotaRegMS: TStringField
      FieldName = 'RegMS'
    end
    object mItensNotaID_CFOP_Ped: TIntegerField
      DisplayLabel = 'ID CFOP Ped'
      FieldName = 'ID_CFOP_Ped'
    end
    object mItensNotaCodCFOP_Ped: TStringField
      DisplayLabel = 'CFOP Ped'
      FieldName = 'CodCFOP_Ped'
      Size = 4
    end
    object mItensNotaCodProduto_Ped: TIntegerField
      DisplayLabel = 'C'#243'd. Produto Ped'
      FieldName = 'CodProduto_Ped'
    end
    object mItensNotaPreco_Custo_Manual: TFloatField
      FieldName = 'Preco_Custo_Manual'
    end
    object mItensNotaDtValidade: TDateField
      FieldName = 'DtValidade'
    end
    object mItensNotaID_Tipo_Material: TIntegerField
      FieldName = 'ID_Tipo_Material'
    end
    object mItensNotaNome_Tipo_Material: TStringField
      FieldName = 'Nome_Tipo_Material'
      Size = 40
    end
    object mItensNotaNomeProduto_Pedido: TStringField
      FieldName = 'NomeProduto_Pedido'
      Size = 100
    end
    object mItensNotaVlr_Pedido_Total: TFloatField
      FieldName = 'Vlr_Pedido_Total'
    end
    object mItensNotaVlr_Pedido_Unitario: TFloatField
      FieldName = 'Vlr_Pedido_Unitario'
    end
    object mItensNotaQtd_Pedido: TFloatField
      FieldName = 'Qtd_Pedido'
    end
    object mItensNotaUnidade_Pedido: TStringField
      FieldName = 'Unidade_Pedido'
      Size = 6
    end
    object mItensNotaNum_OS: TStringField
      FieldName = 'Num_OS'
      Size = 30
    end
    object mItensNotaPedido_Cliente: TStringField
      FieldName = 'Pedido_Cliente'
    end
    object mItensNotaOBS_Pedido: TStringField
      FieldName = 'OBS_Pedido'
      Size = 200
    end
    object mItensNotaOBS_Pedido_NFe: TStringField
      FieldName = 'OBS_Pedido_NFe'
      Size = 200
    end
    object mItensNotaItem_Cliente: TIntegerField
      FieldName = 'Item_Cliente'
    end
    object mItensNotaCod_Produto_Nome: TStringField
      FieldName = 'Cod_Produto_Nome'
      Size = 30
    end
    object mItensNotaID_Variacao: TIntegerField
      FieldName = 'ID_Variacao'
    end
    object mItensNotaVlr_Outros_Itens: TFloatField
      FieldName = 'Vlr_Outros_Itens'
    end
    object mItensNotaGrafico: TGraphicField
      FieldName = 'Grafico'
      BlobType = ftGraphic
    end
    object mItensNotaAtualizarPrecoVenda: TBooleanField
      FieldName = 'AtualizarPrecoVenda'
    end
    object mItensNotaComprimento: TFloatField
      FieldName = 'Comprimento'
    end
    object mItensNotaLargura: TFloatField
      FieldName = 'Largura'
    end
    object mItensNotaEspessura: TFloatField
      FieldName = 'Espessura'
    end
    object mItensNotaPreco_Varejo: TCurrencyField
      FieldName = 'Preco_Varejo'
      DisplayFormat = '0.00'
    end
  end
  object dsmItensNota: TDataSource
    DataSet = mItensNota
    Left = 952
    Top = 232
  end
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 96
    Top = 14
    object sdsProdutoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sdsProdutoPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object sdsProdutoPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
    object sdsProdutoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object sdsProdutoPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object sdsProdutoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object sdsProdutoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object sdsProdutoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoPOSSE_MATERIAL: TStringField
      FieldName = 'POSSE_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoMATERIAL_OUTROS: TStringField
      FieldName = 'MATERIAL_OUTROS'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsProdutoDTCAD: TDateField
      FieldName = 'DTCAD'
    end
    object sdsProdutoHRCAD: TTimeField
      FieldName = 'HRCAD'
    end
    object sdsProdutoCA: TStringField
      FieldName = 'CA'
    end
    object sdsProdutoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
    object sdsProdutoID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object sdsProdutoORIGEM_PROD: TStringField
      FieldName = 'ORIGEM_PROD'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsProdutoCODSITCF: TStringField
      FieldName = 'CODSITCF'
      Size = 5
    end
    object sdsProdutoPERC_REDUCAOICMS: TFloatField
      FieldName = 'PERC_REDUCAOICMS'
    end
    object sdsProdutoTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoPERC_MARGEMLUCRO: TFloatField
      FieldName = 'PERC_MARGEMLUCRO'
    end
    object sdsProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsProdutoDT_ALTPRECO: TDateField
      FieldName = 'DT_ALTPRECO'
    end
    object sdsProdutoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object sdsProdutoCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object sdsProdutoID_SITTRIB_CF: TIntegerField
      FieldName = 'ID_SITTRIB_CF'
    end
    object sdsProdutoUSA_PRECO_COR: TStringField
      FieldName = 'USA_PRECO_COR'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoUSA_COR: TStringField
      FieldName = 'USA_COR'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object sdsProdutoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsProdutoID_CFOP_NFCE: TIntegerField
      FieldName = 'ID_CFOP_NFCE'
    end
    object sdsProdutoPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
    end
    object sdsProdutoDT_ALT_PRECOCUSTO: TDateField
      FieldName = 'DT_ALT_PRECOCUSTO'
    end
    object sdsProdutoID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
    end
    object sdsProdutoUSA_PERC_IMP_INTERESTADUAL: TStringField
      FieldName = 'USA_PERC_IMP_INTERESTADUAL'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoREFERENCIA_SEQ: TIntegerField
      FieldName = 'REFERENCIA_SEQ'
    end
    object sdsProdutoUSA_CLIQ: TStringField
      FieldName = 'USA_CLIQ'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoPRECO_LIQ: TFloatField
      FieldName = 'PRECO_LIQ'
    end
    object sdsProdutoCOD_BARRA2: TStringField
      FieldName = 'COD_BARRA2'
      Size = 14
    end
    object sdsProdutoSPED_TIPO_ITEM: TStringField
      FieldName = 'SPED_TIPO_ITEM'
      Size = 2
    end
    object sdsProdutoANP_ID: TIntegerField
      FieldName = 'ANP_ID'
    end
    object sdsProdutoID_MARCA: TIntegerField
      FieldName = 'ID_MARCA'
    end
    object sdsProdutoRMS: TStringField
      FieldName = 'RMS'
      Size = 25
    end
    object sdsProdutoID_TIPO_MATERIAL: TIntegerField
      FieldName = 'ID_TIPO_MATERIAL'
    end
    object sdsProdutoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsProdutoID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object sdsProdutoNOME2: TStringField
      FieldName = 'NOME2'
      Size = 100
    end
    object sdsProdutoCOD_PRODUTO_CLI_NOME: TStringField
      FieldName = 'COD_PRODUTO_CLI_NOME'
      Size = 30
    end
    object sdsProdutoCONFERIDO: TStringField
      FieldName = 'CONFERIDO'
      Size = 1
    end
    object sdsProdutoPRECO_VAREJO: TFloatField
      FieldName = 'PRECO_VAREJO'
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspProdutoUpdateError
    Left = 144
    Top = 16
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspProduto'
    Left = 192
    Top = 16
    object cdsProdutoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsProdutoPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object cdsProdutoPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
    object cdsProdutoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsProdutoPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsProdutoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsProdutoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object cdsProdutoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoPOSSE_MATERIAL: TStringField
      FieldName = 'POSSE_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoMATERIAL_OUTROS: TStringField
      FieldName = 'MATERIAL_OUTROS'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsProdutoDTCAD: TDateField
      FieldName = 'DTCAD'
    end
    object cdsProdutoHRCAD: TTimeField
      FieldName = 'HRCAD'
    end
    object cdsProdutoCA: TStringField
      FieldName = 'CA'
    end
    object cdsProdutoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
    object cdsProdutoID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object cdsProdutoORIGEM_PROD: TStringField
      FieldName = 'ORIGEM_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsProdutoCODSITCF: TStringField
      FieldName = 'CODSITCF'
      Size = 5
    end
    object cdsProdutoPERC_REDUCAOICMS: TFloatField
      FieldName = 'PERC_REDUCAOICMS'
    end
    object cdsProdutoTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoPERC_MARGEMLUCRO: TFloatField
      FieldName = 'PERC_MARGEMLUCRO'
    end
    object cdsProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsProdutoDT_ALTPRECO: TDateField
      FieldName = 'DT_ALTPRECO'
    end
    object cdsProdutoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object cdsProdutoCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object cdsProdutoID_SITTRIB_CF: TIntegerField
      FieldName = 'ID_SITTRIB_CF'
    end
    object cdsProdutoUSA_PRECO_COR: TStringField
      FieldName = 'USA_PRECO_COR'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoUSA_COR: TStringField
      FieldName = 'USA_COR'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsProdutoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsProdutoID_CFOP_NFCE: TIntegerField
      FieldName = 'ID_CFOP_NFCE'
    end
    object cdsProdutoPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
    end
    object cdsProdutoDT_ALT_PRECOCUSTO: TDateField
      FieldName = 'DT_ALT_PRECOCUSTO'
    end
    object cdsProdutoID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
    end
    object cdsProdutoUSA_PERC_IMP_INTERESTADUAL: TStringField
      FieldName = 'USA_PERC_IMP_INTERESTADUAL'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoREFERENCIA_SEQ: TIntegerField
      FieldName = 'REFERENCIA_SEQ'
    end
    object cdsProdutoUSA_CLIQ: TStringField
      FieldName = 'USA_CLIQ'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoPRECO_LIQ: TFloatField
      FieldName = 'PRECO_LIQ'
    end
    object cdsProdutoCOD_BARRA2: TStringField
      FieldName = 'COD_BARRA2'
      Size = 14
    end
    object cdsProdutoSPED_TIPO_ITEM: TStringField
      FieldName = 'SPED_TIPO_ITEM'
      Size = 2
    end
    object cdsProdutoANP_ID: TIntegerField
      FieldName = 'ANP_ID'
    end
    object cdsProdutoID_MARCA: TIntegerField
      FieldName = 'ID_MARCA'
    end
    object cdsProdutoRMS: TStringField
      FieldName = 'RMS'
      Size = 25
    end
    object cdsProdutoID_TIPO_MATERIAL: TIntegerField
      FieldName = 'ID_TIPO_MATERIAL'
    end
    object cdsProdutoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsProdutoID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object cdsProdutoNOME2: TStringField
      FieldName = 'NOME2'
      Size = 100
    end
    object cdsProdutoCOD_PRODUTO_CLI_NOME: TStringField
      FieldName = 'COD_PRODUTO_CLI_NOME'
      Size = 30
    end
    object cdsProdutoCONFERIDO: TStringField
      FieldName = 'CONFERIDO'
      Size = 1
    end
    object cdsProdutoPRECO_VAREJO: TFloatField
      FieldName = 'PRECO_VAREJO'
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 232
    Top = 16
  end
  object qCFOP: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CODCFOP'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM TAB_CFOP'
      'WHERE CODCFOP = :CODCFOP')
    SQLConnection = DmDatabase.scoDados
    Left = 822
    Top = 24
    object qCFOPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qCFOPCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object qCFOPNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object qCFOPENTRADASAIDA: TStringField
      FieldName = 'ENTRADASAIDA'
      FixedChar = True
      Size = 1
    end
    object qCFOPGERAR_IPI: TStringField
      FieldName = 'GERAR_IPI'
      FixedChar = True
      Size = 1
    end
    object qCFOPGERAR_ICMS: TStringField
      FieldName = 'GERAR_ICMS'
      FixedChar = True
      Size = 1
    end
    object qCFOPGERAR_DUPLICATA: TStringField
      FieldName = 'GERAR_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object qCFOPSOMAR_VLRTOTALPRODUTO: TStringField
      FieldName = 'SOMAR_VLRTOTALPRODUTO'
      FixedChar = True
      Size = 1
    end
    object qCFOPNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object qCFOPID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object qCFOPID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object qCFOPCOPIARNOTATRIANGULAR: TStringField
      FieldName = 'COPIARNOTATRIANGULAR'
      FixedChar = True
      Size = 1
    end
    object qCFOPID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object qCFOPID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object qCFOPTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      Size = 2
    end
    object qCFOPTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      Size = 2
    end
    object qCFOPGERAR_ICMS_SIMPLES: TStringField
      FieldName = 'GERAR_ICMS_SIMPLES'
      FixedChar = True
      Size = 1
    end
    object qCFOPTIPO_EMPRESA: TStringField
      FieldName = 'TIPO_EMPRESA'
      FixedChar = True
      Size = 1
    end
    object qCFOPSUBSTITUICAO_TRIB: TStringField
      FieldName = 'SUBSTITUICAO_TRIB'
      FixedChar = True
      Size = 1
    end
    object qCFOPMVA: TStringField
      FieldName = 'MVA'
      FixedChar = True
      Size = 1
    end
    object qCFOPPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object qCFOPPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object qCFOPLEI: TMemoField
      FieldName = 'LEI'
      BlobType = ftMemo
      Size = 1
    end
    object qCFOPBENEFICIAMENTO: TStringField
      FieldName = 'BENEFICIAMENTO'
      FixedChar = True
      Size = 1
    end
    object qCFOPALT_NCM_CUSTO: TStringField
      FieldName = 'ALT_NCM_CUSTO'
      FixedChar = True
      Size = 1
    end
    object qCFOPGERAR_ESTOQUE: TStringField
      FieldName = 'GERAR_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object qCFOPDEPARA_COM_CST: TStringField
      FieldName = 'DEPARA_COM_CST'
      FixedChar = True
      Size = 1
    end
    object qCFOPGERAR_PEDIDO: TStringField
      FieldName = 'GERAR_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object qCFOPENTRAR_COMO_CLIENTE: TStringField
      FieldName = 'ENTRAR_COMO_CLIENTE'
      FixedChar = True
      Size = 1
    end
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS'
      'WHERE ID = :ID')
    SQLConnection = DmDatabase.scoDados
    Left = 912
    Top = 24
    object qParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametrosENDXMLNFE: TStringField
      FieldName = 'ENDXMLNFE'
      Size = 250
    end
    object qParametrosENDPDFNFE: TStringField
      FieldName = 'ENDPDFNFE'
      Size = 250
    end
    object qParametrosSERIENORMAL: TStringField
      FieldName = 'SERIENORMAL'
      Size = 3
    end
    object qParametrosSERIECONTINGENCIA: TStringField
      FieldName = 'SERIECONTINGENCIA'
      Size = 3
    end
    object qParametrosLOCALSERVIDORNFE: TStringField
      FieldName = 'LOCALSERVIDORNFE'
      Size = 100
    end
    object qParametrosEMAILRESPONSAVELSISTEMA: TStringField
      FieldName = 'EMAILRESPONSAVELSISTEMA'
      Size = 200
    end
    object qParametrosNFEPRODUCAO: TStringField
      FieldName = 'NFEPRODUCAO'
      FixedChar = True
      Size = 1
    end
    object qParametrosANEXARDANFE: TStringField
      FieldName = 'ANEXARDANFE'
      FixedChar = True
      Size = 1
    end
    object qParametrosVERSAONFE: TStringField
      FieldName = 'VERSAONFE'
      Size = 10
    end
    object qParametrosVERSAOEMISSAONFE: TStringField
      FieldName = 'VERSAOEMISSAONFE'
      Size = 10
    end
    object qParametrosTIPOLOGONFE: TStringField
      FieldName = 'TIPOLOGONFE'
      FixedChar = True
      Size = 1
    end
    object qParametrosAPLICARDESCONTONOICMS: TStringField
      FieldName = 'APLICARDESCONTONOICMS'
      FixedChar = True
      Size = 1
    end
    object qParametrosAPLICARDESCONTONOIPI: TStringField
      FieldName = 'APLICARDESCONTONOIPI'
      FixedChar = True
      Size = 1
    end
    object qParametrosSOMARNOPROD_FRETE: TStringField
      FieldName = 'SOMARNOPROD_FRETE'
      FixedChar = True
      Size = 1
    end
    object qParametrosSOMARNOPROD_OUTRASDESP: TStringField
      FieldName = 'SOMARNOPROD_OUTRASDESP'
      FixedChar = True
      Size = 1
    end
    object qParametrosSOMARNOPROD_SEGURO: TStringField
      FieldName = 'SOMARNOPROD_SEGURO'
      FixedChar = True
      Size = 1
    end
    object qParametrosAJUSTELOGONFEAUTOMATICO: TStringField
      FieldName = 'AJUSTELOGONFEAUTOMATICO'
      FixedChar = True
      Size = 1
    end
    object qParametrosINFNUMNOTAMANUAL: TStringField
      FieldName = 'INFNUMNOTAMANUAL'
      FixedChar = True
      Size = 1
    end
    object qParametrosOPCAO_DTENTREGAPEDIDO: TStringField
      FieldName = 'OPCAO_DTENTREGAPEDIDO'
      FixedChar = True
      Size = 1
    end
    object qParametrosOBS_SIMPLES: TStringField
      FieldName = 'OBS_SIMPLES'
      Size = 250
    end
    object qParametrosIMP_OBSSIMPLES: TStringField
      FieldName = 'IMP_OBSSIMPLES'
      FixedChar = True
      Size = 1
    end
    object qParametrosIMP_REFERENCIANANOTA: TStringField
      FieldName = 'IMP_REFERENCIANANOTA'
      FixedChar = True
      Size = 1
    end
    object qParametrosENVIARNOTABENEF_NANFE: TStringField
      FieldName = 'ENVIARNOTABENEF_NANFE'
      FixedChar = True
      Size = 1
    end
    object qParametrosESPECIE_NOTA: TStringField
      FieldName = 'ESPECIE_NOTA'
    end
    object qParametrosMARCA_NOTA: TStringField
      FieldName = 'MARCA_NOTA'
    end
    object qParametrosVERSAO_BANCO: TIntegerField
      FieldName = 'VERSAO_BANCO'
    end
    object qParametrosUSA_QTDPACOTE_NTE: TStringField
      FieldName = 'USA_QTDPACOTE_NTE'
      FixedChar = True
      Size = 1
    end
    object qParametrosATUALIZAR_PRECO: TStringField
      FieldName = 'ATUALIZAR_PRECO'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_DESCRICAODANOTA: TStringField
      FieldName = 'USA_DESCRICAODANOTA'
      FixedChar = True
      Size = 1
    end
    object qParametrosENDXML_NOTAENTRADA: TStringField
      FieldName = 'ENDXML_NOTAENTRADA'
      Size = 250
    end
    object qParametrosGRAVAR_NA_REF_CODPRODFORN: TStringField
      FieldName = 'GRAVAR_NA_REF_CODPRODFORN'
      FixedChar = True
      Size = 1
    end
    object qParametrosGRAVAR_PROD_MAT_RECXML: TStringField
      FieldName = 'GRAVAR_PROD_MAT_RECXML'
      FixedChar = True
      Size = 1
    end
    object qParametrosGRAVAR_INF_ADICIONAIS_NTE: TStringField
      FieldName = 'GRAVAR_INF_ADICIONAIS_NTE'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_CUPOM_FISCAL: TStringField
      FieldName = 'USA_CUPOM_FISCAL'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_PERC_MARGEM_RECEPCAO: TStringField
      FieldName = 'USA_PERC_MARGEM_RECEPCAO'
      FixedChar = True
      Size = 1
    end
    object qParametrosPROCURAR_POR_REF_XML: TStringField
      FieldName = 'PROCURAR_POR_REF_XML'
      FixedChar = True
      Size = 1
    end
    object qParametrosINFORMAR_COR_MATERIAL: TStringField
      FieldName = 'INFORMAR_COR_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object qParametrosINFORMAR_COR_PROD: TStringField
      FieldName = 'INFORMAR_COR_PROD'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_LOCAL_ESTOQUE: TStringField
      FieldName = 'USA_LOCAL_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_LOTE_CONTROLE: TStringField
      FieldName = 'USA_LOTE_CONTROLE'
      FixedChar = True
      Size = 1
    end
    object qParametrosID_LOCAL_ESTOQUE_NTE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE_NTE'
    end
    object qParametrosUSA_APROVACAO_OC_FORN: TStringField
      FieldName = 'USA_APROVACAO_OC_FORN'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_NFCE: TStringField
      FieldName = 'USA_NFCE'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_GRADE: TStringField
      FieldName = 'USA_GRADE'
      FixedChar = True
      Size = 1
    end
    object qParametrosEMPRESA_SUCATA: TStringField
      FieldName = 'EMPRESA_SUCATA'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_CONTA_ORCAMENTO: TStringField
      FieldName = 'USA_CONTA_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object qParametrosMOSTRAR_MARCAR_PROD: TStringField
      FieldName = 'MOSTRAR_MARCAR_PROD'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_PRODUTO_CLIENTE: TStringField
      FieldName = 'USA_PRODUTO_CLIENTE'
      FixedChar = True
      Size = 1
    end
  end
  object sdsCidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CIDADE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 96
    Top = 64
    object sdsCidadeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object sdsCidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sdsCidadeCODMUNICIPIO: TStringField
      FieldName = 'CODMUNICIPIO'
      Size = 7
    end
  end
  object dspCidade: TDataSetProvider
    DataSet = sdsCidade
    OnUpdateError = dspCidadeUpdateError
    Left = 145
    Top = 64
  end
  object cdsCidade: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCidade'
    Left = 192
    Top = 64
    object cdsCidadeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsCidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsCidadeCODMUNICIPIO: TStringField
      FieldName = 'CODMUNICIPIO'
      Size = 7
    end
  end
  object dsCidade: TDataSource
    DataSet = cdsCidade
    Left = 232
    Top = 64
  end
  object sdsPais: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PAIS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 96
    Top = 120
    object sdsPaisID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPaisNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsPaisCODPAIS: TStringField
      FieldName = 'CODPAIS'
      Size = 5
    end
  end
  object dspPais: TDataSetProvider
    DataSet = sdsPais
    OnUpdateError = dspPaisUpdateError
    Left = 144
    Top = 120
  end
  object cdsPais: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspPais'
    Left = 192
    Top = 120
    object cdsPaisID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPaisNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsPaisCODPAIS: TStringField
      FieldName = 'CODPAIS'
      Size = 5
    end
  end
  object dsPais: TDataSource
    DataSet = cdsPais
    Left = 232
    Top = 120
  end
  object sdsFornecedor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PESSOA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 96
    Top = 167
    object sdsFornecedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsFornecedorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsFornecedorFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object sdsFornecedorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object sdsFornecedorCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object sdsFornecedorNUM_END: TStringField
      FieldName = 'NUM_END'
    end
    object sdsFornecedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sdsFornecedorID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object sdsFornecedorCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sdsFornecedorUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object sdsFornecedorCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sdsFornecedorDDDFONE1: TIntegerField
      FieldName = 'DDDFONE1'
    end
    object sdsFornecedorTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 15
    end
    object sdsFornecedorDDDFONE2: TIntegerField
      FieldName = 'DDDFONE2'
    end
    object sdsFornecedorTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object sdsFornecedorDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object sdsFornecedorFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object sdsFornecedorPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object sdsFornecedorCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object sdsFornecedorINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object sdsFornecedorENDERECO_ENT: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 40
    end
    object sdsFornecedorCOMPLEMENTO_END_ENT: TStringField
      FieldName = 'COMPLEMENTO_END_ENT'
      Size = 60
    end
    object sdsFornecedorNUM_END_ENT: TStringField
      FieldName = 'NUM_END_ENT'
    end
    object sdsFornecedorBAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 26
    end
    object sdsFornecedorID_CIDADE_ENT: TIntegerField
      FieldName = 'ID_CIDADE_ENT'
    end
    object sdsFornecedorCIDADE_ENT: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 40
    end
    object sdsFornecedorCEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 10
    end
    object sdsFornecedorUF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object sdsFornecedorPESSOA_ENT: TStringField
      FieldName = 'PESSOA_ENT'
      FixedChar = True
      Size = 1
    end
    object sdsFornecedorCNPJ_CPF_ENT: TStringField
      FieldName = 'CNPJ_CPF_ENT'
      Size = 18
    end
    object sdsFornecedorINSC_EST_ENT: TStringField
      FieldName = 'INSC_EST_ENT'
      Size = 18
    end
    object sdsFornecedorENDERECO_PGTO: TStringField
      FieldName = 'ENDERECO_PGTO'
      Size = 40
    end
    object sdsFornecedorCOMPLEMENTO_END_PGTO: TStringField
      FieldName = 'COMPLEMENTO_END_PGTO'
      Size = 60
    end
    object sdsFornecedorNUM_END_PGTO: TStringField
      FieldName = 'NUM_END_PGTO'
    end
    object sdsFornecedorBAIRRO_PGTO: TStringField
      FieldName = 'BAIRRO_PGTO'
      Size = 26
    end
    object sdsFornecedorID_CIDADE_PGTO: TIntegerField
      FieldName = 'ID_CIDADE_PGTO'
    end
    object sdsFornecedorCIDADE_PGTO: TStringField
      FieldName = 'CIDADE_PGTO'
      Size = 40
    end
    object sdsFornecedorCEP_PGTO: TStringField
      FieldName = 'CEP_PGTO'
      Size = 10
    end
    object sdsFornecedorUF_PGTO: TStringField
      FieldName = 'UF_PGTO'
      FixedChar = True
      Size = 2
    end
    object sdsFornecedorUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsFornecedorDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object sdsFornecedorHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
    end
    object sdsFornecedorOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsFornecedorCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      Size = 10
    end
    object sdsFornecedorRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object sdsFornecedorID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object sdsFornecedorID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object sdsFornecedorID_CONTABOLETO: TIntegerField
      FieldName = 'ID_CONTABOLETO'
    end
    object sdsFornecedorID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object sdsFornecedorID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object sdsFornecedorID_REDESPACHO: TIntegerField
      FieldName = 'ID_REDESPACHO'
    end
    object sdsFornecedorID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
    end
    object sdsFornecedorID_REGIME_TRIB: TIntegerField
      FieldName = 'ID_REGIME_TRIB'
    end
    object sdsFornecedorPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object sdsFornecedorDDD_ENT: TIntegerField
      FieldName = 'DDD_ENT'
    end
    object sdsFornecedorFONE_ENT: TStringField
      FieldName = 'FONE_ENT'
      Size = 15
    end
    object sdsFornecedorDDD_PGTO: TIntegerField
      FieldName = 'DDD_PGTO'
    end
    object sdsFornecedorFONE_PGTO: TStringField
      FieldName = 'FONE_PGTO'
      Size = 15
    end
    object sdsFornecedorINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsFornecedorHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 200
    end
    object sdsFornecedorTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      FixedChar = True
      Size = 1
    end
    object sdsFornecedorNOME_ENTREGA: TStringField
      FieldName = 'NOME_ENTREGA'
      Size = 60
    end
    object sdsFornecedorEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 250
    end
    object sdsFornecedorEMAIL_PGTO: TStringField
      FieldName = 'EMAIL_PGTO'
      Size = 150
    end
    object sdsFornecedorEMAIL_NFE2: TStringField
      FieldName = 'EMAIL_NFE2'
      Size = 150
    end
    object sdsFornecedorPESSOA_PGTO: TStringField
      FieldName = 'PESSOA_PGTO'
      FixedChar = True
      Size = 1
    end
    object sdsFornecedorCNPJ_CPG_PGTO: TStringField
      FieldName = 'CNPJ_CPG_PGTO'
      Size = 18
    end
    object sdsFornecedorINSC_EST_PGTO: TStringField
      FieldName = 'INSC_EST_PGTO'
      Size = 18
    end
    object sdsFornecedorUF_PLACA: TStringField
      FieldName = 'UF_PLACA'
      Size = 2
    end
    object sdsFornecedorPLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object sdsFornecedorTP_CLIENTE: TStringField
      FieldName = 'TP_CLIENTE'
      Size = 1
    end
    object sdsFornecedorTP_FORNECEDOR: TStringField
      FieldName = 'TP_FORNECEDOR'
      Size = 1
    end
    object sdsFornecedorTP_TRANSPORTADORA: TStringField
      FieldName = 'TP_TRANSPORTADORA'
      Size = 1
    end
    object sdsFornecedorTP_VENDEDOR: TStringField
      FieldName = 'TP_VENDEDOR'
      Size = 1
    end
    object sdsFornecedorFORNECEDOR_CONTA_ID: TIntegerField
      FieldName = 'FORNECEDOR_CONTA_ID'
    end
    object sdsFornecedorORGAO_PUBLICO: TStringField
      FieldName = 'ORGAO_PUBLICO'
      FixedChar = True
      Size = 1
    end
    object sdsFornecedorCLIENTE_ESTOQUE: TStringField
      FieldName = 'CLIENTE_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object sdsFornecedorUSA_TAMANHO_AGRUPADO_NFE: TStringField
      FieldName = 'USA_TAMANHO_AGRUPADO_NFE'
      FixedChar = True
      Size = 1
    end
    object sdsFornecedorTP_ALUNO: TStringField
      FieldName = 'TP_ALUNO'
      FixedChar = True
      Size = 1
    end
    object sdsFornecedorTIPO_CONSUMIDOR: TSmallintField
      FieldName = 'TIPO_CONSUMIDOR'
    end
    object sdsFornecedorTIPO_CONTRIBUINTE: TSmallintField
      FieldName = 'TIPO_CONTRIBUINTE'
    end
    object sdsFornecedorTP_PREPOSTO: TStringField
      FieldName = 'TP_PREPOSTO'
      Size = 1
    end
    object sdsFornecedorTP_EXPORTACAO: TStringField
      FieldName = 'TP_EXPORTACAO'
      Size = 1
    end
    object sdsFornecedorFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsFornecedorCONT_CUSTO_LIQ: TStringField
      FieldName = 'CONT_CUSTO_LIQ'
      Size = 1
    end
    object sdsFornecedorASSOCIAR_PROD: TStringField
      FieldName = 'ASSOCIAR_PROD'
      FixedChar = True
      Size = 1
    end
    object sdsFornecedorDIMINUIR_RETENCAO: TStringField
      FieldName = 'DIMINUIR_RETENCAO'
      FixedChar = True
      Size = 1
    end
    object sdsFornecedorCOD_CLIENTE_PROD: TIntegerField
      FieldName = 'COD_CLIENTE_PROD'
    end
    object sdsFornecedorDIGITO_SEPARADO_TAM: TStringField
      FieldName = 'DIGITO_SEPARADO_TAM'
      FixedChar = True
      Size = 1
    end
    object sdsFornecedorUSAR_COD_CLIENTE_PROD: TStringField
      FieldName = 'USAR_COD_CLIENTE_PROD'
      FixedChar = True
      Size = 1
    end
    object sdsFornecedorID_PRODUTO_DESP: TIntegerField
      FieldName = 'ID_PRODUTO_DESP'
    end
  end
  object dspFornecedor: TDataSetProvider
    DataSet = sdsFornecedor
    OnUpdateError = dspFornecedorUpdateError
    Left = 144
    Top = 168
  end
  object cdsFornecedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFornecedor'
    OnNewRecord = cdsFornecedorNewRecord
    Left = 192
    Top = 168
    object cdsFornecedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsFornecedorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsFornecedorFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsFornecedorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsFornecedorCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object cdsFornecedorNUM_END: TStringField
      FieldName = 'NUM_END'
    end
    object cdsFornecedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsFornecedorID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsFornecedorCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsFornecedorUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsFornecedorCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsFornecedorDDDFONE1: TIntegerField
      FieldName = 'DDDFONE1'
    end
    object cdsFornecedorTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 15
    end
    object cdsFornecedorDDDFONE2: TIntegerField
      FieldName = 'DDDFONE2'
    end
    object cdsFornecedorTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object cdsFornecedorDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object cdsFornecedorFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cdsFornecedorPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsFornecedorCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsFornecedorINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object cdsFornecedorENDERECO_ENT: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 40
    end
    object cdsFornecedorCOMPLEMENTO_END_ENT: TStringField
      FieldName = 'COMPLEMENTO_END_ENT'
      Size = 60
    end
    object cdsFornecedorNUM_END_ENT: TStringField
      FieldName = 'NUM_END_ENT'
    end
    object cdsFornecedorBAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 26
    end
    object cdsFornecedorID_CIDADE_ENT: TIntegerField
      FieldName = 'ID_CIDADE_ENT'
    end
    object cdsFornecedorCIDADE_ENT: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 40
    end
    object cdsFornecedorCEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 10
    end
    object cdsFornecedorUF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object cdsFornecedorPESSOA_ENT: TStringField
      FieldName = 'PESSOA_ENT'
      FixedChar = True
      Size = 1
    end
    object cdsFornecedorCNPJ_CPF_ENT: TStringField
      FieldName = 'CNPJ_CPF_ENT'
      Size = 18
    end
    object cdsFornecedorINSC_EST_ENT: TStringField
      FieldName = 'INSC_EST_ENT'
      Size = 18
    end
    object cdsFornecedorENDERECO_PGTO: TStringField
      FieldName = 'ENDERECO_PGTO'
      Size = 40
    end
    object cdsFornecedorCOMPLEMENTO_END_PGTO: TStringField
      FieldName = 'COMPLEMENTO_END_PGTO'
      Size = 60
    end
    object cdsFornecedorNUM_END_PGTO: TStringField
      FieldName = 'NUM_END_PGTO'
    end
    object cdsFornecedorBAIRRO_PGTO: TStringField
      FieldName = 'BAIRRO_PGTO'
      Size = 26
    end
    object cdsFornecedorID_CIDADE_PGTO: TIntegerField
      FieldName = 'ID_CIDADE_PGTO'
    end
    object cdsFornecedorCIDADE_PGTO: TStringField
      FieldName = 'CIDADE_PGTO'
      Size = 40
    end
    object cdsFornecedorCEP_PGTO: TStringField
      FieldName = 'CEP_PGTO'
      Size = 10
    end
    object cdsFornecedorUF_PGTO: TStringField
      FieldName = 'UF_PGTO'
      FixedChar = True
      Size = 2
    end
    object cdsFornecedorUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsFornecedorDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object cdsFornecedorHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
    end
    object cdsFornecedorOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsFornecedorCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      Size = 10
    end
    object cdsFornecedorRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object cdsFornecedorID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsFornecedorID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsFornecedorID_CONTABOLETO: TIntegerField
      FieldName = 'ID_CONTABOLETO'
    end
    object cdsFornecedorID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsFornecedorID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object cdsFornecedorID_REDESPACHO: TIntegerField
      FieldName = 'ID_REDESPACHO'
    end
    object cdsFornecedorID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
    end
    object cdsFornecedorID_REGIME_TRIB: TIntegerField
      FieldName = 'ID_REGIME_TRIB'
    end
    object cdsFornecedorPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsFornecedorDDD_ENT: TIntegerField
      FieldName = 'DDD_ENT'
    end
    object cdsFornecedorFONE_ENT: TStringField
      FieldName = 'FONE_ENT'
      Size = 15
    end
    object cdsFornecedorDDD_PGTO: TIntegerField
      FieldName = 'DDD_PGTO'
    end
    object cdsFornecedorFONE_PGTO: TStringField
      FieldName = 'FONE_PGTO'
      Size = 15
    end
    object cdsFornecedorINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsFornecedorHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 200
    end
    object cdsFornecedorTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      FixedChar = True
      Size = 1
    end
    object cdsFornecedorNOME_ENTREGA: TStringField
      FieldName = 'NOME_ENTREGA'
      Size = 60
    end
    object cdsFornecedorEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 250
    end
    object cdsFornecedorEMAIL_PGTO: TStringField
      FieldName = 'EMAIL_PGTO'
      Size = 150
    end
    object cdsFornecedorEMAIL_NFE2: TStringField
      FieldName = 'EMAIL_NFE2'
      Size = 150
    end
    object cdsFornecedorPESSOA_PGTO: TStringField
      FieldName = 'PESSOA_PGTO'
      FixedChar = True
      Size = 1
    end
    object cdsFornecedorCNPJ_CPG_PGTO: TStringField
      FieldName = 'CNPJ_CPG_PGTO'
      Size = 18
    end
    object cdsFornecedorINSC_EST_PGTO: TStringField
      FieldName = 'INSC_EST_PGTO'
      Size = 18
    end
    object cdsFornecedorUF_PLACA: TStringField
      FieldName = 'UF_PLACA'
      Size = 2
    end
    object cdsFornecedorPLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object cdsFornecedorTP_CLIENTE: TStringField
      FieldName = 'TP_CLIENTE'
      Size = 1
    end
    object cdsFornecedorTP_FORNECEDOR: TStringField
      FieldName = 'TP_FORNECEDOR'
      Size = 1
    end
    object cdsFornecedorTP_TRANSPORTADORA: TStringField
      FieldName = 'TP_TRANSPORTADORA'
      Size = 1
    end
    object cdsFornecedorTP_VENDEDOR: TStringField
      FieldName = 'TP_VENDEDOR'
      Size = 1
    end
    object cdsFornecedorFORNECEDOR_CONTA_ID: TIntegerField
      FieldName = 'FORNECEDOR_CONTA_ID'
    end
    object cdsFornecedorORGAO_PUBLICO: TStringField
      FieldName = 'ORGAO_PUBLICO'
      FixedChar = True
      Size = 1
    end
    object cdsFornecedorCLIENTE_ESTOQUE: TStringField
      FieldName = 'CLIENTE_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsFornecedorUSA_TAMANHO_AGRUPADO_NFE: TStringField
      FieldName = 'USA_TAMANHO_AGRUPADO_NFE'
      FixedChar = True
      Size = 1
    end
    object cdsFornecedorTP_ALUNO: TStringField
      FieldName = 'TP_ALUNO'
      FixedChar = True
      Size = 1
    end
    object cdsFornecedorTIPO_CONSUMIDOR: TSmallintField
      FieldName = 'TIPO_CONSUMIDOR'
    end
    object cdsFornecedorTIPO_CONTRIBUINTE: TSmallintField
      FieldName = 'TIPO_CONTRIBUINTE'
    end
    object cdsFornecedorTP_PREPOSTO: TStringField
      FieldName = 'TP_PREPOSTO'
      Size = 1
    end
    object cdsFornecedorTP_EXPORTACAO: TStringField
      FieldName = 'TP_EXPORTACAO'
      Size = 1
    end
    object cdsFornecedorFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsFornecedorCONT_CUSTO_LIQ: TStringField
      FieldName = 'CONT_CUSTO_LIQ'
      Size = 1
    end
    object cdsFornecedorASSOCIAR_PROD: TStringField
      FieldName = 'ASSOCIAR_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsFornecedorDIMINUIR_RETENCAO: TStringField
      FieldName = 'DIMINUIR_RETENCAO'
      FixedChar = True
      Size = 1
    end
    object cdsFornecedorCOD_CLIENTE_PROD: TIntegerField
      FieldName = 'COD_CLIENTE_PROD'
    end
    object cdsFornecedorDIGITO_SEPARADO_TAM: TStringField
      FieldName = 'DIGITO_SEPARADO_TAM'
      FixedChar = True
      Size = 1
    end
    object cdsFornecedorUSAR_COD_CLIENTE_PROD: TStringField
      FieldName = 'USAR_COD_CLIENTE_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsFornecedorID_PRODUTO_DESP: TIntegerField
      FieldName = 'ID_PRODUTO_DESP'
    end
  end
  object dsFornecedor: TDataSource
    DataSet = cdsFornecedor
    Left = 232
    Top = 168
  end
  object sdsNotaFiscal: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM NOTAFISCAL'#13#10'WHERE ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 97
    Top = 332
    object sdsNotaFiscalID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNotaFiscalFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsNotaFiscalSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object sdsNotaFiscalNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object sdsNotaFiscalDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsNotaFiscalID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object sdsNotaFiscalID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsNotaFiscalID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object sdsNotaFiscalID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object sdsNotaFiscalVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
    end
    object sdsNotaFiscalVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
    object sdsNotaFiscalVLR_NOTA: TFloatField
      FieldName = 'VLR_NOTA'
    end
    object sdsNotaFiscalVLR_ITENS: TFloatField
      FieldName = 'VLR_ITENS'
    end
    object sdsNotaFiscalVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
    object sdsNotaFiscalVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
    end
    object sdsNotaFiscalPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object sdsNotaFiscalVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object sdsNotaFiscalVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object sdsNotaFiscalVLR_SEGURO: TFloatField
      FieldName = 'VLR_SEGURO'
    end
    object sdsNotaFiscalVLR_OUTRASDESP: TFloatField
      FieldName = 'VLR_OUTRASDESP'
    end
    object sdsNotaFiscalBASE_ICMSTRANSF: TFloatField
      FieldName = 'BASE_ICMSTRANSF'
    end
    object sdsNotaFiscalPERC_TRANSF: TFloatField
      FieldName = 'PERC_TRANSF'
    end
    object sdsNotaFiscalVLR_TRANSF: TFloatField
      FieldName = 'VLR_TRANSF'
    end
    object sdsNotaFiscalVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
    end
    object sdsNotaFiscalVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
    end
    object sdsNotaFiscalVLR_TAXACISCOMEX: TFloatField
      FieldName = 'VLR_TAXACISCOMEX'
    end
    object sdsNotaFiscalVLR_OUTROS: TFloatField
      FieldName = 'VLR_OUTROS'
    end
    object sdsNotaFiscalBASE_ICMSSIMPLES: TFloatField
      FieldName = 'BASE_ICMSSIMPLES'
    end
    object sdsNotaFiscalVLR_ICMSSIMPLES: TFloatField
      FieldName = 'VLR_ICMSSIMPLES'
    end
    object sdsNotaFiscalPERC_ICMSSIMPLES: TFloatField
      FieldName = 'PERC_ICMSSIMPLES'
    end
    object sdsNotaFiscalVLR_IMPORTACAO: TFloatField
      FieldName = 'VLR_IMPORTACAO'
    end
    object sdsNotaFiscalBASE_ICMSSUBST: TFloatField
      FieldName = 'BASE_ICMSSUBST'
    end
    object sdsNotaFiscalVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
    end
    object sdsNotaFiscalBASE_ICMSOUTROS: TFloatField
      FieldName = 'BASE_ICMSOUTROS'
    end
    object sdsNotaFiscalVLR_ICMSOUTROS: TFloatField
      FieldName = 'VLR_ICMSOUTROS'
    end
    object sdsNotaFiscalVLR_DUPLICATAOUTROS: TFloatField
      FieldName = 'VLR_DUPLICATAOUTROS'
    end
    object sdsNotaFiscalVLR_ADUANEIRA: TFloatField
      FieldName = 'VLR_ADUANEIRA'
    end
    object sdsNotaFiscalPERC_ICMS_PISCOFINS: TFloatField
      FieldName = 'PERC_ICMS_PISCOFINS'
    end
    object sdsNotaFiscalPERC_ICMS_OUTROSVALORES: TFloatField
      FieldName = 'PERC_ICMS_OUTROSVALORES'
    end
    object sdsNotaFiscalPERC_ICMS_FRETE: TFloatField
      FieldName = 'PERC_ICMS_FRETE'
    end
    object sdsNotaFiscalPERC_DESCONTOORIG: TFloatField
      FieldName = 'PERC_DESCONTOORIG'
    end
    object sdsNotaFiscalQTDVOLUME: TIntegerField
      FieldName = 'QTDVOLUME'
    end
    object sdsNotaFiscalESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 30
    end
    object sdsNotaFiscalMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object sdsNotaFiscalNUMEROVOLUME: TStringField
      FieldName = 'NUMEROVOLUME'
      Size = 30
    end
    object sdsNotaFiscalPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
    object sdsNotaFiscalPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object sdsNotaFiscalPLACA: TStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object sdsNotaFiscalUFPLACA: TStringField
      FieldName = 'UFPLACA'
      Size = 2
    end
    object sdsNotaFiscalTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      Size = 1
    end
    object sdsNotaFiscalID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object sdsNotaFiscalID_REDESPACHO: TIntegerField
      FieldName = 'ID_REDESPACHO'
    end
    object sdsNotaFiscalCANCELADA: TStringField
      FieldName = 'CANCELADA'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalMOTIVO_CANCELADA: TStringField
      FieldName = 'MOTIVO_CANCELADA'
      Size = 100
    end
    object sdsNotaFiscalDTSAIDAENTRADA: TDateField
      FieldName = 'DTSAIDAENTRADA'
    end
    object sdsNotaFiscalHRSAIDAENTRADA: TTimeField
      FieldName = 'HRSAIDAENTRADA'
    end
    object sdsNotaFiscalID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object sdsNotaFiscalLOCALENTREGA: TStringField
      FieldName = 'LOCALENTREGA'
      Size = 1
    end
    object sdsNotaFiscalID_EXTCOMISSAO: TIntegerField
      FieldName = 'ID_EXTCOMISSAO'
    end
    object sdsNotaFiscalDESCRICAO_DESC: TStringField
      FieldName = 'DESCRICAO_DESC'
      Size = 70
    end
    object sdsNotaFiscalID_CLIENTETRIANG: TIntegerField
      FieldName = 'ID_CLIENTETRIANG'
    end
    object sdsNotaFiscalQTDTOTAL_ITENS: TIntegerField
      FieldName = 'QTDTOTAL_ITENS'
    end
    object sdsNotaFiscalNFERECIBO: TStringField
      FieldName = 'NFERECIBO'
      Size = 45
    end
    object sdsNotaFiscalNFEPROTOCOLO: TStringField
      FieldName = 'NFEPROTOCOLO'
      Size = 45
    end
    object sdsNotaFiscalNFECHAVEACESSO: TStringField
      FieldName = 'NFECHAVEACESSO'
      Size = 44
    end
    object sdsNotaFiscalNFEPROTOCOLO_CANCELADA: TStringField
      FieldName = 'NFEPROTOCOLO_CANCELADA'
      Size = 45
    end
    object sdsNotaFiscalTIPO_ENVIONFE: TStringField
      FieldName = 'TIPO_ENVIONFE'
      Size = 25
    end
    object sdsNotaFiscalNFECODBARRA_CONTINGENCIA: TStringField
      FieldName = 'NFECODBARRA_CONTINGENCIA'
      Size = 44
    end
    object sdsNotaFiscalNFEVERSAO: TStringField
      FieldName = 'NFEVERSAO'
      Size = 10
    end
    object sdsNotaFiscalNFEFINALIDADE: TStringField
      FieldName = 'NFEFINALIDADE'
      Size = 1
    end
    object sdsNotaFiscalNFEAMBIENTE: TStringField
      FieldName = 'NFEAMBIENTE'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalNUMNOTACOPIADA: TIntegerField
      FieldName = 'NUMNOTACOPIADA'
    end
    object sdsNotaFiscalSERIECOPIADA: TStringField
      FieldName = 'SERIECOPIADA'
      Size = 3
    end
    object sdsNotaFiscalDTCONTINGENCIA: TDateField
      FieldName = 'DTCONTINGENCIA'
    end
    object sdsNotaFiscalHRCONTINGENCIA: TTimeField
      FieldName = 'HRCONTINGENCIA'
    end
    object sdsNotaFiscalMOTIVO_CONTINGENCIA: TStringField
      FieldName = 'MOTIVO_CONTINGENCIA'
      Size = 250
    end
    object sdsNotaFiscalNFEVERSAOEMISSAO: TStringField
      FieldName = 'NFEVERSAOEMISSAO'
    end
    object sdsNotaFiscalID_REGIMETRIB: TIntegerField
      FieldName = 'ID_REGIMETRIB'
    end
    object sdsNotaFiscalRNTC: TStringField
      FieldName = 'RNTC'
    end
    object sdsNotaFiscalVAGAOBALSA_IDENTIF: TStringField
      FieldName = 'VAGAOBALSA_IDENTIF'
    end
    object sdsNotaFiscalVAGAOBALSA_TIPOIDENTIF: TStringField
      FieldName = 'VAGAOBALSA_TIPOIDENTIF'
      Size = 1
    end
    object sdsNotaFiscalUFEMBEXPORTACAO: TStringField
      FieldName = 'UFEMBEXPORTACAO'
      Size = 2
    end
    object sdsNotaFiscalLOCALEMBEXPORTACAO: TStringField
      FieldName = 'LOCALEMBEXPORTACAO'
      Size = 60
    end
    object sdsNotaFiscalPISCOFINS_SOMAROUTRASDESP: TStringField
      FieldName = 'PISCOFINS_SOMAROUTRASDESP'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalGERARDUPL_OUTROSVALORES: TStringField
      FieldName = 'GERARDUPL_OUTROSVALORES'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalGERARDUPL_FRETE: TStringField
      FieldName = 'GERARDUPL_FRETE'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalGERARDUPL_SEGURO: TStringField
      FieldName = 'GERARDUPL_SEGURO'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalINFORMADO_NUMNOTAMANUAL: TStringField
      FieldName = 'INFORMADO_NUMNOTAMANUAL'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalNFEDENEGADA: TStringField
      FieldName = 'NFEDENEGADA'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalMOTIVO_DENEGADA: TStringField
      FieldName = 'MOTIVO_DENEGADA'
      Size = 250
    end
    object sdsNotaFiscalDADOS_ADICIONAIS: TMemoField
      FieldName = 'DADOS_ADICIONAIS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsNotaFiscalBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object sdsNotaFiscalDTINICIO_DUPLICATA: TDateField
      FieldName = 'DTINICIO_DUPLICATA'
    end
    object sdsNotaFiscalTIPO_DESCONTO: TStringField
      FieldName = 'TIPO_DESCONTO'
      Size = 1
    end
    object sdsNotaFiscalTIPO_PRAZO: TStringField
      FieldName = 'TIPO_PRAZO'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object sdsNotaFiscalTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalSIMPLES_FILIAL: TStringField
      FieldName = 'SIMPLES_FILIAL'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object sdsNotaFiscalID_OPERACAO_NOTA: TIntegerField
      FieldName = 'ID_OPERACAO_NOTA'
    end
    object sdsNotaFiscalFINALIDADE: TStringField
      FieldName = 'FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalID_VARIACAO: TIntegerField
      FieldName = 'ID_VARIACAO'
    end
    object sdsNotaFiscalID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
    end
    object sdsNotaFiscalVLR_ICMSSUBST_PROPRIO: TFloatField
      FieldName = 'VLR_ICMSSUBST_PROPRIO'
    end
    object sdsNotaFiscalBASE_ICMSSUBST_PROPRIO: TFloatField
      FieldName = 'BASE_ICMSSUBST_PROPRIO'
    end
    object sdsNotaFiscalVLR_ICMS_UF_DEST: TFloatField
      FieldName = 'VLR_ICMS_UF_DEST'
    end
    object sdsNotaFiscalVLR_ICMS_UF_REMET: TFloatField
      FieldName = 'VLR_ICMS_UF_REMET'
    end
    object sdsNotaFiscalBASE_ICMS_FCP: TFloatField
      FieldName = 'BASE_ICMS_FCP'
    end
    object sdsNotaFiscalBASE_FCP_ST: TFloatField
      FieldName = 'BASE_FCP_ST'
    end
    object sdsNotaFiscalVLR_FCP_ST: TFloatField
      FieldName = 'VLR_FCP_ST'
    end
    object sdsNotaFiscalPERC_FCP_ST: TFloatField
      FieldName = 'PERC_FCP_ST'
    end
    object sdsNotaFiscalVLR_ICMS_FCP_DEST: TFloatField
      FieldName = 'VLR_ICMS_FCP_DEST'
    end
    object sdsNotaFiscalBASE_ICMS_FCP_DEST: TFloatField
      FieldName = 'BASE_ICMS_FCP_DEST'
    end
    object sdsNotaFiscalSOMAR_FRETE_II: TStringField
      FieldName = 'SOMAR_FRETE_II'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalVLR_IPI_DEVOL: TFloatField
      FieldName = 'VLR_IPI_DEVOL'
    end
    object sdsNotaFiscalBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
    end
    object sdsNotaFiscalVLR_BASE_EFET: TFloatField
      FieldName = 'VLR_BASE_EFET'
    end
    object sdsNotaFiscalVLR_ICMS_EFET: TFloatField
      FieldName = 'VLR_ICMS_EFET'
    end
    object sdsNotaFiscalBASE_ICMSSUBST_RET: TFloatField
      FieldName = 'BASE_ICMSSUBST_RET'
    end
    object sdsNotaFiscalVLR_ICMSSUBST_RET: TFloatField
      FieldName = 'VLR_ICMSSUBST_RET'
    end
    object sdsNotaFiscalBASE_PIS: TFloatField
      FieldName = 'BASE_PIS'
    end
    object sdsNotaFiscalBASE_COFINS: TFloatField
      FieldName = 'BASE_COFINS'
    end
    object sdsNotaFiscalID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object sdsNotaFiscalVLR_SALDO_USADO: TFloatField
      FieldName = 'VLR_SALDO_USADO'
    end
    object sdsNotaFiscalID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object sdsNotaFiscalCONFERIDO: TStringField
      FieldName = 'CONFERIDO'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsNotaFiscalDESPESA_APAGAR: TStringField
      FieldName = 'DESPESA_APAGAR'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalVLR_OUTROS_ITENS: TFloatField
      FieldName = 'VLR_OUTROS_ITENS'
    end
    object sdsNotaFiscalVLR_DESCONTO_ITENS: TFloatField
      FieldName = 'VLR_DESCONTO_ITENS'
    end
    object sdsNotaFiscalID_TIPO_COBRANCA: TIntegerField
      FieldName = 'ID_TIPO_COBRANCA'
    end
  end
  object dspNotaFiscal: TDataSetProvider
    DataSet = sdsNotaFiscal
    OnUpdateError = dspNotaFiscalUpdateError
    Left = 136
    Top = 332
  end
  object cdsNotaFiscal: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspNotaFiscal'
    Left = 177
    Top = 332
    object cdsNotaFiscalFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object cdsNotaFiscalID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaFiscalSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsNotaFiscalNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsNotaFiscalDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsNotaFiscalID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsNotaFiscalID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsNotaFiscalID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsNotaFiscalID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsNotaFiscalVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_NOTA: TFloatField
      FieldName = 'VLR_NOTA'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_ITENS: TFloatField
      FieldName = 'VLR_ITENS'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_SEGURO: TFloatField
      FieldName = 'VLR_SEGURO'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_OUTRASDESP: TFloatField
      FieldName = 'VLR_OUTRASDESP'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalBASE_ICMSTRANSF: TFloatField
      FieldName = 'BASE_ICMSTRANSF'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalPERC_TRANSF: TFloatField
      FieldName = 'PERC_TRANSF'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_TRANSF: TFloatField
      FieldName = 'VLR_TRANSF'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_TAXACISCOMEX: TFloatField
      FieldName = 'VLR_TAXACISCOMEX'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_OUTROS: TFloatField
      FieldName = 'VLR_OUTROS'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalBASE_ICMSSIMPLES: TFloatField
      FieldName = 'BASE_ICMSSIMPLES'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_ICMSSIMPLES: TFloatField
      FieldName = 'VLR_ICMSSIMPLES'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalPERC_ICMSSIMPLES: TFloatField
      FieldName = 'PERC_ICMSSIMPLES'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_IMPORTACAO: TFloatField
      FieldName = 'VLR_IMPORTACAO'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalBASE_ICMSSUBST: TFloatField
      FieldName = 'BASE_ICMSSUBST'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalBASE_ICMSOUTROS: TFloatField
      FieldName = 'BASE_ICMSOUTROS'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_ICMSOUTROS: TFloatField
      FieldName = 'VLR_ICMSOUTROS'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_DUPLICATAOUTROS: TFloatField
      FieldName = 'VLR_DUPLICATAOUTROS'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_ADUANEIRA: TFloatField
      FieldName = 'VLR_ADUANEIRA'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalPERC_ICMS_PISCOFINS: TFloatField
      FieldName = 'PERC_ICMS_PISCOFINS'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalPERC_ICMS_OUTROSVALORES: TFloatField
      FieldName = 'PERC_ICMS_OUTROSVALORES'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalPERC_ICMS_FRETE: TFloatField
      FieldName = 'PERC_ICMS_FRETE'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalPERC_DESCONTOORIG: TFloatField
      FieldName = 'PERC_DESCONTOORIG'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalQTDVOLUME: TIntegerField
      FieldName = 'QTDVOLUME'
    end
    object cdsNotaFiscalESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 30
    end
    object cdsNotaFiscalMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object cdsNotaFiscalNUMEROVOLUME: TStringField
      FieldName = 'NUMEROVOLUME'
      Size = 30
    end
    object cdsNotaFiscalPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
    object cdsNotaFiscalPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object cdsNotaFiscalPLACA: TStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object cdsNotaFiscalUFPLACA: TStringField
      FieldName = 'UFPLACA'
      Size = 2
    end
    object cdsNotaFiscalTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      Size = 1
    end
    object cdsNotaFiscalID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsNotaFiscalID_REDESPACHO: TIntegerField
      FieldName = 'ID_REDESPACHO'
    end
    object cdsNotaFiscalCANCELADA: TStringField
      FieldName = 'CANCELADA'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalMOTIVO_CANCELADA: TStringField
      FieldName = 'MOTIVO_CANCELADA'
      Size = 100
    end
    object cdsNotaFiscalDTSAIDAENTRADA: TDateField
      FieldName = 'DTSAIDAENTRADA'
    end
    object cdsNotaFiscalHRSAIDAENTRADA: TTimeField
      FieldName = 'HRSAIDAENTRADA'
    end
    object cdsNotaFiscalID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object cdsNotaFiscalLOCALENTREGA: TStringField
      FieldName = 'LOCALENTREGA'
      Size = 1
    end
    object cdsNotaFiscalID_EXTCOMISSAO: TIntegerField
      FieldName = 'ID_EXTCOMISSAO'
    end
    object cdsNotaFiscalDESCRICAO_DESC: TStringField
      FieldName = 'DESCRICAO_DESC'
      Size = 70
    end
    object cdsNotaFiscalID_CLIENTETRIANG: TIntegerField
      FieldName = 'ID_CLIENTETRIANG'
    end
    object cdsNotaFiscalQTDTOTAL_ITENS: TIntegerField
      FieldName = 'QTDTOTAL_ITENS'
    end
    object cdsNotaFiscalNFERECIBO: TStringField
      FieldName = 'NFERECIBO'
      Size = 45
    end
    object cdsNotaFiscalNFEPROTOCOLO: TStringField
      FieldName = 'NFEPROTOCOLO'
      Size = 45
    end
    object cdsNotaFiscalNFECHAVEACESSO: TStringField
      FieldName = 'NFECHAVEACESSO'
      Size = 44
    end
    object cdsNotaFiscalNFEPROTOCOLO_CANCELADA: TStringField
      FieldName = 'NFEPROTOCOLO_CANCELADA'
      Size = 45
    end
    object cdsNotaFiscalTIPO_ENVIONFE: TStringField
      FieldName = 'TIPO_ENVIONFE'
      Size = 25
    end
    object cdsNotaFiscalNFECODBARRA_CONTINGENCIA: TStringField
      FieldName = 'NFECODBARRA_CONTINGENCIA'
      Size = 44
    end
    object cdsNotaFiscalNFEVERSAO: TStringField
      FieldName = 'NFEVERSAO'
      Size = 10
    end
    object cdsNotaFiscalNFEFINALIDADE: TStringField
      FieldName = 'NFEFINALIDADE'
      Size = 1
    end
    object cdsNotaFiscalNFEAMBIENTE: TStringField
      FieldName = 'NFEAMBIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalNUMNOTACOPIADA: TIntegerField
      FieldName = 'NUMNOTACOPIADA'
    end
    object cdsNotaFiscalSERIECOPIADA: TStringField
      FieldName = 'SERIECOPIADA'
      Size = 3
    end
    object cdsNotaFiscalDTCONTINGENCIA: TDateField
      FieldName = 'DTCONTINGENCIA'
    end
    object cdsNotaFiscalHRCONTINGENCIA: TTimeField
      FieldName = 'HRCONTINGENCIA'
    end
    object cdsNotaFiscalMOTIVO_CONTINGENCIA: TStringField
      FieldName = 'MOTIVO_CONTINGENCIA'
      Size = 250
    end
    object cdsNotaFiscalNFEVERSAOEMISSAO: TStringField
      FieldName = 'NFEVERSAOEMISSAO'
    end
    object cdsNotaFiscalID_REGIMETRIB: TIntegerField
      FieldName = 'ID_REGIMETRIB'
    end
    object cdsNotaFiscalRNTC: TStringField
      FieldName = 'RNTC'
    end
    object cdsNotaFiscalVAGAOBALSA_IDENTIF: TStringField
      FieldName = 'VAGAOBALSA_IDENTIF'
    end
    object cdsNotaFiscalVAGAOBALSA_TIPOIDENTIF: TStringField
      FieldName = 'VAGAOBALSA_TIPOIDENTIF'
      Size = 1
    end
    object cdsNotaFiscalUFEMBEXPORTACAO: TStringField
      FieldName = 'UFEMBEXPORTACAO'
      Size = 2
    end
    object cdsNotaFiscalLOCALEMBEXPORTACAO: TStringField
      FieldName = 'LOCALEMBEXPORTACAO'
      Size = 60
    end
    object cdsNotaFiscalPISCOFINS_SOMAROUTRASDESP: TStringField
      FieldName = 'PISCOFINS_SOMAROUTRASDESP'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalGERARDUPL_OUTROSVALORES: TStringField
      FieldName = 'GERARDUPL_OUTROSVALORES'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalGERARDUPL_FRETE: TStringField
      FieldName = 'GERARDUPL_FRETE'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalGERARDUPL_SEGURO: TStringField
      FieldName = 'GERARDUPL_SEGURO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalINFORMADO_NUMNOTAMANUAL: TStringField
      FieldName = 'INFORMADO_NUMNOTAMANUAL'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalNFEDENEGADA: TStringField
      FieldName = 'NFEDENEGADA'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalMOTIVO_DENEGADA: TStringField
      FieldName = 'MOTIVO_DENEGADA'
      Size = 250
    end
    object cdsNotaFiscalDADOS_ADICIONAIS: TMemoField
      FieldName = 'DADOS_ADICIONAIS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsNotaFiscalBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalDTINICIO_DUPLICATA: TDateField
      FieldName = 'DTINICIO_DUPLICATA'
    end
    object cdsNotaFiscalTIPO_DESCONTO: TStringField
      FieldName = 'TIPO_DESCONTO'
      Size = 1
    end
    object cdsNotaFiscalTIPO_PRAZO: TStringField
      FieldName = 'TIPO_PRAZO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsNotaFiscalTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalSIMPLES_FILIAL: TStringField
      FieldName = 'SIMPLES_FILIAL'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsNotaFiscalID_OPERACAO_NOTA: TIntegerField
      FieldName = 'ID_OPERACAO_NOTA'
    end
    object cdsNotaFiscalFINALIDADE: TStringField
      FieldName = 'FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalID_VARIACAO: TIntegerField
      FieldName = 'ID_VARIACAO'
    end
    object cdsNotaFiscalsdsNotaFiscal_Itens: TDataSetField
      FieldName = 'sdsNotaFiscal_Itens'
    end
    object cdsNotaFiscalsdsNotaFiscal_Parc: TDataSetField
      FieldName = 'sdsNotaFiscal_Parc'
    end
    object cdsNotaFiscalsdsNotaFiscal_Ref: TDataSetField
      FieldName = 'sdsNotaFiscal_Ref'
    end
    object cdsNotaFiscalID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
    end
    object cdsNotaFiscalVLR_ICMSSUBST_PROPRIO: TFloatField
      FieldName = 'VLR_ICMSSUBST_PROPRIO'
    end
    object cdsNotaFiscalBASE_ICMSSUBST_PROPRIO: TFloatField
      FieldName = 'BASE_ICMSSUBST_PROPRIO'
    end
    object cdsNotaFiscalVLR_ICMS_UF_DEST: TFloatField
      FieldName = 'VLR_ICMS_UF_DEST'
    end
    object cdsNotaFiscalVLR_ICMS_UF_REMET: TFloatField
      FieldName = 'VLR_ICMS_UF_REMET'
    end
    object cdsNotaFiscalBASE_ICMS_FCP: TFloatField
      FieldName = 'BASE_ICMS_FCP'
    end
    object cdsNotaFiscalBASE_FCP_ST: TFloatField
      FieldName = 'BASE_FCP_ST'
    end
    object cdsNotaFiscalVLR_FCP_ST: TFloatField
      FieldName = 'VLR_FCP_ST'
    end
    object cdsNotaFiscalPERC_FCP_ST: TFloatField
      FieldName = 'PERC_FCP_ST'
    end
    object cdsNotaFiscalVLR_ICMS_FCP_DEST: TFloatField
      FieldName = 'VLR_ICMS_FCP_DEST'
    end
    object cdsNotaFiscalBASE_ICMS_FCP_DEST: TFloatField
      FieldName = 'BASE_ICMS_FCP_DEST'
    end
    object cdsNotaFiscalSOMAR_FRETE_II: TStringField
      FieldName = 'SOMAR_FRETE_II'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalVLR_IPI_DEVOL: TFloatField
      FieldName = 'VLR_IPI_DEVOL'
    end
    object cdsNotaFiscalBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
    end
    object cdsNotaFiscalVLR_BASE_EFET: TFloatField
      FieldName = 'VLR_BASE_EFET'
    end
    object cdsNotaFiscalVLR_ICMS_EFET: TFloatField
      FieldName = 'VLR_ICMS_EFET'
    end
    object cdsNotaFiscalBASE_ICMSSUBST_RET: TFloatField
      FieldName = 'BASE_ICMSSUBST_RET'
    end
    object cdsNotaFiscalVLR_ICMSSUBST_RET: TFloatField
      FieldName = 'VLR_ICMSSUBST_RET'
    end
    object cdsNotaFiscalBASE_PIS: TFloatField
      FieldName = 'BASE_PIS'
    end
    object cdsNotaFiscalBASE_COFINS: TFloatField
      FieldName = 'BASE_COFINS'
    end
    object cdsNotaFiscalID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsNotaFiscalVLR_SALDO_USADO: TFloatField
      FieldName = 'VLR_SALDO_USADO'
    end
    object cdsNotaFiscalID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsNotaFiscalCONFERIDO: TStringField
      FieldName = 'CONFERIDO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsNotaFiscalDESPESA_APAGAR: TStringField
      FieldName = 'DESPESA_APAGAR'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalVLR_OUTROS_ITENS: TFloatField
      FieldName = 'VLR_OUTROS_ITENS'
    end
    object cdsNotaFiscalVLR_DESCONTO_ITENS: TFloatField
      FieldName = 'VLR_DESCONTO_ITENS'
    end
    object cdsNotaFiscalID_TIPO_COBRANCA: TIntegerField
      FieldName = 'ID_TIPO_COBRANCA'
    end
  end
  object dsNotaFiscal: TDataSource
    DataSet = cdsNotaFiscal
    Left = 216
    Top = 332
  end
  object dsNotaFiscal_Mestre: TDataSource
    DataSet = sdsNotaFiscal
    Left = 256
    Top = 344
  end
  object sdsNotaFiscal_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM NOTAFISCAL_ITENS'#13#10'WHERE ID = :ID'#13#10
    DataSource = dsNotaFiscal_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 95
    Top = 382
    object sdsNotaFiscal_ItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNotaFiscal_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsNotaFiscal_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsNotaFiscal_ItensID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsNotaFiscal_ItensTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsNotaFiscal_ItensID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object sdsNotaFiscal_ItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsNotaFiscal_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsNotaFiscal_ItensID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object sdsNotaFiscal_ItensID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object sdsNotaFiscal_ItensID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object sdsNotaFiscal_ItensID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object sdsNotaFiscal_ItensID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object sdsNotaFiscal_ItensPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object sdsNotaFiscal_ItensPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object sdsNotaFiscal_ItensVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsNotaFiscal_ItensVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsNotaFiscal_ItensPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object sdsNotaFiscal_ItensVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object sdsNotaFiscal_ItensBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object sdsNotaFiscal_ItensVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
    end
    object sdsNotaFiscal_ItensVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
    object sdsNotaFiscal_ItensPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object sdsNotaFiscal_ItensPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object sdsNotaFiscal_ItensVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
    end
    object sdsNotaFiscal_ItensVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
    end
    object sdsNotaFiscal_ItensTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ItensTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ItensORIGEM_PROD: TStringField
      FieldName = 'ORIGEM_PROD'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ItensBASE_ICMSSIMPLES: TFloatField
      FieldName = 'BASE_ICMSSIMPLES'
    end
    object sdsNotaFiscal_ItensVLR_ICMSSIMPLES: TFloatField
      FieldName = 'VLR_ICMSSIMPLES'
    end
    object sdsNotaFiscal_ItensCALCULARICMSSOBREIPI: TStringField
      FieldName = 'CALCULARICMSSOBREIPI'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ItensNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object sdsNotaFiscal_ItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsNotaFiscal_ItensID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object sdsNotaFiscal_ItensGERAR_DUPLICATA: TStringField
      FieldName = 'GERAR_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ItensGERAR_ESTOQUE: TStringField
      FieldName = 'GERAR_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ItensNUMERO_OC: TStringField
      FieldName = 'NUMERO_OC'
    end
    object sdsNotaFiscal_ItensNUMERO_OS: TStringField
      FieldName = 'NUMERO_OS'
      Size = 30
    end
    object sdsNotaFiscal_ItensITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object sdsNotaFiscal_ItensPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object sdsNotaFiscal_ItensQTDRESTANTE: TFloatField
      FieldName = 'QTDRESTANTE'
    end
    object sdsNotaFiscal_ItensQTDDEVOLVIDA: TFloatField
      FieldName = 'QTDDEVOLVIDA'
    end
    object sdsNotaFiscal_ItensSOMAR_TRANSF_ICMS: TStringField
      FieldName = 'SOMAR_TRANSF_ICMS'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ItensOBS_COMPLEMENTAR: TStringField
      FieldName = 'OBS_COMPLEMENTAR'
      Size = 250
    end
    object sdsNotaFiscal_ItensSOMAR_VLRTOTALPRODUTO: TStringField
      FieldName = 'SOMAR_VLRTOTALPRODUTO'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ItensVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object sdsNotaFiscal_ItensVLR_OUTRASDESPESAS: TFloatField
      FieldName = 'VLR_OUTRASDESPESAS'
    end
    object sdsNotaFiscal_ItensVLR_SEGURO: TFloatField
      FieldName = 'VLR_SEGURO'
    end
    object sdsNotaFiscal_ItensVLR_ICMSFRETE: TFloatField
      FieldName = 'VLR_ICMSFRETE'
    end
    object sdsNotaFiscal_ItensVLR_ICMSOUTRASDESPESAS: TFloatField
      FieldName = 'VLR_ICMSOUTRASDESPESAS'
    end
    object sdsNotaFiscal_ItensBASE_ICMSSUBST: TFloatField
      FieldName = 'BASE_ICMSSUBST'
    end
    object sdsNotaFiscal_ItensVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
    end
    object sdsNotaFiscal_ItensVLR_IMPORTACAO: TFloatField
      FieldName = 'VLR_IMPORTACAO'
    end
    object sdsNotaFiscal_ItensVLR_ADUANEIRA: TFloatField
      FieldName = 'VLR_ADUANEIRA'
    end
    object sdsNotaFiscal_ItensVLR_DESCONTORATEIO: TFloatField
      FieldName = 'VLR_DESCONTORATEIO'
    end
    object sdsNotaFiscal_ItensQTD_ADEVOLVER: TFloatField
      FieldName = 'QTD_ADEVOLVER'
    end
    object sdsNotaFiscal_ItensQTD_PACOTE: TFloatField
      FieldName = 'QTD_PACOTE'
    end
    object sdsNotaFiscal_ItensID_OPERACAO_NOTA: TIntegerField
      FieldName = 'ID_OPERACAO_NOTA'
    end
    object sdsNotaFiscal_ItensITEM_DEVOL: TStringField
      FieldName = 'ITEM_DEVOL'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ItensID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object sdsNotaFiscal_ItensFINALIDADE: TStringField
      FieldName = 'FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ItensID_VARIACAO: TIntegerField
      FieldName = 'ID_VARIACAO'
    end
    object sdsNotaFiscal_ItensPERC_TRIBICMS: TFloatField
      FieldName = 'PERC_TRIBICMS'
    end
    object sdsNotaFiscal_ItensCOD_PRODUTO_FORN: TStringField
      FieldName = 'COD_PRODUTO_FORN'
    end
    object sdsNotaFiscal_ItensCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object sdsNotaFiscal_ItensIMP_OC_NOTA: TStringField
      FieldName = 'IMP_OC_NOTA'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ItensNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object sdsNotaFiscal_ItensID_NTE: TIntegerField
      FieldName = 'ID_NTE'
    end
    object sdsNotaFiscal_ItensITEM_NTE: TIntegerField
      FieldName = 'ITEM_NTE'
    end
    object sdsNotaFiscal_ItensQTD_NOTAATUAL: TFloatField
      FieldName = 'QTD_NOTAATUAL'
    end
    object sdsNotaFiscal_ItensVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
    object sdsNotaFiscal_ItensTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      Size = 1
    end
    object sdsNotaFiscal_ItensTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object sdsNotaFiscal_ItensID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
    end
    object sdsNotaFiscal_ItensCONTA_ORCAMENTO_ID: TIntegerField
      FieldName = 'CONTA_ORCAMENTO_ID'
    end
    object sdsNotaFiscal_ItensNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object sdsNotaFiscal_ItensPERC_ISSQN: TFloatField
      FieldName = 'PERC_ISSQN'
    end
    object sdsNotaFiscal_ItensVLR_ISSQN: TFloatField
      FieldName = 'VLR_ISSQN'
    end
    object sdsNotaFiscal_ItensVLR_ICMS_FCP: TFloatField
      FieldName = 'VLR_ICMS_FCP'
    end
    object sdsNotaFiscal_ItensVLR_ICMS_UF_DEST: TFloatField
      FieldName = 'VLR_ICMS_UF_DEST'
    end
    object sdsNotaFiscal_ItensVLR_ICMS_UF_REMET: TFloatField
      FieldName = 'VLR_ICMS_UF_REMET'
    end
    object sdsNotaFiscal_ItensPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
    end
    object sdsNotaFiscal_ItensCOD_BARRA2: TStringField
      FieldName = 'COD_BARRA2'
      Size = 14
    end
    object sdsNotaFiscal_ItensPERC_MVA: TFloatField
      FieldName = 'PERC_MVA'
    end
    object sdsNotaFiscal_ItensPERC_ICMS_DESON: TFloatField
      FieldName = 'PERC_ICMS_DESON'
    end
    object sdsNotaFiscal_ItensBASE_ICMSSUBST_RET: TFloatField
      FieldName = 'BASE_ICMSSUBST_RET'
    end
    object sdsNotaFiscal_ItensBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
    end
    object sdsNotaFiscal_ItensVLR_IPI_DEVOL: TFloatField
      FieldName = 'VLR_IPI_DEVOL'
    end
    object sdsNotaFiscal_ItensPERC_DEVOL: TFloatField
      FieldName = 'PERC_DEVOL'
    end
    object sdsNotaFiscal_ItensPERC_BASE_ICMS_RED: TFloatField
      FieldName = 'PERC_BASE_ICMS_RED'
    end
    object sdsNotaFiscal_ItensVLR_ICMSSUBST_RET: TFloatField
      FieldName = 'VLR_ICMSSUBST_RET'
    end
    object sdsNotaFiscal_ItensPERC_ICMS_RED: TFloatField
      FieldName = 'PERC_ICMS_RED'
    end
    object sdsNotaFiscal_ItensPERC_BASE_ICMSSUBT_RED: TFloatField
      FieldName = 'PERC_BASE_ICMSSUBT_RED'
    end
    object sdsNotaFiscal_ItensPERC_BASE_RED_EFET: TFloatField
      FieldName = 'PERC_BASE_RED_EFET'
    end
    object sdsNotaFiscal_ItensVLR_BASE_EFET: TFloatField
      FieldName = 'VLR_BASE_EFET'
    end
    object sdsNotaFiscal_ItensPERC_ICMS_EFET: TFloatField
      FieldName = 'PERC_ICMS_EFET'
    end
    object sdsNotaFiscal_ItensVLR_ICMS_EFET: TFloatField
      FieldName = 'VLR_ICMS_EFET'
    end
    object sdsNotaFiscal_ItensPERC_REDUCAO_ICMSSUBST: TFloatField
      FieldName = 'PERC_REDUCAO_ICMSSUBST'
    end
    object sdsNotaFiscal_ItensPERC_ICMSSUBST_INTERNO: TFloatField
      FieldName = 'PERC_ICMSSUBST_INTERNO'
    end
    object sdsNotaFiscal_ItensBASE_ICMS_FCP: TFloatField
      FieldName = 'BASE_ICMS_FCP'
    end
    object sdsNotaFiscal_ItensBASE_FCP_ST: TFloatField
      FieldName = 'BASE_FCP_ST'
    end
    object sdsNotaFiscal_ItensVLR_FCP_ST: TFloatField
      FieldName = 'VLR_FCP_ST'
    end
    object sdsNotaFiscal_ItensPERC_FCP_ST: TFloatField
      FieldName = 'PERC_FCP_ST'
    end
    object sdsNotaFiscal_ItensVLR_ICMS_FCP_DEST: TFloatField
      FieldName = 'VLR_ICMS_FCP_DEST'
    end
    object sdsNotaFiscal_ItensBASE_ICMS_FCP_DEST: TFloatField
      FieldName = 'BASE_ICMS_FCP_DEST'
    end
    object sdsNotaFiscal_ItensLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object sdsNotaFiscal_ItensCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object sdsNotaFiscal_ItensESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
    end
    object sdsNotaFiscal_ItensVLR_ICMS_SUBSTITUTO: TFloatField
      FieldName = 'VLR_ICMS_SUBSTITUTO'
    end
    object sdsNotaFiscal_ItensBASE_PIS: TFloatField
      FieldName = 'BASE_PIS'
    end
    object sdsNotaFiscal_ItensBASE_COFINS: TFloatField
      FieldName = 'BASE_COFINS'
    end
    object sdsNotaFiscal_ItensANP_PRODUTO: TStringField
      FieldName = 'ANP_PRODUTO'
      Size = 9
    end
    object sdsNotaFiscal_ItensANP_UF_CONS: TStringField
      FieldName = 'ANP_UF_CONS'
      Size = 2
    end
    object sdsNotaFiscal_ItensANP_PERC_PGNI: TFloatField
      FieldName = 'ANP_PERC_PGNI'
    end
    object sdsNotaFiscal_ItensANP_PERC_PGNN: TFloatField
      FieldName = 'ANP_PERC_PGNN'
    end
    object sdsNotaFiscal_ItensANP_ID: TIntegerField
      FieldName = 'ANP_ID'
    end
    object sdsNotaFiscal_ItensPERC_DIFERIMENTO: TFloatField
      FieldName = 'PERC_DIFERIMENTO'
    end
    object sdsNotaFiscal_ItensVLR_ICMSDIFERIDO: TFloatField
      FieldName = 'VLR_ICMSDIFERIDO'
    end
    object sdsNotaFiscal_ItensDIFERENCA_ICMS: TStringField
      FieldName = 'DIFERENCA_ICMS'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ItensPERC_ICMS_FCP: TFloatField
      FieldName = 'PERC_ICMS_FCP'
    end
    object sdsNotaFiscal_ItensPERC_ICMS_UF_DEST: TFloatField
      FieldName = 'PERC_ICMS_UF_DEST'
    end
    object sdsNotaFiscal_ItensPERC_ICMS_PARTILHA: TFloatField
      FieldName = 'PERC_ICMS_PARTILHA'
    end
    object sdsNotaFiscal_ItensPERC_ICMS_INTER: TFloatField
      FieldName = 'PERC_ICMS_INTER'
    end
    object sdsNotaFiscal_ItensQTD_TRIB: TFloatField
      FieldName = 'QTD_TRIB'
    end
    object sdsNotaFiscal_ItensVLR_UNITARIO_TRIB: TFloatField
      FieldName = 'VLR_UNITARIO_TRIB'
    end
    object sdsNotaFiscal_ItensUNIDADE_TRIB: TStringField
      FieldName = 'UNIDADE_TRIB'
      Size = 6
    end
    object sdsNotaFiscal_ItensCOD_CBENEF: TStringField
      FieldName = 'COD_CBENEF'
      Size = 8
    end
    object sdsNotaFiscal_ItensANP_PERC_PGLP: TFloatField
      FieldName = 'ANP_PERC_PGLP'
    end
    object sdsNotaFiscal_ItensANP_VLR_VPART: TFloatField
      FieldName = 'ANP_VLR_VPART'
    end
    object sdsNotaFiscal_ItensPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object sdsNotaFiscal_ItensCENTRO_CUSTO_ID: TIntegerField
      FieldName = 'CENTRO_CUSTO_ID'
    end
    object sdsNotaFiscal_ItensDTVALIDADE: TDateField
      FieldName = 'DTVALIDADE'
    end
    object sdsNotaFiscal_ItensID_TIPO_MATERIAL: TIntegerField
      FieldName = 'ID_TIPO_MATERIAL'
    end
    object sdsNotaFiscal_ItensVLR_OUTROS_ITENS: TFloatField
      FieldName = 'VLR_OUTROS_ITENS'
    end
  end
  object cdsNotaFiscal_Itens: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNotaFiscalsdsNotaFiscal_Itens
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    BeforePost = cdsNotaFiscal_ItensBeforePost
    OnNewRecord = cdsNotaFiscal_ItensNewRecord
    Left = 138
    Top = 383
    object cdsNotaFiscal_ItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaFiscal_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsNotaFiscal_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsNotaFiscal_ItensID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsNotaFiscal_ItensTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsNotaFiscal_ItensID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object cdsNotaFiscal_ItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsNotaFiscal_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsNotaFiscal_ItensID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsNotaFiscal_ItensID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object cdsNotaFiscal_ItensID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsNotaFiscal_ItensID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object cdsNotaFiscal_ItensID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object cdsNotaFiscal_ItensPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object cdsNotaFiscal_ItensPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsNotaFiscal_ItensVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsNotaFiscal_ItensVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsNotaFiscal_ItensPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object cdsNotaFiscal_ItensVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object cdsNotaFiscal_ItensBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object cdsNotaFiscal_ItensVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
    end
    object cdsNotaFiscal_ItensVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
    object cdsNotaFiscal_ItensPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object cdsNotaFiscal_ItensPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object cdsNotaFiscal_ItensVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
    end
    object cdsNotaFiscal_ItensVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
    end
    object cdsNotaFiscal_ItensTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensORIGEM_PROD: TStringField
      FieldName = 'ORIGEM_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensBASE_ICMSSIMPLES: TFloatField
      FieldName = 'BASE_ICMSSIMPLES'
    end
    object cdsNotaFiscal_ItensVLR_ICMSSIMPLES: TFloatField
      FieldName = 'VLR_ICMSSIMPLES'
    end
    object cdsNotaFiscal_ItensCALCULARICMSSOBREIPI: TStringField
      FieldName = 'CALCULARICMSSOBREIPI'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsNotaFiscal_ItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsNotaFiscal_ItensID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object cdsNotaFiscal_ItensGERAR_DUPLICATA: TStringField
      FieldName = 'GERAR_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensGERAR_ESTOQUE: TStringField
      FieldName = 'GERAR_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensNUMERO_OC: TStringField
      FieldName = 'NUMERO_OC'
    end
    object cdsNotaFiscal_ItensNUMERO_OS: TStringField
      FieldName = 'NUMERO_OS'
      Size = 30
    end
    object cdsNotaFiscal_ItensITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object cdsNotaFiscal_ItensPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsNotaFiscal_ItensQTDRESTANTE: TFloatField
      FieldName = 'QTDRESTANTE'
    end
    object cdsNotaFiscal_ItensQTDDEVOLVIDA: TFloatField
      FieldName = 'QTDDEVOLVIDA'
    end
    object cdsNotaFiscal_ItensSOMAR_TRANSF_ICMS: TStringField
      FieldName = 'SOMAR_TRANSF_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensOBS_COMPLEMENTAR: TStringField
      FieldName = 'OBS_COMPLEMENTAR'
      Size = 250
    end
    object cdsNotaFiscal_ItensSOMAR_VLRTOTALPRODUTO: TStringField
      FieldName = 'SOMAR_VLRTOTALPRODUTO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object cdsNotaFiscal_ItensVLR_OUTRASDESPESAS: TFloatField
      FieldName = 'VLR_OUTRASDESPESAS'
    end
    object cdsNotaFiscal_ItensVLR_SEGURO: TFloatField
      FieldName = 'VLR_SEGURO'
    end
    object cdsNotaFiscal_ItensVLR_ICMSFRETE: TFloatField
      FieldName = 'VLR_ICMSFRETE'
    end
    object cdsNotaFiscal_ItensVLR_ICMSOUTRASDESPESAS: TFloatField
      FieldName = 'VLR_ICMSOUTRASDESPESAS'
    end
    object cdsNotaFiscal_ItensBASE_ICMSSUBST: TFloatField
      FieldName = 'BASE_ICMSSUBST'
    end
    object cdsNotaFiscal_ItensVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
    end
    object cdsNotaFiscal_ItensVLR_IMPORTACAO: TFloatField
      FieldName = 'VLR_IMPORTACAO'
    end
    object cdsNotaFiscal_ItensVLR_ADUANEIRA: TFloatField
      FieldName = 'VLR_ADUANEIRA'
    end
    object cdsNotaFiscal_ItensVLR_DESCONTORATEIO: TFloatField
      FieldName = 'VLR_DESCONTORATEIO'
    end
    object cdsNotaFiscal_ItensQTD_ADEVOLVER: TFloatField
      FieldName = 'QTD_ADEVOLVER'
    end
    object cdsNotaFiscal_ItensQTD_PACOTE: TFloatField
      FieldName = 'QTD_PACOTE'
    end
    object cdsNotaFiscal_ItensID_OPERACAO_NOTA: TIntegerField
      FieldName = 'ID_OPERACAO_NOTA'
    end
    object cdsNotaFiscal_ItensITEM_DEVOL: TStringField
      FieldName = 'ITEM_DEVOL'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsNotaFiscal_ItensFINALIDADE: TStringField
      FieldName = 'FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensID_VARIACAO: TIntegerField
      FieldName = 'ID_VARIACAO'
    end
    object cdsNotaFiscal_ItensPERC_TRIBICMS: TFloatField
      FieldName = 'PERC_TRIBICMS'
    end
    object cdsNotaFiscal_ItensCOD_PRODUTO_FORN: TStringField
      FieldName = 'COD_PRODUTO_FORN'
    end
    object cdsNotaFiscal_ItensCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object cdsNotaFiscal_ItensIMP_OC_NOTA: TStringField
      FieldName = 'IMP_OC_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsNotaFiscal_ItensID_NTE: TIntegerField
      FieldName = 'ID_NTE'
    end
    object cdsNotaFiscal_ItensITEM_NTE: TIntegerField
      FieldName = 'ITEM_NTE'
    end
    object cdsNotaFiscal_ItensQTD_NOTAATUAL: TFloatField
      FieldName = 'QTD_NOTAATUAL'
    end
    object cdsNotaFiscal_ItensVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
    object cdsNotaFiscal_ItensTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      Size = 1
    end
    object cdsNotaFiscal_ItensTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsNotaFiscal_ItensID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
    end
    object cdsNotaFiscal_ItensCONTA_ORCAMENTO_ID: TIntegerField
      FieldName = 'CONTA_ORCAMENTO_ID'
    end
    object cdsNotaFiscal_ItensNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object cdsNotaFiscal_ItensPERC_ISSQN: TFloatField
      FieldName = 'PERC_ISSQN'
    end
    object cdsNotaFiscal_ItensVLR_ISSQN: TFloatField
      FieldName = 'VLR_ISSQN'
    end
    object cdsNotaFiscal_ItensVLR_ICMS_FCP: TFloatField
      FieldName = 'VLR_ICMS_FCP'
    end
    object cdsNotaFiscal_ItensVLR_ICMS_UF_DEST: TFloatField
      FieldName = 'VLR_ICMS_UF_DEST'
    end
    object cdsNotaFiscal_ItensVLR_ICMS_UF_REMET: TFloatField
      FieldName = 'VLR_ICMS_UF_REMET'
    end
    object cdsNotaFiscal_ItensPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
    end
    object cdsNotaFiscal_ItensCOD_BARRA2: TStringField
      FieldName = 'COD_BARRA2'
      Size = 14
    end
    object cdsNotaFiscal_ItensPERC_MVA: TFloatField
      FieldName = 'PERC_MVA'
    end
    object cdsNotaFiscal_ItensPERC_ICMS_DESON: TFloatField
      FieldName = 'PERC_ICMS_DESON'
    end
    object cdsNotaFiscal_ItensBASE_ICMSSUBST_RET: TFloatField
      FieldName = 'BASE_ICMSSUBST_RET'
    end
    object cdsNotaFiscal_ItensBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
    end
    object cdsNotaFiscal_ItensPERC_BASE_ICMS_RED: TFloatField
      FieldName = 'PERC_BASE_ICMS_RED'
    end
    object cdsNotaFiscal_ItensVLR_ICMSSUBST_RET: TFloatField
      FieldName = 'VLR_ICMSSUBST_RET'
    end
    object cdsNotaFiscal_ItensPERC_ICMS_RED: TFloatField
      FieldName = 'PERC_ICMS_RED'
    end
    object cdsNotaFiscal_ItensPERC_BASE_ICMSSUBT_RED: TFloatField
      FieldName = 'PERC_BASE_ICMSSUBT_RED'
    end
    object cdsNotaFiscal_ItensPERC_ICMSSUBST_INTERNO: TFloatField
      FieldName = 'PERC_ICMSSUBST_INTERNO'
    end
    object cdsNotaFiscal_ItensPERC_REDUCAO_ICMSSUBST: TFloatField
      FieldName = 'PERC_REDUCAO_ICMSSUBST'
    end
    object cdsNotaFiscal_ItensVLR_IPI_DEVOL: TFloatField
      FieldName = 'VLR_IPI_DEVOL'
    end
    object cdsNotaFiscal_ItensPERC_DEVOL: TFloatField
      FieldName = 'PERC_DEVOL'
    end
    object cdsNotaFiscal_ItensPERC_BASE_RED_EFET: TFloatField
      FieldName = 'PERC_BASE_RED_EFET'
    end
    object cdsNotaFiscal_ItensVLR_BASE_EFET: TFloatField
      FieldName = 'VLR_BASE_EFET'
    end
    object cdsNotaFiscal_ItensPERC_ICMS_EFET: TFloatField
      FieldName = 'PERC_ICMS_EFET'
    end
    object cdsNotaFiscal_ItensVLR_ICMS_EFET: TFloatField
      FieldName = 'VLR_ICMS_EFET'
    end
    object cdsNotaFiscal_ItenssdsNotaFiscal_NDevolvida: TDataSetField
      FieldName = 'sdsNotaFiscal_NDevolvida'
    end
    object cdsNotaFiscal_ItensBASE_ICMS_FCP: TFloatField
      FieldName = 'BASE_ICMS_FCP'
    end
    object cdsNotaFiscal_ItensBASE_FCP_ST: TFloatField
      FieldName = 'BASE_FCP_ST'
    end
    object cdsNotaFiscal_ItensVLR_FCP_ST: TFloatField
      FieldName = 'VLR_FCP_ST'
    end
    object cdsNotaFiscal_ItensPERC_FCP_ST: TFloatField
      FieldName = 'PERC_FCP_ST'
    end
    object cdsNotaFiscal_ItensVLR_ICMS_FCP_DEST: TFloatField
      FieldName = 'VLR_ICMS_FCP_DEST'
    end
    object cdsNotaFiscal_ItensBASE_ICMS_FCP_DEST: TFloatField
      FieldName = 'BASE_ICMS_FCP_DEST'
    end
    object cdsNotaFiscal_ItensLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object cdsNotaFiscal_ItensCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object cdsNotaFiscal_ItensESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
    end
    object cdsNotaFiscal_ItensVLR_ICMS_SUBSTITUTO: TFloatField
      FieldName = 'VLR_ICMS_SUBSTITUTO'
    end
    object cdsNotaFiscal_ItensBASE_PIS: TFloatField
      FieldName = 'BASE_PIS'
    end
    object cdsNotaFiscal_ItensBASE_COFINS: TFloatField
      FieldName = 'BASE_COFINS'
    end
    object cdsNotaFiscal_ItensANP_PRODUTO: TStringField
      FieldName = 'ANP_PRODUTO'
      Size = 9
    end
    object cdsNotaFiscal_ItensANP_UF_CONS: TStringField
      FieldName = 'ANP_UF_CONS'
      Size = 2
    end
    object cdsNotaFiscal_ItensANP_PERC_PGNI: TFloatField
      FieldName = 'ANP_PERC_PGNI'
    end
    object cdsNotaFiscal_ItensANP_PERC_PGNN: TFloatField
      FieldName = 'ANP_PERC_PGNN'
    end
    object cdsNotaFiscal_ItensANP_ID: TIntegerField
      FieldName = 'ANP_ID'
    end
    object cdsNotaFiscal_ItensPERC_DIFERIMENTO: TFloatField
      FieldName = 'PERC_DIFERIMENTO'
    end
    object cdsNotaFiscal_ItensVLR_ICMSDIFERIDO: TFloatField
      FieldName = 'VLR_ICMSDIFERIDO'
    end
    object cdsNotaFiscal_ItensDIFERENCA_ICMS: TStringField
      FieldName = 'DIFERENCA_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensPERC_ICMS_FCP: TFloatField
      FieldName = 'PERC_ICMS_FCP'
    end
    object cdsNotaFiscal_ItensPERC_ICMS_UF_DEST: TFloatField
      FieldName = 'PERC_ICMS_UF_DEST'
    end
    object cdsNotaFiscal_ItensPERC_ICMS_PARTILHA: TFloatField
      FieldName = 'PERC_ICMS_PARTILHA'
    end
    object cdsNotaFiscal_ItensPERC_ICMS_INTER: TFloatField
      FieldName = 'PERC_ICMS_INTER'
    end
    object cdsNotaFiscal_ItensQTD_TRIB: TFloatField
      FieldName = 'QTD_TRIB'
    end
    object cdsNotaFiscal_ItensVLR_UNITARIO_TRIB: TFloatField
      FieldName = 'VLR_UNITARIO_TRIB'
    end
    object cdsNotaFiscal_ItensUNIDADE_TRIB: TStringField
      FieldName = 'UNIDADE_TRIB'
      Size = 6
    end
    object cdsNotaFiscal_ItensCOD_CBENEF: TStringField
      FieldName = 'COD_CBENEF'
      Size = 8
    end
    object cdsNotaFiscal_ItensANP_PERC_PGLP: TFloatField
      FieldName = 'ANP_PERC_PGLP'
    end
    object cdsNotaFiscal_ItensANP_VLR_VPART: TFloatField
      FieldName = 'ANP_VLR_VPART'
    end
    object cdsNotaFiscal_ItensPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsNotaFiscal_ItensCENTRO_CUSTO_ID: TIntegerField
      FieldName = 'CENTRO_CUSTO_ID'
    end
    object cdsNotaFiscal_ItensDTVALIDADE: TDateField
      FieldName = 'DTVALIDADE'
    end
    object cdsNotaFiscal_ItensID_TIPO_MATERIAL: TIntegerField
      FieldName = 'ID_TIPO_MATERIAL'
    end
    object cdsNotaFiscal_ItensVLR_OUTROS_ITENS: TFloatField
      FieldName = 'VLR_OUTROS_ITENS'
    end
  end
  object dsNotaFiscal_Itens: TDataSource
    DataSet = cdsNotaFiscal_Itens
    Left = 176
    Top = 383
  end
  object sdsTab_CSTICMS: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_CSTICMS'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 360
    Top = 95
  end
  object dspTab_CSTICMS: TDataSetProvider
    DataSet = sdsTab_CSTICMS
    Left = 392
    Top = 95
  end
  object cdsTab_CSTICMS: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTab_CSTICMS'
    Left = 432
    Top = 95
    object cdsTab_CSTICMSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTab_CSTICMSPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
    end
    object cdsTab_CSTICMSHISTORICO: TMemoField
      FieldName = 'HISTORICO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsTab_CSTICMSTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsTab_CSTICMSNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object cdsTab_CSTICMSCOD_CST: TStringField
      FieldName = 'COD_CST'
      Size = 3
    end
    object cdsTab_CSTICMSTIPO_ICMS: TStringField
      FieldName = 'TIPO_ICMS'
      FixedChar = True
      Size = 1
    end
  end
  object dsTab_CSTICMS: TDataSource
    DataSet = cdsTab_CSTICMS
    Left = 472
    Top = 95
  end
  object qFilial: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CNPJ_CPF'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM FILIAL'
      'WHERE '#9'CNPJ_CPF = :CNPJ_CPF')
    SQLConnection = DmDatabase.scoDados
    Left = 1000
    Top = 24
    object qFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qFilialNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object qFilialENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object qFilialCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object qFilialNUM_END: TStringField
      FieldName = 'NUM_END'
      Size = 15
    end
    object qFilialBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qFilialCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object qFilialID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object qFilialCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qFilialUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qFilialDDD1: TIntegerField
      FieldName = 'DDD1'
    end
    object qFilialFONE1: TStringField
      FieldName = 'FONE1'
      Size = 15
    end
    object qFilialDDD2: TIntegerField
      FieldName = 'DDD2'
    end
    object qFilialFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object qFilialDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object qFilialFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object qFilialPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object qFilialCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object qFilialINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object qFilialSIMPLES: TStringField
      FieldName = 'SIMPLES'
      FixedChar = True
      Size = 1
    end
    object qFilialENDLOGO: TStringField
      FieldName = 'ENDLOGO'
      Size = 250
    end
    object qFilialCALCULAR_IPI: TStringField
      FieldName = 'CALCULAR_IPI'
      FixedChar = True
      Size = 1
    end
    object qFilialINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object qFilialINSCMUNICIPAL: TStringField
      FieldName = 'INSCMUNICIPAL'
      Size = 18
    end
    object qFilialCNAE: TStringField
      FieldName = 'CNAE'
      Size = 7
    end
    object qFilialHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 250
    end
    object qFilialUSARICMSSIMPLES: TStringField
      FieldName = 'USARICMSSIMPLES'
      FixedChar = True
      Size = 10
    end
    object qFilialID_REGIME_TRIB: TIntegerField
      FieldName = 'ID_REGIME_TRIB'
    end
    object qFilialID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object qFilialID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object qFilialTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      Size = 2
    end
    object qFilialTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      Size = 2
    end
    object qFilialPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object qFilialPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object qFilialID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object qFilialID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object qFilialEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 200
    end
    object qFilialDTESTOQUE: TDateField
      FieldName = 'DTESTOQUE'
    end
    object qFilialPRINCIPAL: TStringField
      FieldName = 'PRINCIPAL'
      FixedChar = True
      Size = 1
    end
    object qFilialLIBERADO_ATE: TStringField
      FieldName = 'LIBERADO_ATE'
      Size = 18
    end
    object qFilialULTIMO_ACESSO: TStringField
      FieldName = 'ULTIMO_ACESSO'
      Size = 18
    end
  end
  object sdsNCM: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_NCM'#13#10'WHERE NCM = :NCM'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NCM'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 360
    Top = 141
    object sdsNCMID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNCMNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object sdsNCMNOME: TStringField
      FieldName = 'NOME'
      Size = 250
    end
    object sdsNCMPERC_RED_STRIB: TFloatField
      FieldName = 'PERC_RED_STRIB'
    end
    object sdsNCMGERAR_ST: TStringField
      FieldName = 'GERAR_ST'
      FixedChar = True
      Size = 1
    end
    object sdsNCMCOD_CEST: TStringField
      FieldName = 'COD_CEST'
      Size = 7
    end
    object sdsNCMID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
  end
  object dspNCM: TDataSetProvider
    DataSet = sdsNCM
    OnUpdateError = dspNCMUpdateError
    Left = 392
    Top = 141
  end
  object cdsNCM: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspNCM'
    OnNewRecord = cdsNCMNewRecord
    Left = 432
    Top = 142
    object cdsNCMID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNCMNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object cdsNCMNOME: TStringField
      FieldName = 'NOME'
      Size = 250
    end
    object cdsNCMPERC_RED_STRIB: TFloatField
      FieldName = 'PERC_RED_STRIB'
    end
    object cdsNCMGERAR_ST: TStringField
      FieldName = 'GERAR_ST'
      FixedChar = True
      Size = 1
    end
    object cdsNCMCOD_CEST: TStringField
      FieldName = 'COD_CEST'
      Size = 7
    end
    object cdsNCMID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
  end
  object dsNCM: TDataSource
    DataSet = cdsNCM
    Left = 472
    Top = 141
  end
  object sdsUnidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM UNIDADE'#13#10'WHERE UNIDADE = :UNIDADE'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'UNIDADE'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 360
    Top = 418
    object sdsUnidadeUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 6
    end
    object sdsUnidadeCONVERSOR: TFloatField
      FieldName = 'CONVERSOR'
    end
    object sdsUnidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dspUnidade: TDataSetProvider
    DataSet = sdsUnidade
    Left = 392
    Top = 418
  end
  object cdsUnidade: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'UNIDADE'
    Params = <>
    ProviderName = 'dspUnidade'
    Left = 433
    Top = 415
    object cdsUnidadeUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 6
    end
    object cdsUnidadeCONVERSOR: TFloatField
      FieldName = 'CONVERSOR'
    end
    object cdsUnidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsUnidade: TDataSource
    DataSet = cdsUnidade
    Left = 472
    Top = 418
  end
  object sdsNotaFiscal_Parc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM NOTAFISCAL_PARC'#13#10'WHERE ID = :ID'#13#10
    DataSource = dsNotaFiscal_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 96
    Top = 479
    object sdsNotaFiscal_ParcID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNotaFiscal_ParcITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsNotaFiscal_ParcDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object sdsNotaFiscal_ParcVLR_VENCIMENTO: TFloatField
      FieldName = 'VLR_VENCIMENTO'
    end
    object sdsNotaFiscal_ParcID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object sdsNotaFiscal_ParcID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
  end
  object cdsNotaFiscal_Parc: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNotaFiscalsdsNotaFiscal_Parc
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 136
    Top = 479
    object cdsNotaFiscal_ParcID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaFiscal_ParcITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsNotaFiscal_ParcDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object cdsNotaFiscal_ParcVLR_VENCIMENTO: TFloatField
      FieldName = 'VLR_VENCIMENTO'
    end
    object cdsNotaFiscal_ParcID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object cdsNotaFiscal_ParcID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
  end
  object sdsTab_CSTIPI: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_CSTIPI'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 360
    Top = 322
  end
  object dspTab_CSTIPI: TDataSetProvider
    DataSet = sdsTab_CSTIPI
    Left = 392
    Top = 322
  end
  object cdsTab_CSTIPI: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTab_CSTIPI'
    Left = 432
    Top = 322
    object cdsTab_CSTIPIID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTab_CSTIPICOD_IPI: TStringField
      FieldName = 'COD_IPI'
      Size = 2
    end
    object cdsTab_CSTIPINOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsTab_CSTIPIGERAR_IPI: TStringField
      FieldName = 'GERAR_IPI'
      FixedChar = True
      Size = 1
    end
  end
  object dsTab_CSTIPI: TDataSource
    DataSet = cdsTab_CSTIPI
    Left = 473
    Top = 322
  end
  object sdsNotaFiscal_Ref: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM NOTAFISCAL_REF'#13#10'WHERE ID = :ID'#13#10
    DataSource = dsNotaFiscal_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 96
    Top = 525
    object sdsNotaFiscal_RefID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNotaFiscal_RefITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsNotaFiscal_RefTIPO: TStringField
      FieldName = 'TIPO'
      Size = 3
    end
    object sdsNotaFiscal_RefID_NOTAREF: TIntegerField
      FieldName = 'ID_NOTAREF'
    end
    object sdsNotaFiscal_RefNUMNOTA_REF: TIntegerField
      FieldName = 'NUMNOTA_REF'
    end
    object sdsNotaFiscal_RefSERIE_REF: TStringField
      FieldName = 'SERIE_REF'
      Size = 3
    end
    object sdsNotaFiscal_RefUF_REF: TStringField
      FieldName = 'UF_REF'
      Size = 2
    end
    object sdsNotaFiscal_RefANO_REF: TIntegerField
      FieldName = 'ANO_REF'
    end
    object sdsNotaFiscal_RefMES_REF: TIntegerField
      FieldName = 'MES_REF'
    end
    object sdsNotaFiscal_RefCNPJ_REF: TStringField
      FieldName = 'CNPJ_REF'
      Size = 18
    end
    object sdsNotaFiscal_RefMODELO_REF: TStringField
      FieldName = 'MODELO_REF'
      Size = 2
    end
    object sdsNotaFiscal_RefNFECHAVEACESSO_REF: TStringField
      FieldName = 'NFECHAVEACESSO_REF'
      Size = 44
    end
    object sdsNotaFiscal_RefID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object sdsNotaFiscal_RefDESCRICAO_TIPO: TStringField
      FieldName = 'DESCRICAO_TIPO'
      Size = 15
    end
    object sdsNotaFiscal_RefCUPOM_NUMECF: TIntegerField
      FieldName = 'CUPOM_NUMECF'
    end
    object sdsNotaFiscal_RefCUPOM_NUMCOO: TIntegerField
      FieldName = 'CUPOM_NUMCOO'
    end
    object sdsNotaFiscal_RefCUPOM_MODELO: TStringField
      FieldName = 'CUPOM_MODELO'
      Size = 2
    end
    object sdsNotaFiscal_RefINSCESTADUAL_REF: TStringField
      FieldName = 'INSCESTADUAL_REF'
      Size = 14
    end
  end
  object cdsNotaFiscal_Ref: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNotaFiscalsdsNotaFiscal_Ref
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 136
    Top = 525
    object cdsNotaFiscal_RefID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaFiscal_RefITEM: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      Required = True
    end
    object cdsNotaFiscal_RefTIPO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Size = 3
    end
    object cdsNotaFiscal_RefID_NOTAREF: TIntegerField
      FieldName = 'ID_NOTAREF'
    end
    object cdsNotaFiscal_RefNUMNOTA_REF: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'N'#186' Nota Referenciada'
      FieldName = 'NUMNOTA_REF'
    end
    object cdsNotaFiscal_RefSERIE_REF: TStringField
      Alignment = taCenter
      DisplayLabel = 'S'#233'rie Referenciada'
      FieldName = 'SERIE_REF'
      Size = 3
    end
    object cdsNotaFiscal_RefUF_REF: TStringField
      Alignment = taCenter
      DisplayLabel = 'UF'
      FieldName = 'UF_REF'
      Size = 2
    end
    object cdsNotaFiscal_RefANO_REF: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Ano'
      FieldName = 'ANO_REF'
    end
    object cdsNotaFiscal_RefMES_REF: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'M'#234's'
      FieldName = 'MES_REF'
    end
    object cdsNotaFiscal_RefCNPJ_REF: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'CNPJ_REF'
      Size = 18
    end
    object cdsNotaFiscal_RefINSCESTADUAL_REF: TStringField
      DisplayLabel = 'Inscri'#231#227'o Estadual'
      FieldName = 'INSCESTADUAL_REF'
      Size = 14
    end
    object cdsNotaFiscal_RefMODELO_REF: TStringField
      DisplayLabel = 'Modelo'
      FieldName = 'MODELO_REF'
      Size = 2
    end
    object cdsNotaFiscal_RefNFECHAVEACESSO_REF: TStringField
      DisplayLabel = 'Chave Acesso NFe'
      FieldName = 'NFECHAVEACESSO_REF'
      Size = 44
    end
    object cdsNotaFiscal_RefID_FORNECEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Fornecedor'
      FieldName = 'ID_FORNECEDOR'
    end
    object cdsNotaFiscal_RefDESCRICAO_TIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'DESCRICAO_TIPO'
      Size = 15
    end
    object cdsNotaFiscal_RefCUPOM_NUMECF: TIntegerField
      DisplayLabel = 'N'#186' ECF'
      FieldName = 'CUPOM_NUMECF'
    end
    object cdsNotaFiscal_RefCUPOM_NUMCOO: TIntegerField
      DisplayLabel = 'N'#186' COO'
      FieldName = 'CUPOM_NUMCOO'
    end
    object cdsNotaFiscal_RefCUPOM_MODELO: TStringField
      DisplayLabel = 'Modelo Cupom'
      FieldName = 'CUPOM_MODELO'
      Size = 2
    end
  end
  object dsNotaFiscal_Ref: TDataSource
    DataSet = cdsNotaFiscal_Ref
    Left = 176
    Top = 525
  end
  object mPedidoAux: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'ID_Pedido'
    Params = <>
    Left = 1124
    Top = 337
    Data = {
      2C0000009619E0BD0100000018000000010000000000030000002C000949445F
      50656469646F04000100000000000000}
    object mPedidoAuxID_Pedido: TIntegerField
      FieldName = 'ID_Pedido'
    end
  end
  object mNota: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Versao'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'InfNFe_Id'
        DataType = ftString
        Size = 47
      end
      item
        Name = 'Serie'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'NumNota'
        DataType = ftInteger
      end
      item
        Name = 'ID_Emitente'
        DataType = ftInteger
      end
      item
        Name = 'CNPJ_CPF_Emitente'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'Pessoa'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Nome_Emitente'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CFOP'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'ID_CFOP'
        DataType = ftInteger
      end
      item
        Name = 'CFOP_Interno'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'VlrTotal'
        DataType = ftFloat
      end
      item
        Name = 'VlrProduto'
        DataType = ftFloat
      end
      item
        Name = 'VlrICMS'
        DataType = ftFloat
      end
      item
        Name = 'BaseICMS'
        DataType = ftFloat
      end
      item
        Name = 'VlrIPI'
        DataType = ftFloat
      end
      item
        Name = 'VlrCofins'
        DataType = ftFloat
      end
      item
        Name = 'VlrPis'
        DataType = ftFloat
      end
      item
        Name = 'VlrICMSSimples'
        DataType = ftFloat
      end
      item
        Name = 'BaseICMSSimples'
        DataType = ftFloat
      end
      item
        Name = 'DtEmissao'
        DataType = ftDate
      end
      item
        Name = 'ChaveAcesso'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Protocolo'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'TipoAmbiente'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'VerProc'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'DtSaida'
        DataType = ftDate
      end
      item
        Name = 'HrSaida'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Processo'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'edtFormaEmissao'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Modelo'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'TipoPagamento'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TipoPagamento_Des'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Finalidade'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CNPJ_CPF_Destinatario'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'Arquivo_XML'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'VlrOutrasDespesas'
        DataType = ftFloat
      end
      item
        Name = 'VlrSeguro'
        DataType = ftFloat
      end
      item
        Name = 'VlrFrete'
        DataType = ftFloat
      end
      item
        Name = 'VlrDesconto'
        DataType = ftFloat
      end
      item
        Name = 'Filial'
        DataType = ftInteger
      end
      item
        Name = 'CodMunicipio'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'ID_Cidade'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Cidade'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ID_Pais'
        DataType = ftInteger
      end
      item
        Name = 'CodPais'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'Tipo_ES'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'IE_Emitente'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'IE_Destinatario'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ID_Transportadora'
        DataType = ftInteger
      end
      item
        Name = 'CNPJ_CPF_Transportadora'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'CRT'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    OnNewRecord = mNotaNewRecord
    Left = 825
    Top = 231
    Data = {
      500500009619E0BD010000001800000034000000000003000000500506566572
      73616F0100490000000100055749445448020002001E0009496E664E46655F49
      640100490000000100055749445448020002002F000553657269650100490000
      000100055749445448020002000300074E756D4E6F746104000100000000000B
      49445F456D6974656E7465040001000000000011434E504A5F4350465F456D69
      74656E7465010049000000010005574944544802000200120006506573736F61
      01004900000001000557494454480200020001000D4E6F6D655F456D6974656E
      74650100490000000100055749445448020002003C000443464F500100490000
      0001000557494454480200020004000749445F43464F5004000100000000000C
      43464F505F496E7465726E6F0100490000000100055749445448020002000400
      08566C72546F74616C08000400000000000A566C7250726F6475746F08000400
      0000000007566C7249434D530800040000000000084261736549434D53080004
      000000000006566C72495049080004000000000009566C72436F66696E730800
      04000000000006566C7250697308000400000000000E566C7249434D5353696D
      706C657308000400000000000F4261736549434D5353696D706C657308000400
      00000000094474456D697373616F04000600000000000B436861766541636573
      736F01004900000001000557494454480200020032000950726F746F636F6C6F
      01004900000001000557494454480200020032000C5469706F416D6269656E74
      6501004900000001000557494454480200020001000756657250726F63010049
      0000000100055749445448020002001E00074474536169646104000600000000
      0007487253616964610100490000000100055749445448020002001400085072
      6F636573736F0100490000000100055749445448020002003C000F656474466F
      726D61456D697373616F0100490000000100055749445448020002003C00064D
      6F64656C6F01004900000001000557494454480200020005000D5469706F5061
      67616D656E746F0100490000000100055749445448020002000100115469706F
      506167616D656E746F5F4465730100490000000100055749445448020002001E
      000A46696E616C69646164650100490000000100055749445448020002003200
      15434E504A5F4350465F44657374696E61746172696F01004900000001000557
      494454480200020012000B4172717569766F5F584D4C01004900000001000557
      4944544802000200FA0011566C724F7574726173446573706573617308000400
      0000000009566C7253656775726F080004000000000008566C72467265746508
      000400000000000B566C72446573636F6E746F08000400000000000646696C69
      616C04000100000000000C436F644D756E69636970696F010049000000010005
      57494454480200020007000949445F43696461646504000100000000000B4E6F
      6D655F4369646164650100490000000100055749445448020002002800025546
      01004900000001000557494454480200020002000749445F5061697304000100
      0000000007436F64506169730100490000000100055749445448020002000700
      075469706F5F45530100490000000100055749445448020002000F000B49455F
      456D6974656E746501004900000001000557494454480200020014000F49455F
      44657374696E61746172696F0100490000000100055749445448020002001400
      1149445F5472616E73706F727461646F7261040001000000000017434E504A5F
      4350465F5472616E73706F727461646F72610100490000000100055749445448
      0200020012000343525404000100000000000000}
    object mNotaVersao: TStringField
      FieldName = 'Versao'
      Size = 30
    end
    object mNotaInfNFe_Id: TStringField
      FieldName = 'InfNFe_Id'
      Size = 47
    end
    object mNotaSerie: TStringField
      FieldName = 'Serie'
      Size = 3
    end
    object mNotaNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object mNotaID_Emitente: TIntegerField
      FieldName = 'ID_Emitente'
    end
    object mNotaCNPJ_CPF_Emitente: TStringField
      FieldName = 'CNPJ_CPF_Emitente'
      Size = 18
    end
    object mNotaPessoa: TStringField
      FieldName = 'Pessoa'
      Size = 1
    end
    object mNotaNome_Emitente: TStringField
      FieldName = 'Nome_Emitente'
      Size = 60
    end
    object mNotaCFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object mNotaID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object mNotaCFOP_Interno: TStringField
      FieldName = 'CFOP_Interno'
      Size = 4
    end
    object mNotaVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object mNotaVlrProduto: TFloatField
      FieldName = 'VlrProduto'
    end
    object mNotaVlrICMS: TFloatField
      FieldName = 'VlrICMS'
    end
    object mNotaBaseICMS: TFloatField
      FieldName = 'BaseICMS'
    end
    object mNotaVlrIPI: TFloatField
      FieldName = 'VlrIPI'
    end
    object mNotaVlrCofins: TFloatField
      FieldName = 'VlrCofins'
    end
    object mNotaVlrPis: TFloatField
      FieldName = 'VlrPis'
    end
    object mNotaVlrICMSSimples: TFloatField
      FieldName = 'VlrICMSSimples'
    end
    object mNotaBaseICMSSimples: TFloatField
      FieldName = 'BaseICMSSimples'
    end
    object mNotaDtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
    object mNotaChaveAcesso: TStringField
      FieldName = 'ChaveAcesso'
      Size = 50
    end
    object mNotaProtocolo: TStringField
      FieldName = 'Protocolo'
      Size = 50
    end
    object mNotaTipoAmbiente: TStringField
      FieldName = 'TipoAmbiente'
      Size = 1
    end
    object mNotaVerProc: TStringField
      FieldName = 'VerProc'
      Size = 30
    end
    object mNotaDtSaida: TDateField
      FieldName = 'DtSaida'
    end
    object mNotaHrSaida: TStringField
      FieldName = 'HrSaida'
    end
    object mNotaProcesso: TStringField
      FieldName = 'Processo'
      Size = 60
    end
    object mNotaedtFormaEmissao: TStringField
      FieldName = 'edtFormaEmissao'
      Size = 60
    end
    object mNotaModelo: TStringField
      FieldName = 'Modelo'
      Size = 5
    end
    object mNotaTipoPagamento: TStringField
      FieldName = 'TipoPagamento'
      Size = 1
    end
    object mNotaTipoPagamento_Des: TStringField
      FieldName = 'TipoPagamento_Des'
      Size = 30
    end
    object mNotaFinalidade: TStringField
      FieldName = 'Finalidade'
      Size = 50
    end
    object mNotaCNPJ_CPF_Destinatario: TStringField
      FieldName = 'CNPJ_CPF_Destinatario'
      Size = 18
    end
    object mNotaArquivo_XML: TStringField
      FieldName = 'Arquivo_XML'
      Size = 250
    end
    object mNotaVlrOutrasDespesas: TFloatField
      FieldName = 'VlrOutrasDespesas'
    end
    object mNotaVlrSeguro: TFloatField
      FieldName = 'VlrSeguro'
    end
    object mNotaVlrFrete: TFloatField
      FieldName = 'VlrFrete'
    end
    object mNotaVlrDesconto: TFloatField
      FieldName = 'VlrDesconto'
    end
    object mNotaFilial: TIntegerField
      FieldName = 'Filial'
    end
    object mNotaCodMunicipio: TStringField
      FieldName = 'CodMunicipio'
      Size = 7
    end
    object mNotaID_Cidade: TIntegerField
      FieldName = 'ID_Cidade'
    end
    object mNotaNome_Cidade: TStringField
      FieldName = 'Nome_Cidade'
      Size = 40
    end
    object mNotaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object mNotaID_Pais: TIntegerField
      FieldName = 'ID_Pais'
    end
    object mNotaCodPais: TStringField
      FieldName = 'CodPais'
      Size = 7
    end
    object mNotaTipo_ES: TStringField
      FieldName = 'Tipo_ES'
      Size = 15
    end
    object mNotaIE_Emitente: TStringField
      FieldName = 'IE_Emitente'
    end
    object mNotaIE_Destinatario: TStringField
      FieldName = 'IE_Destinatario'
    end
    object mNotaID_Transportadora: TIntegerField
      FieldName = 'ID_Transportadora'
    end
    object mNotaCNPJ_CPF_Transportadora: TStringField
      FieldName = 'CNPJ_CPF_Transportadora'
      Size = 18
    end
    object mNotaCRT: TIntegerField
      FieldName = 'CRT'
    end
  end
  object dsmNota: TDataSource
    DataSet = mNota
    Left = 856
    Top = 232
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 689
    Top = 160
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCliente'
    Left = 657
    Top = 160
    object cdsClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsClienteCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
  end
  object dspCliente: TDataSetProvider
    DataSet = sdsCliente
    Left = 625
    Top = 160
  end
  object sdsCliente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CODIGO, NOME, CNPJ_CPF'#13#10'FROM PESSOA'#13#10'WHERE TP_CLIENTE = '#39 +
      'S'#39#13#10'  AND INATIVO = '#39'N'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 593
    Top = 160
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 694
    Top = 208
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 660
    Top = 208
    object cdsFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsFilialNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object cdsFilialCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsFilialUSA_ENVIO_ST_RET: TStringField
      FieldName = 'USA_ENVIO_ST_RET'
      FixedChar = True
      Size = 1
    end
    object cdsFilialSIMPLES: TStringField
      FieldName = 'SIMPLES'
      FixedChar = True
      Size = 1
    end
    object cdsFilialUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 625
    Top = 208
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, NOME, NOME_INTERNO, CNPJ_CPF, USA_ENVIO_ST_RET, SIMPL' +
      'ES, UF'#13#10'FROM FILIAL'#13#10'WHERE INATIVO = '#39'N'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 592
    Top = 208
  end
  object sdsLocal_Estoque: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM LOCAL_ESTOQUE'#13#10'WHERE INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 592
    Top = 377
  end
  object dspLocal_Estoque: TDataSetProvider
    DataSet = sdsLocal_Estoque
    Left = 627
    Top = 377
  end
  object cdsLocal_Estoque: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspLocal_Estoque'
    Left = 667
    Top = 377
    object cdsLocal_EstoqueID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsLocal_EstoqueCOD_LOCAL: TIntegerField
      FieldName = 'COD_LOCAL'
    end
    object cdsLocal_EstoqueNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsLocal_EstoqueENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsLocal_EstoqueNUM_ENDERECO: TStringField
      FieldName = 'NUM_ENDERECO'
      Size = 15
    end
    object cdsLocal_EstoqueID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsLocal_EstoqueUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsLocal_EstoqueBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsLocal_EstoqueCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cdsLocal_EstoquePRINCIPAL: TStringField
      FieldName = 'PRINCIPAL'
      FixedChar = True
      Size = 1
    end
    object cdsLocal_EstoqueINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dsLocal_Estoque: TDataSource
    DataSet = cdsLocal_Estoque
    Left = 707
    Top = 377
  end
  object qNCM: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT NCM'
      'FROM TAB_NCM'
      'WHERE ID = :ID')
    SQLConnection = DmDatabase.scoDados
    Left = 1072
    Top = 128
    object qNCMNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
  end
  object qParametros_Geral: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_GERAL'
      'WHERE ID = 1')
    SQLConnection = DmDatabase.scoDados
    Left = 824
    Top = 167
    object qParametros_GeralUSAR_PESSOA_FILIAL: TStringField
      FieldName = 'USAR_PESSOA_FILIAL'
      FixedChar = True
      Size = 1
    end
    object qParametros_GeralENDGRIDS: TStringField
      FieldName = 'ENDGRIDS'
      Size = 250
    end
    object qParametros_GeralUSA_TRIANGULAR: TStringField
      FieldName = 'USA_TRIANGULAR'
      FixedChar = True
      Size = 1
    end
  end
  object qParametros_Prod: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_PROD')
    SQLConnection = DmDatabase.scoDados
    Left = 848
    Top = 120
    object qParametros_ProdUSA_PRODUTO_FILIAL: TStringField
      FieldName = 'USA_PRODUTO_FILIAL'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdOPCAO_APLICAR_MARGEM: TStringField
      FieldName = 'OPCAO_APLICAR_MARGEM'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdPERC_MARGEM_PRECO: TFloatField
      FieldName = 'PERC_MARGEM_PRECO'
    end
    object qParametros_ProdUSA_LOTE_PROD: TStringField
      FieldName = 'USA_LOTE_PROD'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdCOD_NAFRENTE_NOME: TStringField
      FieldName = 'COD_NAFRENTE_NOME'
      FixedChar = True
      Size = 1
    end
  end
  object qParametros_RecXML: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_RECXML'
      'WHERE ID = 1')
    SQLConnection = DmDatabase.scoDados
    Left = 1056
    Top = 64
    object qParametros_RecXMLID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_RecXMLPROCURAR_REM_NOME_PROD: TStringField
      FieldName = 'PROCURAR_REM_NOME_PROD'
      FixedChar = True
      Size = 1
    end
    object qParametros_RecXMLATUALIZAR_NCM: TStringField
      FieldName = 'ATUALIZAR_NCM'
      Size = 1
    end
    object qParametros_RecXMLMOSTRAR_VLR_VENDA: TStringField
      FieldName = 'MOSTRAR_VLR_VENDA'
      FixedChar = True
      Size = 1
    end
    object qParametros_RecXMLATUALIZAR_CEST: TStringField
      FieldName = 'ATUALIZAR_CEST'
      FixedChar = True
      Size = 1
    end
    object qParametros_RecXMLUSA_DIRETORIO_COPIADO: TStringField
      FieldName = 'USA_DIRETORIO_COPIADO'
      FixedChar = True
      Size = 1
    end
    object qParametros_RecXMLUSA_OC_XML: TStringField
      FieldName = 'USA_OC_XML'
      FixedChar = True
      Size = 1
    end
    object qParametros_RecXMLPROCURAR_POR_CBARRA: TStringField
      FieldName = 'PROCURAR_POR_CBARRA'
      FixedChar = True
      Size = 1
    end
    object qParametros_RecXMLCONTROLAR_GRAVA_PROD: TStringField
      FieldName = 'CONTROLAR_GRAVA_PROD'
      FixedChar = True
      Size = 1
    end
    object qParametros_RecXMLUSA_REF_SEQUENCIAL: TStringField
      FieldName = 'USA_REF_SEQUENCIAL'
      FixedChar = True
      Size = 1
    end
    object qParametros_RecXMLPROCURAR_CBARRA_SEM_FORN: TStringField
      FieldName = 'PROCURAR_CBARRA_SEM_FORN'
      FixedChar = True
      Size = 1
    end
    object qParametros_RecXMLUSA_CONTROLE_PRODUTO: TStringField
      FieldName = 'USA_CONTROLE_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object qParametros_RecXMLAVISAR_PRODUTO_NOVO: TStringField
      FieldName = 'AVISAR_PRODUTO_NOVO'
      FixedChar = True
      Size = 1
    end
    object qParametros_RecXMLCOR_NA_FONTE: TStringField
      FieldName = 'COR_NA_FONTE'
      FixedChar = True
      Size = 1
    end
    object qParametros_RecXMLUSAR_PRECO_CUSTO: TStringField
      FieldName = 'USAR_PRECO_CUSTO'
      FixedChar = True
      Size = 1
    end
    object qParametros_RecXMLUSA_GERA_PEDIDO: TStringField
      FieldName = 'USA_GERA_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object qParametros_RecXMLGRAVAR_ADIC_PROD: TStringField
      FieldName = 'GRAVAR_ADIC_PROD'
      FixedChar = True
      Size = 1
    end
    object qParametros_RecXMLCRIA_PRODUTO_NOVO_PED: TStringField
      FieldName = 'CRIA_PRODUTO_NOVO_PED'
      FixedChar = True
      Size = 1
    end
    object qParametros_RecXMLUSA_NOME_NOTA: TStringField
      FieldName = 'USA_NOME_NOTA'
      FixedChar = True
      Size = 1
    end
  end
  object qParametros_OC: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_OC'
      '')
    SQLConnection = DmDatabase.scoDados
    Left = 928
    Top = 176
    object qParametros_OCID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_OCPERMITIR_ENT_MAIOR: TStringField
      FieldName = 'PERMITIR_ENT_MAIOR'
      FixedChar = True
      Size = 1
    end
  end
  object qParametros_NTE: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_NTE'
      'WHERE ID = 1')
    SQLConnection = DmDatabase.scoDados
    Left = 983
    Top = 118
    object qParametros_NTEID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_NTESOMAR_IPI_NO_CUSTO: TStringField
      FieldName = 'SOMAR_IPI_NO_CUSTO'
      Size = 1
    end
    object qParametros_NTESOMAR_FRETE_NO_CUSTO: TStringField
      FieldName = 'SOMAR_FRETE_NO_CUSTO'
      Size = 1
    end
    object qParametros_NTEATUALIZAR_CUSTO: TStringField
      FieldName = 'ATUALIZAR_CUSTO'
      FixedChar = True
      Size = 1
    end
    object qParametros_NTESOMAR_ST_NO_CUSTO: TStringField
      FieldName = 'SOMAR_ST_NO_CUSTO'
      Size = 1
    end
    object qParametros_NTESUB_PISCOFINS_CUSTO: TStringField
      FieldName = 'SUB_PISCOFINS_CUSTO'
      Size = 1
    end
    object qParametros_NTESUB_ICMS_CUSTO: TStringField
      FieldName = 'SUB_ICMS_CUSTO'
      Size = 1
    end
    object qParametros_NTEUSA_CONTA_ORCAMENTO_ITENS: TStringField
      FieldName = 'USA_CONTA_ORCAMENTO_ITENS'
      FixedChar = True
      Size = 1
    end
    object qParametros_NTEUSA_CENTRO_CUSTO: TStringField
      FieldName = 'USA_CENTRO_CUSTO'
      FixedChar = True
      Size = 1
    end
    object qParametros_NTECONFERIR_NOTA: TStringField
      FieldName = 'CONFERIR_NOTA'
      FixedChar = True
      Size = 1
    end
  end
  object qParametros_Custo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_CUSTO'
      '')
    SQLConnection = DmDatabase.scoDados
    Left = 856
    Top = 71
    object qParametros_CustoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_CustoREV_SOMAR_IPI: TStringField
      FieldName = 'REV_SOMAR_IPI'
      FixedChar = True
      Size = 1
    end
    object qParametros_CustoREV_SOMAR_FRETE: TStringField
      FieldName = 'REV_SOMAR_FRETE'
      FixedChar = True
      Size = 1
    end
    object qParametros_CustoREV_SOMAR_ST: TStringField
      FieldName = 'REV_SOMAR_ST'
      FixedChar = True
      Size = 1
    end
    object qParametros_CustoREV_SUB_ICMS: TStringField
      FieldName = 'REV_SUB_ICMS'
      FixedChar = True
      Size = 1
    end
    object qParametros_CustoREV_SUB_PISCOFINS: TStringField
      FieldName = 'REV_SUB_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object qParametros_CustoIND_SOMAR_IPI: TStringField
      FieldName = 'IND_SOMAR_IPI'
      FixedChar = True
      Size = 1
    end
    object qParametros_CustoIND_SOMAR_FRETE: TStringField
      FieldName = 'IND_SOMAR_FRETE'
      FixedChar = True
      Size = 1
    end
    object qParametros_CustoIND_SOMAR_ST: TStringField
      FieldName = 'IND_SOMAR_ST'
      FixedChar = True
      Size = 1
    end
    object qParametros_CustoIND_SUB_ICMS: TStringField
      FieldName = 'IND_SUB_ICMS'
      FixedChar = True
      Size = 1
    end
    object qParametros_CustoIND_SUB_PISCOFINS: TStringField
      FieldName = 'IND_SUB_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object qParametros_CustoCON_SOMAR_IPI: TStringField
      FieldName = 'CON_SOMAR_IPI'
      FixedChar = True
      Size = 1
    end
    object qParametros_CustoCON_SOMAR_ST: TStringField
      FieldName = 'CON_SOMAR_ST'
      FixedChar = True
      Size = 1
    end
    object qParametros_CustoCON_SOMAR_FRETE: TStringField
      FieldName = 'CON_SOMAR_FRETE'
      FixedChar = True
      Size = 1
    end
    object qParametros_CustoCON_SUB_ICMS: TStringField
      FieldName = 'CON_SUB_ICMS'
      FixedChar = True
      Size = 1
    end
    object qParametros_CustoCON_SUB_PISCOFINS: TStringField
      FieldName = 'CON_SUB_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object qParametros_CustoCON_SUB_IPI: TStringField
      FieldName = 'CON_SUB_IPI'
      FixedChar = True
      Size = 1
    end
    object qParametros_CustoIND_SUB_IPI: TStringField
      FieldName = 'IND_SUB_IPI'
      FixedChar = True
      Size = 1
    end
    object qParametros_CustoREV_SUB_IPI: TStringField
      FieldName = 'REV_SUB_IPI'
      FixedChar = True
      Size = 1
    end
  end
  object mParc: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Parcela'
        DataType = ftInteger
      end
      item
        Name = 'NumDuplicata'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'DtVencimento'
        DataType = ftDate
      end
      item
        Name = 'VlrVencimento'
        DataType = ftFloat
      end
      item
        Name = 'ID_Conta'
        DataType = ftInteger
      end
      item
        Name = 'ID_TipoCobranca'
        DataType = ftInteger
      end
      item
        Name = 'Adiantamento'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'DtVencimento'
    Params = <>
    StoreDefs = True
    OnNewRecord = mParcNewRecord
    Left = 928
    Top = 328
    object mParcParcela: TIntegerField
      FieldName = 'Parcela'
    end
    object mParcNumDuplicata: TStringField
      FieldName = 'NumDuplicata'
      Size = 60
    end
    object mParcDtVencimento: TDateField
      FieldName = 'DtVencimento'
    end
    object mParcVlrVencimento: TFloatField
      FieldName = 'VlrVencimento'
      DisplayFormat = '0.00'
    end
    object mParcID_Conta: TIntegerField
      FieldName = 'ID_Conta'
    end
    object mParcID_TipoCobranca: TIntegerField
      FieldName = 'ID_TipoCobranca'
    end
    object mParcAdiantamento: TStringField
      FieldName = 'Adiantamento'
      Size = 1
    end
  end
  object dsmParc: TDataSource
    DataSet = mParc
    Left = 960
    Top = 328
  end
  object sdsNotaFiscal_NDevolvida: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ND.*'#13#10'FROM NOTAFISCAL_NDEVOLVIDA ND'#13#10'WHERE ND.ID = :ID'#13#10' ' +
      '  AND ND.ITEM = :ITEM'
    DataSource = dsNotaFiscal_Itens_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 99
    Top = 434
    object sdsNotaFiscal_NDevolvidaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_NDevolvidaITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_NDevolvidaITEM_NDEV: TIntegerField
      FieldName = 'ITEM_NDEV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_NDevolvidaID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object sdsNotaFiscal_NDevolvidaFILIAL_NTE: TIntegerField
      FieldName = 'FILIAL_NTE'
    end
    object sdsNotaFiscal_NDevolvidaID_NTE: TIntegerField
      FieldName = 'ID_NTE'
    end
    object sdsNotaFiscal_NDevolvidaITEM_NTE: TIntegerField
      FieldName = 'ITEM_NTE'
    end
    object sdsNotaFiscal_NDevolvidaQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsNotaFiscal_NDevolvidaNFECHAVEACESSO_NTE: TStringField
      FieldName = 'NFECHAVEACESSO_NTE'
      Size = 44
    end
    object sdsNotaFiscal_NDevolvidaNUMNOTA_ENTRADA: TIntegerField
      FieldName = 'NUMNOTA_ENTRADA'
    end
    object sdsNotaFiscal_NDevolvidaSERIE_ENTRADA: TStringField
      FieldName = 'SERIE_ENTRADA'
      Size = 3
    end
    object sdsNotaFiscal_NDevolvidaMODELO: TStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object sdsNotaFiscal_NDevolvidaDTEMISSAO_NTE: TDateField
      FieldName = 'DTEMISSAO_NTE'
    end
    object sdsNotaFiscal_NDevolvidaTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      Size = 1
    end
  end
  object cdsNotaFiscal_NDevolvida: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNotaFiscal_ItenssdsNotaFiscal_NDevolvida
    IndexFieldNames = 'ID;ITEM;ITEM_NDEV'
    Params = <>
    Left = 139
    Top = 434
    object cdsNotaFiscal_NDevolvidaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_NDevolvidaITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_NDevolvidaITEM_NDEV: TIntegerField
      FieldName = 'ITEM_NDEV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_NDevolvidaID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object cdsNotaFiscal_NDevolvidaFILIAL_NTE: TIntegerField
      FieldName = 'FILIAL_NTE'
    end
    object cdsNotaFiscal_NDevolvidaID_NTE: TIntegerField
      FieldName = 'ID_NTE'
    end
    object cdsNotaFiscal_NDevolvidaITEM_NTE: TIntegerField
      FieldName = 'ITEM_NTE'
    end
    object cdsNotaFiscal_NDevolvidaQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsNotaFiscal_NDevolvidaNFECHAVEACESSO_NTE: TStringField
      FieldName = 'NFECHAVEACESSO_NTE'
      Size = 44
    end
    object cdsNotaFiscal_NDevolvidaNUMNOTA_ENTRADA: TIntegerField
      FieldName = 'NUMNOTA_ENTRADA'
    end
    object cdsNotaFiscal_NDevolvidaSERIE_ENTRADA: TStringField
      FieldName = 'SERIE_ENTRADA'
      Size = 3
    end
    object cdsNotaFiscal_NDevolvidaMODELO: TStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object cdsNotaFiscal_NDevolvidaDTEMISSAO_NTE: TDateField
      FieldName = 'DTEMISSAO_NTE'
    end
    object cdsNotaFiscal_NDevolvidaTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      Size = 1
    end
  end
  object dsNotaFiscal_NDevolvida: TDataSource
    DataSet = cdsNotaFiscal_NDevolvida
    Left = 179
    Top = 434
  end
  object dsNotaFiscal_Itens_Mestre: TDataSource
    DataSet = sdsNotaFiscal_Itens
    Left = 224
    Top = 392
  end
  object cdsPag: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1079
    Top = 337
  end
  object qParametros_Lote: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select l.opcao_estoque_semi, l.lote_textil'
      'from parametros_lote l')
    SQLConnection = DmDatabase.scoDados
    Left = 946
    Top = 79
    object qParametros_LoteOPCAO_ESTOQUE_SEMI: TStringField
      FieldName = 'OPCAO_ESTOQUE_SEMI'
      FixedChar = True
      Size = 1
    end
    object qParametros_LoteLOTE_TEXTIL: TStringField
      FieldName = 'LOTE_TEXTIL'
      FixedChar = True
      Size = 1
    end
  end
  object cdsNotasXML: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'XMLTransformProvider1'
    Left = 1137
    Top = 425
    object cdsNotasXMLIEST: TStringField
      FieldName = 'IEST'
      Size = 14
    end
    object cdsNotasXMLversao: TStringField
      FieldName = 'versao'
      Required = True
      Size = 6
    end
    object cdsNotasXMLinfNFe_Id: TStringField
      FieldName = 'infNFe_Id'
      Required = True
      Size = 47
    end
    object cdsNotasXMLcUF: TIntegerField
      FieldName = 'cUF'
    end
    object cdsNotasXMLcNF: TIntegerField
      FieldName = 'cNF'
    end
    object cdsNotasXMLnatOp: TStringField
      FieldName = 'natOp'
      Size = 60
    end
    object cdsNotasXMLindPag: TIntegerField
      FieldName = 'indPag'
    end
    object cdsNotasXMLmod: TStringField
      FieldName = 'mod'
      Size = 3
    end
    object cdsNotasXMLserie: TIntegerField
      FieldName = 'serie'
    end
    object cdsNotasXMLnNF: TIntegerField
      FieldName = 'nNF'
    end
    object cdsNotasXMLide_dEmi: TDateField
      FieldName = 'ide_dEmi'
    end
    object cdsNotasXMLide_dhEmi: TStringField
      FieldName = 'ide_dhEmi'
      Size = 25
    end
    object cdsNotasXMLdSaiEnt: TDateField
      FieldName = 'dSaiEnt'
    end
    object cdsNotasXMLhSaiEnt: TStringField
      FieldName = 'hSaiEnt'
      Size = 8
    end
    object cdsNotasXMLtpNF: TIntegerField
      FieldName = 'tpNF'
    end
    object cdsNotasXMLcMunFG1: TIntegerField
      FieldName = 'cMunFG1'
    end
    object cdsNotasXMLtpImp: TIntegerField
      FieldName = 'tpImp'
    end
    object cdsNotasXMLtpEmis: TIntegerField
      FieldName = 'tpEmis'
    end
    object cdsNotasXMLcDV: TIntegerField
      FieldName = 'cDV'
    end
    object cdsNotasXMLtpAmb: TStringField
      FieldName = 'tpAmb'
      Size = 31
    end
    object cdsNotasXMLfinNFe: TIntegerField
      FieldName = 'finNFe'
    end
    object cdsNotasXMLprocEmi: TIntegerField
      FieldName = 'procEmi'
    end
    object cdsNotasXMLverProc: TStringField
      FieldName = 'verProc'
    end
    object cdsNotasXMLdhCont: TDateField
      FieldName = 'dhCont'
    end
    object cdsNotasXMLxJust: TStringField
      FieldName = 'xJust'
      Size = 256
    end
    object cdsNotasXMLemit_CNPJ: TStringField
      FieldName = 'emit_CNPJ'
      Size = 14
    end
    object cdsNotasXMLemit_CPF: TStringField
      FieldName = 'emit_CPF'
      Size = 11
    end
    object cdsNotasXMLemit_xNome: TStringField
      FieldName = 'emit_xNome'
      Size = 60
    end
    object cdsNotasXMLxFant: TStringField
      FieldName = 'xFant'
      Size = 60
    end
    object cdsNotasXMLenderEmit_xLgr: TStringField
      FieldName = 'enderEmit_xLgr'
      Size = 60
    end
    object cdsNotasXMLenderEmit_nro: TStringField
      FieldName = 'enderEmit_nro'
      Size = 60
    end
    object cdsNotasXMLenderEmit_xCpl: TStringField
      FieldName = 'enderEmit_xCpl'
      Size = 60
    end
    object cdsNotasXMLenderEmit_xBairro: TStringField
      FieldName = 'enderEmit_xBairro'
      Size = 60
    end
    object cdsNotasXMLenderEmit_cMun: TIntegerField
      FieldName = 'enderEmit_cMun'
    end
    object cdsNotasXMLenderEmit_xMun: TStringField
      FieldName = 'enderEmit_xMun'
      Size = 60
    end
    object cdsNotasXMLenderEmit_UF: TStringField
      FieldName = 'enderEmit_UF'
      Size = 3
    end
    object cdsNotasXMLenderEmit_CEP: TIntegerField
      FieldName = 'enderEmit_CEP'
    end
    object cdsNotasXMLenderEmit_cPais: TIntegerField
      FieldName = 'enderEmit_cPais'
    end
    object cdsNotasXMLenderEmit_xPais: TStringField
      FieldName = 'enderEmit_xPais'
      Size = 60
    end
    object cdsNotasXMLenderEmit_fone: TStringField
      FieldName = 'enderEmit_fone'
    end
    object cdsNotasXMLemit_IE: TStringField
      FieldName = 'emit_IE'
      Size = 14
    end
    object cdsNotasXMLIM: TStringField
      FieldName = 'IM'
      Size = 15
    end
    object cdsNotasXMLCNAE: TStringField
      FieldName = 'CNAE'
      Size = 7
    end
    object cdsNotasXMLCRT: TIntegerField
      FieldName = 'CRT'
    end
    object cdsNotasXMLavulsa_CNPJ: TStringField
      FieldName = 'avulsa_CNPJ'
      Size = 14
    end
    object cdsNotasXMLxOrgao: TStringField
      FieldName = 'xOrgao'
      Size = 60
    end
    object cdsNotasXMLmatr: TStringField
      FieldName = 'matr'
      Size = 60
    end
    object cdsNotasXMLxAgente: TStringField
      FieldName = 'xAgente'
      Size = 60
    end
    object cdsNotasXMLfone: TStringField
      FieldName = 'fone'
    end
    object cdsNotasXMLavulsa_UF: TStringField
      FieldName = 'avulsa_UF'
      Size = 3
    end
    object cdsNotasXMLnDAR: TStringField
      FieldName = 'nDAR'
      Size = 60
    end
    object cdsNotasXMLavulsa_dEmi: TDateField
      FieldName = 'avulsa_dEmi'
    end
    object cdsNotasXMLavulsa_dhEmi: TStringField
      FieldName = 'avulsa_dhEmi'
      Size = 25
    end
    object cdsNotasXMLvDAR: TFloatField
      FieldName = 'vDAR'
    end
    object cdsNotasXMLrepEmi: TStringField
      FieldName = 'repEmi'
      Size = 60
    end
    object cdsNotasXMLdPag: TDateField
      FieldName = 'dPag'
    end
    object cdsNotasXMLdest_CNPJ: TStringField
      FieldName = 'dest_CNPJ'
      Size = 14
    end
    object cdsNotasXMLdest_CPF: TStringField
      FieldName = 'dest_CPF'
      Size = 11
    end
    object cdsNotasXMLdest_xNome: TStringField
      FieldName = 'dest_xNome'
      Size = 60
    end
    object cdsNotasXMLenderDest_xLgr: TStringField
      FieldName = 'enderDest_xLgr'
      Size = 60
    end
    object cdsNotasXMLenderDest_nro: TStringField
      FieldName = 'enderDest_nro'
      Size = 60
    end
    object cdsNotasXMLenderDest_xCpl: TStringField
      FieldName = 'enderDest_xCpl'
      Size = 60
    end
    object cdsNotasXMLenderDest_xBairro: TStringField
      FieldName = 'enderDest_xBairro'
      Size = 60
    end
    object cdsNotasXMLenderDest_cMun: TIntegerField
      FieldName = 'enderDest_cMun'
    end
    object cdsNotasXMLenderDest_xMun: TStringField
      FieldName = 'enderDest_xMun'
      Size = 60
    end
    object cdsNotasXMLenderDest_UF: TStringField
      FieldName = 'enderDest_UF'
      Size = 3
    end
    object cdsNotasXMLenderDest_CEP: TIntegerField
      FieldName = 'enderDest_CEP'
    end
    object cdsNotasXMLenderDest_cPais: TIntegerField
      FieldName = 'enderDest_cPais'
    end
    object cdsNotasXMLenderDest_xPais: TStringField
      FieldName = 'enderDest_xPais'
      Size = 60
    end
    object cdsNotasXMLenderDest_fone: TStringField
      FieldName = 'enderDest_fone'
    end
    object cdsNotasXMLdest_IE: TStringField
      FieldName = 'dest_IE'
      Size = 14
    end
    object cdsNotasXMLISUF: TStringField
      FieldName = 'ISUF'
      Size = 9
    end
    object cdsNotasXMLemail: TStringField
      FieldName = 'email'
      Size = 60
    end
    object cdsNotasXMLretirada_CNPJ: TStringField
      FieldName = 'retirada_CNPJ'
      Size = 14
    end
    object cdsNotasXMLretirada_CPF: TStringField
      FieldName = 'retirada_CPF'
      Size = 11
    end
    object cdsNotasXMLretirada_xLgr: TStringField
      FieldName = 'retirada_xLgr'
      Size = 60
    end
    object cdsNotasXMLretirada_nro: TStringField
      FieldName = 'retirada_nro'
      Size = 60
    end
    object cdsNotasXMLretirada_xCpl: TStringField
      FieldName = 'retirada_xCpl'
      Size = 60
    end
    object cdsNotasXMLretirada_xBairro: TStringField
      FieldName = 'retirada_xBairro'
      Size = 60
    end
    object cdsNotasXMLretirada_cMun: TIntegerField
      FieldName = 'retirada_cMun'
    end
    object cdsNotasXMLretirada_xMun: TStringField
      FieldName = 'retirada_xMun'
      Size = 60
    end
    object cdsNotasXMLretirada_UF: TStringField
      FieldName = 'retirada_UF'
      Size = 3
    end
    object cdsNotasXMLentrega_CNPJ: TStringField
      FieldName = 'entrega_CNPJ'
      Size = 14
    end
    object cdsNotasXMLentrega_CPF: TStringField
      FieldName = 'entrega_CPF'
      Size = 11
    end
    object cdsNotasXMLentrega_xLgr: TStringField
      FieldName = 'entrega_xLgr'
      Size = 60
    end
    object cdsNotasXMLentrega_nro: TStringField
      FieldName = 'entrega_nro'
      Size = 60
    end
    object cdsNotasXMLentrega_xCpl: TStringField
      FieldName = 'entrega_xCpl'
      Size = 60
    end
    object cdsNotasXMLentrega_xBairro: TStringField
      FieldName = 'entrega_xBairro'
      Size = 60
    end
    object cdsNotasXMLentrega_cMun: TIntegerField
      FieldName = 'entrega_cMun'
    end
    object cdsNotasXMLentrega_xMun: TStringField
      FieldName = 'entrega_xMun'
      Size = 60
    end
    object cdsNotasXMLentrega_UF: TStringField
      FieldName = 'entrega_UF'
      Size = 3
    end
    object cdsNotasXMLICMSTot_vBC: TFloatField
      FieldName = 'ICMSTot_vBC'
    end
    object cdsNotasXMLvICMS: TFloatField
      FieldName = 'vICMS'
    end
    object cdsNotasXMLvBCST: TFloatField
      FieldName = 'vBCST'
    end
    object cdsNotasXMLvST: TFloatField
      FieldName = 'vST'
    end
    object cdsNotasXMLvProd: TFloatField
      FieldName = 'vProd'
    end
    object cdsNotasXMLvFrete: TFloatField
      FieldName = 'vFrete'
    end
    object cdsNotasXMLvSeg: TFloatField
      FieldName = 'vSeg'
    end
    object cdsNotasXMLICMSTot_vDesc: TFloatField
      FieldName = 'ICMSTot_vDesc'
    end
    object cdsNotasXMLvII: TFloatField
      FieldName = 'vII'
    end
    object cdsNotasXMLvIPI: TFloatField
      FieldName = 'vIPI'
    end
    object cdsNotasXMLICMSTot_vPIS: TFloatField
      FieldName = 'ICMSTot_vPIS'
    end
    object cdsNotasXMLICMSTot_vCOFINS: TFloatField
      FieldName = 'ICMSTot_vCOFINS'
    end
    object cdsNotasXMLvOutro: TFloatField
      FieldName = 'vOutro'
    end
    object cdsNotasXMLvNF: TFloatField
      FieldName = 'vNF'
    end
    object cdsNotasXMLISSQNtot_vServ: TFloatField
      FieldName = 'ISSQNtot_vServ'
    end
    object cdsNotasXMLISSQNtot_vBC: TFloatField
      FieldName = 'ISSQNtot_vBC'
    end
    object cdsNotasXMLvISS: TFloatField
      FieldName = 'vISS'
    end
    object cdsNotasXMLISSQNtot_vPIS: TFloatField
      FieldName = 'ISSQNtot_vPIS'
    end
    object cdsNotasXMLISSQNtot_vCOFINS: TFloatField
      FieldName = 'ISSQNtot_vCOFINS'
    end
    object cdsNotasXMLvRetPIS: TFloatField
      FieldName = 'vRetPIS'
    end
    object cdsNotasXMLvRetCOFINS: TFloatField
      FieldName = 'vRetCOFINS'
    end
    object cdsNotasXMLvRetCSLL: TFloatField
      FieldName = 'vRetCSLL'
    end
    object cdsNotasXMLvBCIRRF: TFloatField
      FieldName = 'vBCIRRF'
    end
    object cdsNotasXMLvIRRF: TFloatField
      FieldName = 'vIRRF'
    end
    object cdsNotasXMLvBCRetPrev: TFloatField
      FieldName = 'vBCRetPrev'
    end
    object cdsNotasXMLvRetPrev: TFloatField
      FieldName = 'vRetPrev'
    end
    object cdsNotasXMLmodFrete: TIntegerField
      FieldName = 'modFrete'
    end
    object cdsNotasXMLCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object cdsNotasXMLCPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object cdsNotasXMLxNome: TStringField
      FieldName = 'xNome'
      Size = 60
    end
    object cdsNotasXMLIE: TStringField
      FieldName = 'IE'
      Size = 14
    end
    object cdsNotasXMLxEnder: TStringField
      FieldName = 'xEnder'
      Size = 60
    end
    object cdsNotasXMLtransporta_xMun: TStringField
      FieldName = 'transporta_xMun'
      Size = 60
    end
    object cdsNotasXMLtransporta_UF: TStringField
      FieldName = 'transporta_UF'
      Size = 3
    end
    object cdsNotasXMLretTransp_vServ: TFloatField
      FieldName = 'retTransp_vServ'
    end
    object cdsNotasXMLvBCRet: TFloatField
      FieldName = 'vBCRet'
    end
    object cdsNotasXMLpICMSRet: TFloatField
      FieldName = 'pICMSRet'
    end
    object cdsNotasXMLvICMSRet: TFloatField
      FieldName = 'vICMSRet'
    end
    object cdsNotasXMLCFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object cdsNotasXMLcMunFG2: TIntegerField
      FieldName = 'cMunFG2'
    end
    object cdsNotasXMLveicTransp_placa: TStringField
      FieldName = 'veicTransp_placa'
      Size = 8
    end
    object cdsNotasXMLveicTransp_UF: TStringField
      FieldName = 'veicTransp_UF'
      Size = 3
    end
    object cdsNotasXMLveicTransp_RNTC: TStringField
      FieldName = 'veicTransp_RNTC'
    end
    object cdsNotasXMLreboque_placa: TStringField
      FieldName = 'reboque_placa'
      Size = 8
    end
    object cdsNotasXMLreboque_UF: TStringField
      FieldName = 'reboque_UF'
      Size = 3
    end
    object cdsNotasXMLreboque_RNTC: TStringField
      FieldName = 'reboque_RNTC'
    end
    object cdsNotasXMLvagao: TStringField
      FieldName = 'vagao'
    end
    object cdsNotasXMLbalsa: TStringField
      FieldName = 'balsa'
    end
    object cdsNotasXMLnFat: TStringField
      FieldName = 'nFat'
      Size = 60
    end
    object cdsNotasXMLvOrig: TFloatField
      FieldName = 'vOrig'
    end
    object cdsNotasXMLfat_vDesc: TFloatField
      FieldName = 'fat_vDesc'
    end
    object cdsNotasXMLvLiq: TFloatField
      FieldName = 'vLiq'
    end
    object cdsNotasXMLinfAdFisco: TStringField
      FieldName = 'infAdFisco'
      Size = 2000
    end
    object cdsNotasXMLinfCpl: TStringField
      FieldName = 'infCpl'
      Size = 5000
    end
    object cdsNotasXMLobsCont_xCampo: TStringField
      FieldName = 'obsCont_xCampo'
      Required = True
    end
    object cdsNotasXMLobsCont_xTexto: TStringField
      FieldName = 'obsCont_xTexto'
      Size = 60
    end
    object cdsNotasXMLobsFisco_xCampo: TStringField
      FieldName = 'obsFisco_xCampo'
      Required = True
    end
    object cdsNotasXMLobsFisco_xTexto: TStringField
      FieldName = 'obsFisco_xTexto'
      Size = 60
    end
    object cdsNotasXMLUFEmbarq: TStringField
      FieldName = 'UFEmbarq'
      Size = 3
    end
    object cdsNotasXMLxLocEmbarq: TStringField
      FieldName = 'xLocEmbarq'
      Size = 60
    end
    object cdsNotasXMLxNEmp: TStringField
      FieldName = 'xNEmp'
      Size = 17
    end
    object cdsNotasXMLxPed: TStringField
      FieldName = 'xPed'
      Size = 60
    end
    object cdsNotasXMLxCont: TStringField
      FieldName = 'xCont'
      Size = 60
    end
    object cdsNotasXMLSignature_Id: TStringField
      FieldName = 'Signature_Id'
      Required = True
      Size = 47
    end
    object cdsNotasXMLSignedInfo_Id: TStringField
      FieldName = 'SignedInfo_Id'
      Required = True
      Size = 47
    end
    object cdsNotasXMLAlgorithm1: TStringField
      FieldName = 'Algorithm1'
      Required = True
      Size = 31
    end
    object cdsNotasXMLSignatureMethod_Algorithm: TStringField
      FieldName = 'SignatureMethod_Algorithm'
      Required = True
      Size = 31
    end
    object cdsNotasXMLId: TStringField
      FieldName = 'Id'
      Required = True
      Size = 47
    end
    object cdsNotasXMLURI: TStringField
      FieldName = 'URI'
      Required = True
      Size = 31
    end
    object cdsNotasXMLType: TStringField
      FieldName = 'Type'
      Size = 31
    end
    object cdsNotasXMLAlgorithm2: TStringField
      FieldName = 'Algorithm2'
      Required = True
      Size = 31
    end
    object cdsNotasXMLXPath: TStringField
      FieldName = 'XPath'
      Size = 31
    end
    object cdsNotasXMLAlgorithm3: TStringField
      FieldName = 'Algorithm3'
      Required = True
      Size = 31
    end
    object cdsNotasXMLDigestValue: TStringField
      FieldName = 'DigestValue'
      Size = 31
    end
    object cdsNotasXMLSignatureValue_Id: TStringField
      FieldName = 'SignatureValue_Id'
      Required = True
      Size = 47
    end
    object cdsNotasXMLKeyInfo_Id: TStringField
      FieldName = 'KeyInfo_Id'
      Required = True
      Size = 47
    end
    object cdsNotasXMLX509Certificate: TStringField
      FieldName = 'X509Certificate'
      Size = 31
    end
    object cdsNotasXMLNFref: TDataSetField
      FieldName = 'NFref'
      UnNamed = True
    end
    object cdsNotasXMLdet: TDataSetField
      FieldName = 'det'
      UnNamed = True
    end
    object cdsNotasXMLvol: TDataSetField
      FieldName = 'vol'
      UnNamed = True
    end
    object cdsNotasXMLdup: TDataSetField
      FieldName = 'dup'
      UnNamed = True
    end
    object cdsNotasXMLprocRef: TDataSetField
      FieldName = 'procRef'
      UnNamed = True
    end
    object cdsNotasXMLprotNFe: TDataSetField
      FieldName = 'protNFe'
      UnNamed = True
    end
  end
  object dsNotaXML: TDataSource
    DataSet = cdsNotasXML
    Left = 1163
    Top = 424
  end
  object mItensNota_Orig: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'PERC_ICMS'
        DataType = ftFloat
      end
      item
        Name = 'PERC_IPI'
        DataType = ftFloat
      end
      item
        Name = 'PERC_PIS'
        DataType = ftFloat
      end
      item
        Name = 'PERC_COFINS'
        DataType = ftFloat
      end
      item
        Name = 'COD_CFOP'
        DataType = ftInteger
      end
      item
        Name = 'NCM'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PERC_ICMSSUBST'
        DataType = ftFloat
      end
      item
        Name = 'VLR_ICMS'
        DataType = ftFloat
      end
      item
        Name = 'VLR_IPI'
        DataType = ftFloat
      end
      item
        Name = 'VLR_PIS'
        DataType = ftFloat
      end
      item
        Name = 'VLR_COFINS'
        DataType = ftFloat
      end
      item
        Name = 'BASE_PIS'
        DataType = ftFloat
      end
      item
        Name = 'BASE_COFINS'
        DataType = ftFloat
      end
      item
        Name = 'BASE_ICMS'
        DataType = ftFloat
      end
      item
        Name = 'BASE_IPI'
        DataType = ftFloat
      end
      item
        Name = 'BASE_ICMSSUBST'
        DataType = ftFloat
      end
      item
        Name = 'ORIGEM'
        DataType = ftInteger
      end
      item
        Name = 'VLR_ICMSDESNOERADO'
        DataType = ftFloat
      end
      item
        Name = 'VLR_ICMSDIFERIDO'
        DataType = ftFloat
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'FINALIDADE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'COD_PRODUTO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'VLR_FRETE'
        DataType = ftFloat
      end
      item
        Name = 'NumNota'
        DataType = ftInteger
      end
      item
        Name = 'PERC_MVAST'
        DataType = ftFloat
      end
      item
        Name = 'COD_CSTICMS'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'COD_CSTIPI'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'COD_CSTPIS'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'COD_CSTCOFINS'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'PERC_ICMSDIFERIDO'
        DataType = ftFloat
      end
      item
        Name = 'UNIDADE'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'PERC_REDICMS'
        DataType = ftFloat
      end
      item
        Name = 'PERC_REDBASEST'
        DataType = ftFloat
      end
      item
        Name = 'VLR_ST'
        DataType = ftFloat
      end>
    IndexDefs = <>
    IndexFieldNames = 'NumNota;Item'
    Params = <>
    StoreDefs = True
    Left = 1048
    Top = 280
    Data = {
      130300009619E0BD010000001800000023000000000003000000130304497465
      6D040001000000000009504552435F49434D5308000400000000000850455243
      5F495049080004000000000008504552435F50495308000400000000000B5045
      52435F434F46494E53080004000000000008434F445F43464F50040001000000
      0000034E434D0100490000000100055749445448020002000A000E504552435F
      49434D535355425354080004000000000008564C525F49434D53080004000000
      000007564C525F495049080004000000000007564C525F504953080004000000
      00000A564C525F434F46494E53080004000000000008424153455F5049530800
      0400000000000B424153455F434F46494E53080004000000000009424153455F
      49434D53080004000000000008424153455F49504908000400000000000E4241
      53455F49434D5353554253540800040000000000064F524947454D0400010000
      00000012564C525F49434D534445534E4F455241444F08000400000000001056
      4C525F49434D53444946455249444F0800040000000000044E4F4D4501004900
      000001000557494454480200020064000A46494E414C49444144450100490000
      0001000557494454480200020001000B434F445F50524F4455544F0100490000
      000100055749445448020002003C0009564C525F465245544508000400000000
      00074E756D4E6F746104000100000000000A504552435F4D5641535408000400
      000000000B434F445F43535449434D5301004900000001000557494454480200
      020003000A434F445F4353544950490100490000000100055749445448020002
      0003000A434F445F435354504953010049000000010005574944544802000200
      03000D434F445F435354434F46494E5301004900000001000557494454480200
      0200030011504552435F49434D53444946455249444F08000400000000000755
      4E494441444501004900000001000557494454480200020006000C504552435F
      52454449434D5308000400000000000E504552435F5245444241534553540800
      04000000000006564C525F535408000400000000000000}
    object mItensNota_OrigItem: TIntegerField
      FieldName = 'Item'
    end
    object mItensNota_OrigPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object mItensNota_OrigPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object mItensNota_OrigPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object mItensNota_OrigPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object mItensNota_OrigCOD_CFOP: TIntegerField
      FieldName = 'COD_CFOP'
    end
    object mItensNota_OrigNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object mItensNota_OrigPERC_ICMSSUBST: TFloatField
      FieldName = 'PERC_ICMSSUBST'
    end
    object mItensNota_OrigVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
    end
    object mItensNota_OrigVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
    object mItensNota_OrigVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
    end
    object mItensNota_OrigVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
    end
    object mItensNota_OrigBASE_PIS: TFloatField
      FieldName = 'BASE_PIS'
    end
    object mItensNota_OrigBASE_COFINS: TFloatField
      FieldName = 'BASE_COFINS'
    end
    object mItensNota_OrigBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object mItensNota_OrigBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
    end
    object mItensNota_OrigBASE_ICMSSUBST: TFloatField
      FieldName = 'BASE_ICMSSUBST'
    end
    object mItensNota_OrigORIGEM: TIntegerField
      FieldName = 'ORIGEM'
    end
    object mItensNota_OrigVLR_ICMSDESNOERADO: TFloatField
      FieldName = 'VLR_ICMSDESNOERADO'
    end
    object mItensNota_OrigVLR_ICMSDIFERIDO: TFloatField
      FieldName = 'VLR_ICMSDIFERIDO'
    end
    object mItensNota_OrigNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object mItensNota_OrigFINALIDADE: TStringField
      FieldName = 'FINALIDADE'
      Size = 1
    end
    object mItensNota_OrigCOD_PRODUTO: TStringField
      FieldName = 'COD_PRODUTO'
      Size = 60
    end
    object mItensNota_OrigVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object mItensNota_OrigNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object mItensNota_OrigPERC_MVAST: TFloatField
      FieldName = 'PERC_MVAST'
    end
    object mItensNota_OrigCOD_CSTICMS: TStringField
      FieldName = 'COD_CSTICMS'
      Size = 3
    end
    object mItensNota_OrigCOD_CSTIPI: TStringField
      FieldName = 'COD_CSTIPI'
      Size = 3
    end
    object mItensNota_OrigCOD_CSTPIS: TStringField
      FieldName = 'COD_CSTPIS'
      Size = 3
    end
    object mItensNota_OrigCOD_CSTCOFINS: TStringField
      FieldName = 'COD_CSTCOFINS'
      Size = 3
    end
    object mItensNota_OrigPERC_ICMSDIFERIDO: TFloatField
      FieldName = 'PERC_ICMSDIFERIDO'
    end
    object mItensNota_OrigUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object mItensNota_OrigPERC_REDICMS: TFloatField
      FieldName = 'PERC_REDICMS'
    end
    object mItensNota_OrigPERC_REDBASEST: TFloatField
      FieldName = 'PERC_REDBASEST'
    end
    object mItensNota_OrigVLR_ST: TFloatField
      FieldName = 'VLR_ST'
    end
  end
  object dsmItensNota_Orig: TDataSource
    DataSet = mItensNota_Orig
    Left = 1104
    Top = 280
  end
end
