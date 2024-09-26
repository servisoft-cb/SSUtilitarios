object DMImportarPdx: TDMImportarPdx
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 95
  Top = 9
  Height = 691
  Width = 1178
  object sdsCFOP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_CFOP'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 456
    Top = 32
    object sdsCFOPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCFOPCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object sdsCFOPNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsCFOPENTRADASAIDA: TStringField
      FieldName = 'ENTRADASAIDA'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPGERAR_IPI: TStringField
      FieldName = 'GERAR_IPI'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPGERAR_ICMS: TStringField
      FieldName = 'GERAR_ICMS'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPGERAR_DUPLICATA: TStringField
      FieldName = 'GERAR_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPSOMAR_VLRTOTALPRODUTO: TStringField
      FieldName = 'SOMAR_VLRTOTALPRODUTO'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object sdsCFOPID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object sdsCFOPID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object sdsCFOPCOPIARNOTATRIANGULAR: TStringField
      FieldName = 'COPIARNOTATRIANGULAR'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object sdsCFOPID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object sdsCFOPTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      Size = 2
    end
    object sdsCFOPTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      Size = 2
    end
    object sdsCFOPGERAR_ICMS_SIMPLES: TStringField
      FieldName = 'GERAR_ICMS_SIMPLES'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPTIPO_EMPRESA: TStringField
      FieldName = 'TIPO_EMPRESA'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPSUBSTITUICAO_TRIB: TStringField
      FieldName = 'SUBSTITUICAO_TRIB'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPMVA: TStringField
      FieldName = 'MVA'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object sdsCFOPPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object sdsCFOPLEI: TMemoField
      FieldName = 'LEI'
      BlobType = ftMemo
      Size = 1
    end
    object sdsCFOPBENEFICIAMENTO: TStringField
      FieldName = 'BENEFICIAMENTO'
      FixedChar = True
      Size = 1
    end
  end
  object dspCFOP: TDataSetProvider
    DataSet = sdsCFOP
    Left = 528
    Top = 32
  end
  object cdsCFOP: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCFOP'
    Left = 592
    Top = 32
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
  end
  object dsCFOP: TDataSource
    DataSet = cdsCFOP
    Left = 664
    Top = 32
  end
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 96
    Top = 8
    object sdsProdutoID: TIntegerField
      FieldName = 'ID'
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
      Size = 3
    end
    object sdsProdutoDT_ALTPRECO: TDateField
      FieldName = 'DT_ALTPRECO'
    end
    object sdsProdutoUSA_GRADE: TStringField
      FieldName = 'USA_GRADE'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCOD_ANT: TStringField
      FieldName = 'COD_ANT'
      Size = 10
    end
    object sdsProdutoID_GRADE: TIntegerField
      FieldName = 'ID_GRADE'
    end
    object sdsProdutoUSA_COR: TStringField
      FieldName = 'USA_COR'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoBAIXA_ESTOQUE_MAT: TStringField
      FieldName = 'BAIXA_ESTOQUE_MAT'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoID_FORMA: TIntegerField
      FieldName = 'ID_FORMA'
    end
    object sdsProdutoID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object sdsProdutoUSA_PRECO_COR: TStringField
      FieldName = 'USA_PRECO_COR'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoTRANSFER: TStringField
      FieldName = 'TRANSFER'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Left = 168
    Top = 8
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    OnNewRecord = cdsProdutoNewRecord
    Left = 232
    Top = 8
    object cdsProdutoID: TIntegerField
      FieldName = 'ID'
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
      Size = 3
    end
    object cdsProdutoDT_ALTPRECO: TDateField
      FieldName = 'DT_ALTPRECO'
    end
    object cdsProdutoUSA_GRADE: TStringField
      FieldName = 'USA_GRADE'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCOD_ANT: TStringField
      FieldName = 'COD_ANT'
      Size = 10
    end
    object cdsProdutoID_GRADE: TIntegerField
      FieldName = 'ID_GRADE'
    end
    object cdsProdutoUSA_COR: TStringField
      FieldName = 'USA_COR'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoBAIXA_ESTOQUE_MAT: TStringField
      FieldName = 'BAIXA_ESTOQUE_MAT'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object cdsProdutoUSA_PRECO_COR: TStringField
      FieldName = 'USA_PRECO_COR'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 304
    Top = 8
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
    Left = 832
    Top = 32
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
    Left = 840
    Top = 88
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
  end
  object sdsCidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CIDADE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 96
    Top = 168
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
    Left = 168
    Top = 168
  end
  object cdsCidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCidade'
    Left = 232
    Top = 168
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
    Left = 304
    Top = 168
  end
  object sdsPais: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PAIS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 96
    Top = 224
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
    Left = 168
    Top = 224
  end
  object cdsPais: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPais'
    Left = 232
    Top = 224
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
    Left = 304
    Top = 224
  end
  object sdsFornecedor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PESSOA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 96
    Top = 280
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
    object sdsFornecedorTIPO_ICMS: TStringField
      FieldName = 'TIPO_ICMS'
      FixedChar = True
      Size = 1
    end
    object sdsFornecedorID_TAB_PRECO: TIntegerField
      FieldName = 'ID_TAB_PRECO'
    end
    object sdsFornecedorTP_ATELIER: TStringField
      FieldName = 'TP_ATELIER'
      Size = 1
    end
    object sdsFornecedorTIPO_COMISSAO: TStringField
      FieldName = 'TIPO_COMISSAO'
      FixedChar = True
      Size = 1
    end
    object sdsFornecedorPERC_COMISSAO_VEND: TFloatField
      FieldName = 'PERC_COMISSAO_VEND'
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
    object sdsFornecedorNOME_CONTATO: TStringField
      FieldName = 'NOME_CONTATO'
      Size = 40
    end
    object sdsFornecedorINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Size = 15
    end
    object sdsFornecedorDT_CONTRATO_INI: TDateField
      FieldName = 'DT_CONTRATO_INI'
    end
    object sdsFornecedorDT_CONTRATO_FIN: TDateField
      FieldName = 'DT_CONTRATO_FIN'
    end
    object sdsFornecedorID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
    end
    object sdsFornecedorID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object sdsFornecedorVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
    end
    object sdsFornecedorCLIENTE_CONTA_ID: TIntegerField
      FieldName = 'CLIENTE_CONTA_ID'
    end
    object sdsFornecedorFORNECEDOR_CONTA_ID: TIntegerField
      FieldName = 'FORNECEDOR_CONTA_ID'
    end
    object sdsFornecedorVENDEDOR_CONTA_ID: TIntegerField
      FieldName = 'VENDEDOR_CONTA_ID'
    end
    object sdsFornecedorTRANSPORTADORA_CONTA_ID: TIntegerField
      FieldName = 'TRANSPORTADORA_CONTA_ID'
    end
    object sdsFornecedorATELIER_CONTA_ID: TIntegerField
      FieldName = 'ATELIER_CONTA_ID'
    end
    object sdsFornecedorRETEM_ISS: TStringField
      FieldName = 'RETEM_ISS'
      FixedChar = True
      Size = 1
    end
    object sdsFornecedorRETEM_CSLL: TStringField
      FieldName = 'RETEM_CSLL'
      FixedChar = True
      Size = 1
    end
    object sdsFornecedorRETEM_PISCOFINS: TStringField
      FieldName = 'RETEM_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object sdsFornecedorRETEM_INSS: TStringField
      FieldName = 'RETEM_INSS'
      FixedChar = True
      Size = 1
    end
    object sdsFornecedorEMAIL_COMPRAS: TStringField
      FieldName = 'EMAIL_COMPRAS'
      Size = 200
    end
    object sdsFornecedorCONTATO_COMPRAS: TStringField
      FieldName = 'CONTATO_COMPRAS'
      Size = 60
    end
    object sdsFornecedorORGAO_PUBLICO: TStringField
      FieldName = 'ORGAO_PUBLICO'
      FixedChar = True
      Size = 1
    end
    object sdsFornecedorID_NATUREZA: TIntegerField
      FieldName = 'ID_NATUREZA'
    end
    object sdsFornecedorDIMINUIR_RETENCAO: TStringField
      FieldName = 'DIMINUIR_RETENCAO'
      FixedChar = True
      Size = 1
    end
    object sdsFornecedorPERC_REDUCAO_INSS: TFloatField
      FieldName = 'PERC_REDUCAO_INSS'
    end
    object sdsFornecedorUSA_TRANSFICMS: TStringField
      FieldName = 'USA_TRANSFICMS'
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
    object sdsFornecedorCOD_ANT: TIntegerField
      FieldName = 'COD_ANT'
    end
    object sdsFornecedorID_EDI: TIntegerField
      FieldName = 'ID_EDI'
    end
    object sdsFornecedorPAI_NOME: TStringField
      FieldName = 'PAI_NOME'
      Size = 60
    end
    object sdsFornecedorMAE_NOME: TStringField
      FieldName = 'MAE_NOME'
      Size = 60
    end
    object sdsFornecedorCOBRAR_TAXA_BANCO: TStringField
      FieldName = 'COBRAR_TAXA_BANCO'
      FixedChar = True
      Size = 1
    end
    object sdsFornecedorVLR_LIMITE_CREDITO: TFloatField
      FieldName = 'VLR_LIMITE_CREDITO'
    end
    object sdsFornecedorINSC_EST_ST: TStringField
      FieldName = 'INSC_EST_ST'
      Size = 14
    end
    object sdsFornecedorUF_ST: TStringField
      FieldName = 'UF_ST'
      Size = 2
    end
    object sdsFornecedorINSC_SUFRAMA: TStringField
      FieldName = 'INSC_SUFRAMA'
      Size = 9
    end
    object sdsFornecedorCOD_ALFA: TStringField
      FieldName = 'COD_ALFA'
      Size = 15
    end
    object sdsFornecedorTP_PREPOSTO: TStringField
      FieldName = 'TP_PREPOSTO'
      Size = 1
    end
    object sdsFornecedorTP_EXPORTACAO: TStringField
      FieldName = 'TP_EXPORTACAO'
      Size = 1
    end
    object sdsFornecedorCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object sdsFornecedorDTPEDIDO: TDateField
      FieldName = 'DTPEDIDO'
    end
    object sdsFornecedorDTNOTA: TDateField
      FieldName = 'DTNOTA'
    end
    object sdsFornecedorPERC_DESC_SUFRAMA: TFloatField
      FieldName = 'PERC_DESC_SUFRAMA'
    end
    object sdsFornecedorVLR_LIMITE_COMPRA: TFloatField
      FieldName = 'VLR_LIMITE_COMPRA'
    end
    object sdsFornecedorID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
    end
    object sdsFornecedorTP_FUNCIONARIO: TStringField
      FieldName = 'TP_FUNCIONARIO'
      FixedChar = True
      Size = 1
    end
  end
  object dspFornecedor: TDataSetProvider
    DataSet = sdsFornecedor
    Left = 168
    Top = 280
  end
  object cdsFornecedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFornecedor'
    Left = 232
    Top = 280
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
    object cdsFornecedorTIPO_ICMS: TStringField
      FieldName = 'TIPO_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsFornecedorID_TAB_PRECO: TIntegerField
      FieldName = 'ID_TAB_PRECO'
    end
    object cdsFornecedorTP_ATELIER: TStringField
      FieldName = 'TP_ATELIER'
      Size = 1
    end
    object cdsFornecedorTIPO_COMISSAO: TStringField
      FieldName = 'TIPO_COMISSAO'
      FixedChar = True
      Size = 1
    end
    object cdsFornecedorPERC_COMISSAO_VEND: TFloatField
      FieldName = 'PERC_COMISSAO_VEND'
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
    object cdsFornecedorNOME_CONTATO: TStringField
      FieldName = 'NOME_CONTATO'
      Size = 40
    end
    object cdsFornecedorINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Size = 15
    end
    object cdsFornecedorDT_CONTRATO_INI: TDateField
      FieldName = 'DT_CONTRATO_INI'
    end
    object cdsFornecedorDT_CONTRATO_FIN: TDateField
      FieldName = 'DT_CONTRATO_FIN'
    end
    object cdsFornecedorID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
    end
    object cdsFornecedorID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object cdsFornecedorVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
    end
    object cdsFornecedorCLIENTE_CONTA_ID: TIntegerField
      FieldName = 'CLIENTE_CONTA_ID'
    end
    object cdsFornecedorFORNECEDOR_CONTA_ID: TIntegerField
      FieldName = 'FORNECEDOR_CONTA_ID'
    end
    object cdsFornecedorVENDEDOR_CONTA_ID: TIntegerField
      FieldName = 'VENDEDOR_CONTA_ID'
    end
    object cdsFornecedorTRANSPORTADORA_CONTA_ID: TIntegerField
      FieldName = 'TRANSPORTADORA_CONTA_ID'
    end
    object cdsFornecedorATELIER_CONTA_ID: TIntegerField
      FieldName = 'ATELIER_CONTA_ID'
    end
    object cdsFornecedorRETEM_ISS: TStringField
      FieldName = 'RETEM_ISS'
      FixedChar = True
      Size = 1
    end
    object cdsFornecedorRETEM_CSLL: TStringField
      FieldName = 'RETEM_CSLL'
      FixedChar = True
      Size = 1
    end
    object cdsFornecedorRETEM_PISCOFINS: TStringField
      FieldName = 'RETEM_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object cdsFornecedorRETEM_INSS: TStringField
      FieldName = 'RETEM_INSS'
      FixedChar = True
      Size = 1
    end
    object cdsFornecedorEMAIL_COMPRAS: TStringField
      FieldName = 'EMAIL_COMPRAS'
      Size = 200
    end
    object cdsFornecedorCONTATO_COMPRAS: TStringField
      FieldName = 'CONTATO_COMPRAS'
      Size = 60
    end
    object cdsFornecedorORGAO_PUBLICO: TStringField
      FieldName = 'ORGAO_PUBLICO'
      FixedChar = True
      Size = 1
    end
    object cdsFornecedorID_NATUREZA: TIntegerField
      FieldName = 'ID_NATUREZA'
    end
    object cdsFornecedorDIMINUIR_RETENCAO: TStringField
      FieldName = 'DIMINUIR_RETENCAO'
      FixedChar = True
      Size = 1
    end
    object cdsFornecedorPERC_REDUCAO_INSS: TFloatField
      FieldName = 'PERC_REDUCAO_INSS'
    end
    object cdsFornecedorUSA_TRANSFICMS: TStringField
      FieldName = 'USA_TRANSFICMS'
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
    object cdsFornecedorCOD_ANT: TIntegerField
      FieldName = 'COD_ANT'
    end
    object cdsFornecedorID_EDI: TIntegerField
      FieldName = 'ID_EDI'
    end
    object cdsFornecedorPAI_NOME: TStringField
      FieldName = 'PAI_NOME'
      Size = 60
    end
    object cdsFornecedorMAE_NOME: TStringField
      FieldName = 'MAE_NOME'
      Size = 60
    end
    object cdsFornecedorCOBRAR_TAXA_BANCO: TStringField
      FieldName = 'COBRAR_TAXA_BANCO'
      FixedChar = True
      Size = 1
    end
    object cdsFornecedorVLR_LIMITE_CREDITO: TFloatField
      FieldName = 'VLR_LIMITE_CREDITO'
    end
    object cdsFornecedorINSC_EST_ST: TStringField
      FieldName = 'INSC_EST_ST'
      Size = 14
    end
    object cdsFornecedorUF_ST: TStringField
      FieldName = 'UF_ST'
      Size = 2
    end
    object cdsFornecedorINSC_SUFRAMA: TStringField
      FieldName = 'INSC_SUFRAMA'
      Size = 9
    end
    object cdsFornecedorCOD_ALFA: TStringField
      FieldName = 'COD_ALFA'
      Size = 15
    end
    object cdsFornecedorTP_PREPOSTO: TStringField
      FieldName = 'TP_PREPOSTO'
      Size = 1
    end
    object cdsFornecedorTP_EXPORTACAO: TStringField
      FieldName = 'TP_EXPORTACAO'
      Size = 1
    end
    object cdsFornecedorCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object cdsFornecedorDTPEDIDO: TDateField
      FieldName = 'DTPEDIDO'
    end
    object cdsFornecedorDTNOTA: TDateField
      FieldName = 'DTNOTA'
    end
    object cdsFornecedorPERC_DESC_SUFRAMA: TFloatField
      FieldName = 'PERC_DESC_SUFRAMA'
    end
    object cdsFornecedorVLR_LIMITE_COMPRA: TFloatField
      FieldName = 'VLR_LIMITE_COMPRA'
    end
    object cdsFornecedorID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
    end
    object cdsFornecedorTP_FUNCIONARIO: TStringField
      FieldName = 'TP_FUNCIONARIO'
      FixedChar = True
      Size = 1
    end
  end
  object dsFornecedor: TDataSource
    DataSet = cdsFornecedor
    Left = 304
    Top = 280
  end
  object sdsTab_CSTICMS: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_CSTICMS'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 128
    Top = 546
    object sdsTab_CSTICMSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsTab_CSTICMSPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
    end
    object sdsTab_CSTICMSHISTORICO: TMemoField
      FieldName = 'HISTORICO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsTab_CSTICMSTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sdsTab_CSTICMSNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object sdsTab_CSTICMSCOD_CST: TStringField
      FieldName = 'COD_CST'
      Size = 3
    end
  end
  object dspTab_CSTICMS: TDataSetProvider
    DataSet = sdsTab_CSTICMS
    Left = 160
    Top = 546
  end
  object cdsTab_CSTICMS: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTab_CSTICMS'
    Left = 200
    Top = 546
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
  end
  object dsTab_CSTICMS: TDataSource
    DataSet = cdsTab_CSTICMS
    Left = 240
    Top = 546
  end
  object qUnidade: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'UNIDADE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM UNIDADE'
      'WHERE '#9'UNIDADE = :UNIDADE')
    SQLConnection = DmDatabase.scoDados
    Left = 840
    Top = 152
    object qUnidadeUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 6
    end
    object qUnidadeCONVERSOR: TFloatField
      FieldName = 'CONVERSOR'
    end
    object qUnidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
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
    Left = 840
    Top = 208
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
    Left = 120
    Top = 602
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
  end
  object dspNCM: TDataSetProvider
    DataSet = sdsNCM
    Left = 152
    Top = 602
  end
  object cdsNCM: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspNCM'
    OnNewRecord = cdsNCMNewRecord
    Left = 192
    Top = 602
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
  end
  object dsNCM: TDataSource
    DataSet = cdsNCM
    Left = 232
    Top = 602
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
    Left = 128
    Top = 490
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
    Left = 160
    Top = 490
  end
  object cdsUnidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUnidade'
    Left = 200
    Top = 490
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
    Left = 240
    Top = 490
  end
  object qFilial2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM FILIAL'
      '')
    SQLConnection = DmDatabase.scoDados
    Left = 848
    Top = 272
    object qFilial2ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qFilial2NOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qFilial2NOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object qFilial2CNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
  end
  object sdsTransp: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PESSOA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 96
    Top = 336
    object sdsTranspCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsTranspNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsTranspFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object sdsTranspENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object sdsTranspCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object sdsTranspNUM_END: TStringField
      FieldName = 'NUM_END'
    end
    object sdsTranspBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sdsTranspID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object sdsTranspCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sdsTranspUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object sdsTranspCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sdsTranspDDDFONE1: TIntegerField
      FieldName = 'DDDFONE1'
    end
    object sdsTranspTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 15
    end
    object sdsTranspDDDFONE2: TIntegerField
      FieldName = 'DDDFONE2'
    end
    object sdsTranspTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object sdsTranspDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object sdsTranspFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object sdsTranspPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object sdsTranspCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object sdsTranspINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object sdsTranspENDERECO_ENT: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 40
    end
    object sdsTranspCOMPLEMENTO_END_ENT: TStringField
      FieldName = 'COMPLEMENTO_END_ENT'
      Size = 60
    end
    object sdsTranspNUM_END_ENT: TStringField
      FieldName = 'NUM_END_ENT'
    end
    object sdsTranspBAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 26
    end
    object sdsTranspID_CIDADE_ENT: TIntegerField
      FieldName = 'ID_CIDADE_ENT'
    end
    object sdsTranspCIDADE_ENT: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 40
    end
    object sdsTranspCEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 10
    end
    object sdsTranspUF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object sdsTranspPESSOA_ENT: TStringField
      FieldName = 'PESSOA_ENT'
      FixedChar = True
      Size = 1
    end
    object sdsTranspCNPJ_CPF_ENT: TStringField
      FieldName = 'CNPJ_CPF_ENT'
      Size = 18
    end
    object sdsTranspINSC_EST_ENT: TStringField
      FieldName = 'INSC_EST_ENT'
      Size = 18
    end
    object sdsTranspENDERECO_PGTO: TStringField
      FieldName = 'ENDERECO_PGTO'
      Size = 40
    end
    object sdsTranspCOMPLEMENTO_END_PGTO: TStringField
      FieldName = 'COMPLEMENTO_END_PGTO'
      Size = 60
    end
    object sdsTranspNUM_END_PGTO: TStringField
      FieldName = 'NUM_END_PGTO'
    end
    object sdsTranspBAIRRO_PGTO: TStringField
      FieldName = 'BAIRRO_PGTO'
      Size = 26
    end
    object sdsTranspID_CIDADE_PGTO: TIntegerField
      FieldName = 'ID_CIDADE_PGTO'
    end
    object sdsTranspCIDADE_PGTO: TStringField
      FieldName = 'CIDADE_PGTO'
      Size = 40
    end
    object sdsTranspCEP_PGTO: TStringField
      FieldName = 'CEP_PGTO'
      Size = 10
    end
    object sdsTranspUF_PGTO: TStringField
      FieldName = 'UF_PGTO'
      FixedChar = True
      Size = 2
    end
    object sdsTranspUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsTranspDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object sdsTranspHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
    end
    object sdsTranspOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsTranspCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      Size = 10
    end
    object sdsTranspRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object sdsTranspID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object sdsTranspID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object sdsTranspID_CONTABOLETO: TIntegerField
      FieldName = 'ID_CONTABOLETO'
    end
    object sdsTranspID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object sdsTranspID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object sdsTranspID_REDESPACHO: TIntegerField
      FieldName = 'ID_REDESPACHO'
    end
    object sdsTranspID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
    end
    object sdsTranspID_REGIME_TRIB: TIntegerField
      FieldName = 'ID_REGIME_TRIB'
    end
    object sdsTranspPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object sdsTranspDDD_ENT: TIntegerField
      FieldName = 'DDD_ENT'
    end
    object sdsTranspFONE_ENT: TStringField
      FieldName = 'FONE_ENT'
      Size = 15
    end
    object sdsTranspDDD_PGTO: TIntegerField
      FieldName = 'DDD_PGTO'
    end
    object sdsTranspFONE_PGTO: TStringField
      FieldName = 'FONE_PGTO'
      Size = 15
    end
    object sdsTranspINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsTranspHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 200
    end
    object sdsTranspTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      FixedChar = True
      Size = 1
    end
    object sdsTranspNOME_ENTREGA: TStringField
      FieldName = 'NOME_ENTREGA'
      Size = 60
    end
    object sdsTranspEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 250
    end
    object sdsTranspEMAIL_PGTO: TStringField
      FieldName = 'EMAIL_PGTO'
      Size = 150
    end
    object sdsTranspEMAIL_NFE2: TStringField
      FieldName = 'EMAIL_NFE2'
      Size = 150
    end
    object sdsTranspPESSOA_PGTO: TStringField
      FieldName = 'PESSOA_PGTO'
      FixedChar = True
      Size = 1
    end
    object sdsTranspCNPJ_CPG_PGTO: TStringField
      FieldName = 'CNPJ_CPG_PGTO'
      Size = 18
    end
    object sdsTranspINSC_EST_PGTO: TStringField
      FieldName = 'INSC_EST_PGTO'
      Size = 18
    end
    object sdsTranspUF_PLACA: TStringField
      FieldName = 'UF_PLACA'
      Size = 2
    end
    object sdsTranspPLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object sdsTranspTP_CLIENTE: TStringField
      FieldName = 'TP_CLIENTE'
      Size = 1
    end
    object sdsTranspTP_FORNECEDOR: TStringField
      FieldName = 'TP_FORNECEDOR'
      Size = 1
    end
    object sdsTranspTP_TRANSPORTADORA: TStringField
      FieldName = 'TP_TRANSPORTADORA'
      Size = 1
    end
    object sdsTranspTP_VENDEDOR: TStringField
      FieldName = 'TP_VENDEDOR'
      Size = 1
    end
    object sdsTranspTIPO_ICMS: TStringField
      FieldName = 'TIPO_ICMS'
      FixedChar = True
      Size = 1
    end
    object sdsTranspID_TAB_PRECO: TIntegerField
      FieldName = 'ID_TAB_PRECO'
    end
    object sdsTranspTP_ATELIER: TStringField
      FieldName = 'TP_ATELIER'
      Size = 1
    end
    object sdsTranspTP_ALUNO: TStringField
      FieldName = 'TP_ALUNO'
      FixedChar = True
      Size = 1
    end
    object sdsTranspTIPO_COMISSAO: TStringField
      FieldName = 'TIPO_COMISSAO'
      FixedChar = True
      Size = 1
    end
    object sdsTranspTIPO_CONSUMIDOR: TSmallintField
      FieldName = 'TIPO_CONSUMIDOR'
    end
    object sdsTranspTIPO_CONTRIBUINTE: TSmallintField
      FieldName = 'TIPO_CONTRIBUINTE'
    end
    object sdsTranspPERC_COMISSAO_VEND: TFloatField
      FieldName = 'PERC_COMISSAO_VEND'
    end
    object sdsTranspNOME_CONTATO: TStringField
      FieldName = 'NOME_CONTATO'
      Size = 40
    end
    object sdsTranspINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Size = 15
    end
    object sdsTranspDT_CONTRATO_INI: TDateField
      FieldName = 'DT_CONTRATO_INI'
    end
    object sdsTranspDT_CONTRATO_FIN: TDateField
      FieldName = 'DT_CONTRATO_FIN'
    end
    object sdsTranspID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
    end
    object sdsTranspID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object sdsTranspVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
    end
    object sdsTranspCLIENTE_CONTA_ID: TIntegerField
      FieldName = 'CLIENTE_CONTA_ID'
    end
    object sdsTranspFORNECEDOR_CONTA_ID: TIntegerField
      FieldName = 'FORNECEDOR_CONTA_ID'
    end
    object sdsTranspVENDEDOR_CONTA_ID: TIntegerField
      FieldName = 'VENDEDOR_CONTA_ID'
    end
    object sdsTranspTRANSPORTADORA_CONTA_ID: TIntegerField
      FieldName = 'TRANSPORTADORA_CONTA_ID'
    end
    object sdsTranspATELIER_CONTA_ID: TIntegerField
      FieldName = 'ATELIER_CONTA_ID'
    end
    object sdsTranspRETEM_ISS: TStringField
      FieldName = 'RETEM_ISS'
      FixedChar = True
      Size = 1
    end
    object sdsTranspRETEM_CSLL: TStringField
      FieldName = 'RETEM_CSLL'
      FixedChar = True
      Size = 1
    end
    object sdsTranspRETEM_PISCOFINS: TStringField
      FieldName = 'RETEM_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object sdsTranspRETEM_INSS: TStringField
      FieldName = 'RETEM_INSS'
      FixedChar = True
      Size = 1
    end
    object sdsTranspEMAIL_COMPRAS: TStringField
      FieldName = 'EMAIL_COMPRAS'
      Size = 200
    end
    object sdsTranspCONTATO_COMPRAS: TStringField
      FieldName = 'CONTATO_COMPRAS'
      Size = 60
    end
    object sdsTranspORGAO_PUBLICO: TStringField
      FieldName = 'ORGAO_PUBLICO'
      FixedChar = True
      Size = 1
    end
    object sdsTranspID_NATUREZA: TIntegerField
      FieldName = 'ID_NATUREZA'
    end
    object sdsTranspDIMINUIR_RETENCAO: TStringField
      FieldName = 'DIMINUIR_RETENCAO'
      FixedChar = True
      Size = 1
    end
    object sdsTranspPERC_REDUCAO_INSS: TFloatField
      FieldName = 'PERC_REDUCAO_INSS'
    end
    object sdsTranspUSA_TRANSFICMS: TStringField
      FieldName = 'USA_TRANSFICMS'
      FixedChar = True
      Size = 1
    end
    object sdsTranspCLIENTE_ESTOQUE: TStringField
      FieldName = 'CLIENTE_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object sdsTranspUSA_TAMANHO_AGRUPADO_NFE: TStringField
      FieldName = 'USA_TAMANHO_AGRUPADO_NFE'
      FixedChar = True
      Size = 1
    end
    object sdsTranspCOD_ANT: TIntegerField
      FieldName = 'COD_ANT'
    end
    object sdsTranspID_EDI: TIntegerField
      FieldName = 'ID_EDI'
    end
    object sdsTranspPAI_NOME: TStringField
      FieldName = 'PAI_NOME'
      Size = 60
    end
    object sdsTranspMAE_NOME: TStringField
      FieldName = 'MAE_NOME'
      Size = 60
    end
    object sdsTranspCOBRAR_TAXA_BANCO: TStringField
      FieldName = 'COBRAR_TAXA_BANCO'
      FixedChar = True
      Size = 1
    end
    object sdsTranspVLR_LIMITE_CREDITO: TFloatField
      FieldName = 'VLR_LIMITE_CREDITO'
    end
    object sdsTranspINSC_EST_ST: TStringField
      FieldName = 'INSC_EST_ST'
      Size = 14
    end
    object sdsTranspUF_ST: TStringField
      FieldName = 'UF_ST'
      Size = 2
    end
    object sdsTranspINSC_SUFRAMA: TStringField
      FieldName = 'INSC_SUFRAMA'
      Size = 9
    end
    object sdsTranspCOD_ALFA: TStringField
      FieldName = 'COD_ALFA'
      Size = 15
    end
    object sdsTranspTP_PREPOSTO: TStringField
      FieldName = 'TP_PREPOSTO'
      Size = 1
    end
    object sdsTranspTP_EXPORTACAO: TStringField
      FieldName = 'TP_EXPORTACAO'
      Size = 1
    end
    object sdsTranspCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object sdsTranspDTPEDIDO: TDateField
      FieldName = 'DTPEDIDO'
    end
    object sdsTranspDTNOTA: TDateField
      FieldName = 'DTNOTA'
    end
    object sdsTranspPERC_DESC_SUFRAMA: TFloatField
      FieldName = 'PERC_DESC_SUFRAMA'
    end
    object sdsTranspVLR_LIMITE_COMPRA: TFloatField
      FieldName = 'VLR_LIMITE_COMPRA'
    end
    object sdsTranspID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
    end
    object sdsTranspTP_FUNCIONARIO: TStringField
      FieldName = 'TP_FUNCIONARIO'
      FixedChar = True
      Size = 1
    end
  end
  object dspTransp: TDataSetProvider
    DataSet = sdsTransp
    Left = 168
    Top = 336
  end
  object cdsTransp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTransp'
    Left = 232
    Top = 336
    object cdsTranspCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsTranspNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsTranspFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsTranspENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsTranspCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object cdsTranspNUM_END: TStringField
      FieldName = 'NUM_END'
    end
    object cdsTranspBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsTranspID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsTranspCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsTranspUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsTranspCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsTranspDDDFONE1: TIntegerField
      FieldName = 'DDDFONE1'
    end
    object cdsTranspTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 15
    end
    object cdsTranspDDDFONE2: TIntegerField
      FieldName = 'DDDFONE2'
    end
    object cdsTranspTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object cdsTranspDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object cdsTranspFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cdsTranspPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsTranspCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsTranspINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object cdsTranspENDERECO_ENT: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 40
    end
    object cdsTranspCOMPLEMENTO_END_ENT: TStringField
      FieldName = 'COMPLEMENTO_END_ENT'
      Size = 60
    end
    object cdsTranspNUM_END_ENT: TStringField
      FieldName = 'NUM_END_ENT'
    end
    object cdsTranspBAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 26
    end
    object cdsTranspID_CIDADE_ENT: TIntegerField
      FieldName = 'ID_CIDADE_ENT'
    end
    object cdsTranspCIDADE_ENT: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 40
    end
    object cdsTranspCEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 10
    end
    object cdsTranspUF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object cdsTranspPESSOA_ENT: TStringField
      FieldName = 'PESSOA_ENT'
      FixedChar = True
      Size = 1
    end
    object cdsTranspCNPJ_CPF_ENT: TStringField
      FieldName = 'CNPJ_CPF_ENT'
      Size = 18
    end
    object cdsTranspINSC_EST_ENT: TStringField
      FieldName = 'INSC_EST_ENT'
      Size = 18
    end
    object cdsTranspENDERECO_PGTO: TStringField
      FieldName = 'ENDERECO_PGTO'
      Size = 40
    end
    object cdsTranspCOMPLEMENTO_END_PGTO: TStringField
      FieldName = 'COMPLEMENTO_END_PGTO'
      Size = 60
    end
    object cdsTranspNUM_END_PGTO: TStringField
      FieldName = 'NUM_END_PGTO'
    end
    object cdsTranspBAIRRO_PGTO: TStringField
      FieldName = 'BAIRRO_PGTO'
      Size = 26
    end
    object cdsTranspID_CIDADE_PGTO: TIntegerField
      FieldName = 'ID_CIDADE_PGTO'
    end
    object cdsTranspCIDADE_PGTO: TStringField
      FieldName = 'CIDADE_PGTO'
      Size = 40
    end
    object cdsTranspCEP_PGTO: TStringField
      FieldName = 'CEP_PGTO'
      Size = 10
    end
    object cdsTranspUF_PGTO: TStringField
      FieldName = 'UF_PGTO'
      FixedChar = True
      Size = 2
    end
    object cdsTranspUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsTranspDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object cdsTranspHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
    end
    object cdsTranspOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsTranspCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      Size = 10
    end
    object cdsTranspRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object cdsTranspID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsTranspID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsTranspID_CONTABOLETO: TIntegerField
      FieldName = 'ID_CONTABOLETO'
    end
    object cdsTranspID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsTranspID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object cdsTranspID_REDESPACHO: TIntegerField
      FieldName = 'ID_REDESPACHO'
    end
    object cdsTranspID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
    end
    object cdsTranspID_REGIME_TRIB: TIntegerField
      FieldName = 'ID_REGIME_TRIB'
    end
    object cdsTranspPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsTranspDDD_ENT: TIntegerField
      FieldName = 'DDD_ENT'
    end
    object cdsTranspFONE_ENT: TStringField
      FieldName = 'FONE_ENT'
      Size = 15
    end
    object cdsTranspDDD_PGTO: TIntegerField
      FieldName = 'DDD_PGTO'
    end
    object cdsTranspFONE_PGTO: TStringField
      FieldName = 'FONE_PGTO'
      Size = 15
    end
    object cdsTranspINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsTranspHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 200
    end
    object cdsTranspTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      FixedChar = True
      Size = 1
    end
    object cdsTranspNOME_ENTREGA: TStringField
      FieldName = 'NOME_ENTREGA'
      Size = 60
    end
    object cdsTranspEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 250
    end
    object cdsTranspEMAIL_PGTO: TStringField
      FieldName = 'EMAIL_PGTO'
      Size = 150
    end
    object cdsTranspEMAIL_NFE2: TStringField
      FieldName = 'EMAIL_NFE2'
      Size = 150
    end
    object cdsTranspPESSOA_PGTO: TStringField
      FieldName = 'PESSOA_PGTO'
      FixedChar = True
      Size = 1
    end
    object cdsTranspCNPJ_CPG_PGTO: TStringField
      FieldName = 'CNPJ_CPG_PGTO'
      Size = 18
    end
    object cdsTranspINSC_EST_PGTO: TStringField
      FieldName = 'INSC_EST_PGTO'
      Size = 18
    end
    object cdsTranspUF_PLACA: TStringField
      FieldName = 'UF_PLACA'
      Size = 2
    end
    object cdsTranspPLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object cdsTranspTP_CLIENTE: TStringField
      FieldName = 'TP_CLIENTE'
      Size = 1
    end
    object cdsTranspTP_FORNECEDOR: TStringField
      FieldName = 'TP_FORNECEDOR'
      Size = 1
    end
    object cdsTranspTP_TRANSPORTADORA: TStringField
      FieldName = 'TP_TRANSPORTADORA'
      Size = 1
    end
    object cdsTranspTP_VENDEDOR: TStringField
      FieldName = 'TP_VENDEDOR'
      Size = 1
    end
    object cdsTranspTIPO_ICMS: TStringField
      FieldName = 'TIPO_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsTranspID_TAB_PRECO: TIntegerField
      FieldName = 'ID_TAB_PRECO'
    end
    object cdsTranspTP_ATELIER: TStringField
      FieldName = 'TP_ATELIER'
      Size = 1
    end
    object cdsTranspTP_ALUNO: TStringField
      FieldName = 'TP_ALUNO'
      FixedChar = True
      Size = 1
    end
    object cdsTranspTIPO_COMISSAO: TStringField
      FieldName = 'TIPO_COMISSAO'
      FixedChar = True
      Size = 1
    end
    object cdsTranspTIPO_CONSUMIDOR: TSmallintField
      FieldName = 'TIPO_CONSUMIDOR'
    end
    object cdsTranspTIPO_CONTRIBUINTE: TSmallintField
      FieldName = 'TIPO_CONTRIBUINTE'
    end
    object cdsTranspPERC_COMISSAO_VEND: TFloatField
      FieldName = 'PERC_COMISSAO_VEND'
    end
    object cdsTranspNOME_CONTATO: TStringField
      FieldName = 'NOME_CONTATO'
      Size = 40
    end
    object cdsTranspINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Size = 15
    end
    object cdsTranspDT_CONTRATO_INI: TDateField
      FieldName = 'DT_CONTRATO_INI'
    end
    object cdsTranspDT_CONTRATO_FIN: TDateField
      FieldName = 'DT_CONTRATO_FIN'
    end
    object cdsTranspID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
    end
    object cdsTranspID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object cdsTranspVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
    end
    object cdsTranspCLIENTE_CONTA_ID: TIntegerField
      FieldName = 'CLIENTE_CONTA_ID'
    end
    object cdsTranspFORNECEDOR_CONTA_ID: TIntegerField
      FieldName = 'FORNECEDOR_CONTA_ID'
    end
    object cdsTranspVENDEDOR_CONTA_ID: TIntegerField
      FieldName = 'VENDEDOR_CONTA_ID'
    end
    object cdsTranspTRANSPORTADORA_CONTA_ID: TIntegerField
      FieldName = 'TRANSPORTADORA_CONTA_ID'
    end
    object cdsTranspATELIER_CONTA_ID: TIntegerField
      FieldName = 'ATELIER_CONTA_ID'
    end
    object cdsTranspRETEM_ISS: TStringField
      FieldName = 'RETEM_ISS'
      FixedChar = True
      Size = 1
    end
    object cdsTranspRETEM_CSLL: TStringField
      FieldName = 'RETEM_CSLL'
      FixedChar = True
      Size = 1
    end
    object cdsTranspRETEM_PISCOFINS: TStringField
      FieldName = 'RETEM_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object cdsTranspRETEM_INSS: TStringField
      FieldName = 'RETEM_INSS'
      FixedChar = True
      Size = 1
    end
    object cdsTranspEMAIL_COMPRAS: TStringField
      FieldName = 'EMAIL_COMPRAS'
      Size = 200
    end
    object cdsTranspCONTATO_COMPRAS: TStringField
      FieldName = 'CONTATO_COMPRAS'
      Size = 60
    end
    object cdsTranspORGAO_PUBLICO: TStringField
      FieldName = 'ORGAO_PUBLICO'
      FixedChar = True
      Size = 1
    end
    object cdsTranspID_NATUREZA: TIntegerField
      FieldName = 'ID_NATUREZA'
    end
    object cdsTranspDIMINUIR_RETENCAO: TStringField
      FieldName = 'DIMINUIR_RETENCAO'
      FixedChar = True
      Size = 1
    end
    object cdsTranspPERC_REDUCAO_INSS: TFloatField
      FieldName = 'PERC_REDUCAO_INSS'
    end
    object cdsTranspUSA_TRANSFICMS: TStringField
      FieldName = 'USA_TRANSFICMS'
      FixedChar = True
      Size = 1
    end
    object cdsTranspCLIENTE_ESTOQUE: TStringField
      FieldName = 'CLIENTE_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsTranspUSA_TAMANHO_AGRUPADO_NFE: TStringField
      FieldName = 'USA_TAMANHO_AGRUPADO_NFE'
      FixedChar = True
      Size = 1
    end
    object cdsTranspCOD_ANT: TIntegerField
      FieldName = 'COD_ANT'
    end
    object cdsTranspID_EDI: TIntegerField
      FieldName = 'ID_EDI'
    end
    object cdsTranspPAI_NOME: TStringField
      FieldName = 'PAI_NOME'
      Size = 60
    end
    object cdsTranspMAE_NOME: TStringField
      FieldName = 'MAE_NOME'
      Size = 60
    end
    object cdsTranspCOBRAR_TAXA_BANCO: TStringField
      FieldName = 'COBRAR_TAXA_BANCO'
      FixedChar = True
      Size = 1
    end
    object cdsTranspVLR_LIMITE_CREDITO: TFloatField
      FieldName = 'VLR_LIMITE_CREDITO'
    end
    object cdsTranspINSC_EST_ST: TStringField
      FieldName = 'INSC_EST_ST'
      Size = 14
    end
    object cdsTranspUF_ST: TStringField
      FieldName = 'UF_ST'
      Size = 2
    end
    object cdsTranspINSC_SUFRAMA: TStringField
      FieldName = 'INSC_SUFRAMA'
      Size = 9
    end
    object cdsTranspCOD_ALFA: TStringField
      FieldName = 'COD_ALFA'
      Size = 15
    end
    object cdsTranspTP_PREPOSTO: TStringField
      FieldName = 'TP_PREPOSTO'
      Size = 1
    end
    object cdsTranspTP_EXPORTACAO: TStringField
      FieldName = 'TP_EXPORTACAO'
      Size = 1
    end
    object cdsTranspCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object cdsTranspDTPEDIDO: TDateField
      FieldName = 'DTPEDIDO'
    end
    object cdsTranspDTNOTA: TDateField
      FieldName = 'DTNOTA'
    end
    object cdsTranspPERC_DESC_SUFRAMA: TFloatField
      FieldName = 'PERC_DESC_SUFRAMA'
    end
    object cdsTranspVLR_LIMITE_COMPRA: TFloatField
      FieldName = 'VLR_LIMITE_COMPRA'
    end
    object cdsTranspID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
    end
    object cdsTranspTP_FUNCIONARIO: TStringField
      FieldName = 'TP_FUNCIONARIO'
      FixedChar = True
      Size = 1
    end
  end
  object dsTransp: TDataSource
    DataSet = cdsTransp
    Left = 304
    Top = 336
  end
  object Tabelas: TDatabase
    AliasName = 'Lotus'
    Connected = True
    DatabaseName = 'Tabelas'
    SessionName = 'Default'
    Left = 976
    Top = 65
  end
  object tCliente: TTable
    DatabaseName = 'Tabelas'
    TableName = 'dbCliente.DB'
    Left = 880
    Top = 328
    object tClienteCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tClienteNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object tClienteEndereco: TStringField
      FieldName = 'Endereco'
      Size = 40
    end
    object tClienteBairro: TStringField
      FieldName = 'Bairro'
      Size = 25
    end
    object tClienteCidade: TStringField
      FieldName = 'Cidade'
      Size = 26
    end
    object tClienteUf: TStringField
      FieldName = 'Uf'
      Size = 2
    end
    object tClienteCep: TStringField
      FieldName = 'Cep'
      Size = 10
    end
    object tClienteTelefone: TStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object tClienteTelefone2: TStringField
      FieldName = 'Telefone2'
      Size = 15
    end
    object tClienteFax: TStringField
      FieldName = 'Fax'
      Size = 15
    end
    object tClientePessoa: TStringField
      FieldName = 'Pessoa'
      Size = 1
    end
    object tClienteCgcCpf: TStringField
      FieldName = 'CgcCpf'
      Size = 18
    end
    object tClienteInscrEst: TStringField
      FieldName = 'InscrEst'
      Size = 18
    end
    object tClienteContato: TStringField
      FieldName = 'Contato'
      Size = 30
    end
    object tClienteObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
      Size = 1
    end
    object tClienteAprovCredito: TStringField
      FieldName = 'AprovCredito'
      Size = 1
    end
    object tClienteTipoAprov: TStringField
      FieldName = 'TipoAprov'
      Size = 1
    end
    object tClienteEndEntrega: TStringField
      FieldName = 'EndEntrega'
      Size = 40
    end
    object tClienteBairroEntrega: TStringField
      FieldName = 'BairroEntrega'
      Size = 26
    end
    object tClienteCidEntrega: TStringField
      FieldName = 'CidEntrega'
      Size = 26
    end
    object tClienteCepEntrega: TStringField
      FieldName = 'CepEntrega'
      Size = 10
    end
    object tClienteUfEntrega: TStringField
      FieldName = 'UfEntrega'
      Size = 2
    end
    object tClienteCgcCpfEntrega: TStringField
      FieldName = 'CgcCpfEntrega'
      Size = 18
    end
    object tClienteInscEntrega: TStringField
      FieldName = 'InscEntrega'
      Size = 18
    end
    object tClienteEndPgto: TStringField
      FieldName = 'EndPgto'
      Size = 40
    end
    object tClienteBairroPgto: TStringField
      FieldName = 'BairroPgto'
      Size = 26
    end
    object tClienteCidPgto: TStringField
      FieldName = 'CidPgto'
      Size = 26
    end
    object tClienteCepPgto: TStringField
      FieldName = 'CepPgto'
      Size = 10
    end
    object tClienteUfPgto: TStringField
      FieldName = 'UfPgto'
      Size = 2
    end
    object tClienteFantasia: TStringField
      FieldName = 'Fantasia'
    end
    object tClienteDtCadastro: TDateField
      FieldName = 'DtCadastro'
    end
    object tClienteCodVendedor: TIntegerField
      FieldName = 'CodVendedor'
    end
    object tClienteObsCtas: TMemoField
      FieldName = 'ObsCtas'
      BlobType = ftMemo
      Size = 1
    end
    object tClienteLojas: TIntegerField
      FieldName = 'Lojas'
    end
    object tClienteSelecionado: TBooleanField
      FieldName = 'Selecionado'
    end
    object tClienteCaixaPostal: TStringField
      FieldName = 'CaixaPostal'
      Size = 10
    end
    object tClienteRg: TStringField
      FieldName = 'Rg'
      Size = 10
    end
    object tClienteCodCidade: TIntegerField
      FieldName = 'CodCidade'
    end
    object tClienteCodCidadeE: TIntegerField
      FieldName = 'CodCidadeE'
    end
    object tClienteCodCidadeP: TIntegerField
      FieldName = 'CodCidadeP'
    end
    object tClienteEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object tClienteNumEnd: TStringField
      FieldName = 'NumEnd'
      Size = 15
    end
    object tClienteNumEndEntrega: TStringField
      FieldName = 'NumEndEntrega'
      Size = 15
    end
    object tClienteEmailNfe: TStringField
      FieldName = 'EmailNfe'
      Size = 50
    end
    object tClienteComplEndereco: TStringField
      FieldName = 'ComplEndereco'
      Size = 50
    end
    object tClienteDtValidadeIPI: TDateField
      FieldName = 'DtValidadeIPI'
    end
    object tClienteCodObsIPI: TIntegerField
      FieldName = 'CodObsIPI'
    end
    object tClienteHomePage: TStringField
      FieldName = 'HomePage'
      Size = 200
    end
    object tClienteComplEnderecoEntrega: TStringField
      FieldName = 'ComplEnderecoEntrega'
      Size = 50
    end
    object tClienteCodSitTribSimples: TIntegerField
      FieldName = 'CodSitTribSimples'
    end
    object tClienteUsaIcmsSimples: TBooleanField
      FieldName = 'UsaIcmsSimples'
    end
    object tClienteDDDFone1: TIntegerField
      FieldName = 'DDDFone1'
    end
    object tClienteDDDFone2: TIntegerField
      FieldName = 'DDDFone2'
    end
    object tClienteDDDFax: TIntegerField
      FieldName = 'DDDFax'
    end
    object tClienteIDPais: TIntegerField
      FieldName = 'IDPais'
    end
    object tClienteEmailNFe2: TStringField
      FieldName = 'EmailNFe2'
      Size = 150
    end
    object tClienteTipo_Consumidor: TIntegerField
      FieldName = 'Tipo_Consumidor'
    end
    object tClienteTIPO_CONTRIBUINTE: TIntegerField
      FieldName = 'TIPO_CONTRIBUINTE'
    end
    object tClientePessoaEntrega: TStringField
      FieldName = 'PessoaEntrega'
      Size = 1
    end
  end
  object tFornecedores: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'DBFORNECEDORES.DB'
    Left = 896
    Top = 368
    object tFornecedoresCodForn: TIntegerField
      FieldName = 'CodForn'
    end
    object tFornecedoresNomeForn: TStringField
      FieldName = 'NomeForn'
      Size = 40
    end
    object tFornecedoresEndForn: TStringField
      FieldName = 'EndForn'
      Size = 40
    end
    object tFornecedoresBairroForn: TStringField
      FieldName = 'BairroForn'
      Size = 30
    end
    object tFornecedoresCidadeForn: TStringField
      FieldName = 'CidadeForn'
      Size = 40
    end
    object tFornecedoresCEPForn: TStringField
      FieldName = 'CEPForn'
      Size = 9
    end
    object tFornecedoresEstadoForn: TStringField
      FieldName = 'EstadoForn'
      Size = 2
    end
    object tFornecedoresTel1Forn: TStringField
      FieldName = 'Tel1Forn'
      Size = 15
    end
    object tFornecedoresTel2Forn: TStringField
      FieldName = 'Tel2Forn'
      Size = 15
    end
    object tFornecedoresFaxForn: TStringField
      FieldName = 'FaxForn'
      Size = 15
    end
    object tFornecedoresCGC: TStringField
      FieldName = 'CGC'
      Size = 18
    end
    object tFornecedoresInsc: TStringField
      FieldName = 'Insc'
    end
    object tFornecedoresContatoForn: TStringField
      FieldName = 'ContatoForn'
      Size = 40
    end
    object tFornecedoresDataCadastroForn: TDateField
      FieldName = 'DataCadastroForn'
    end
    object tFornecedoresObsForn: TMemoField
      FieldName = 'ObsForn'
      BlobType = ftMemo
      Size = 100
    end
    object tFornecedoresRamal: TStringField
      FieldName = 'Ramal'
      Size = 5
    end
    object tFornecedoresEmail: TStringField
      FieldName = 'Email'
      Size = 40
    end
    object tFornecedoresHomePage: TStringField
      FieldName = 'HomePage'
      Size = 50
    end
    object tFornecedoresCodCondPgto: TIntegerField
      FieldName = 'CodCondPgto'
    end
    object tFornecedoresFantasia: TStringField
      FieldName = 'Fantasia'
      Size = 60
    end
    object tFornecedoresFornecedorOutros: TStringField
      FieldName = 'FornecedorOutros'
      Size = 1
    end
    object tFornecedoresCodCidade: TIntegerField
      FieldName = 'CodCidade'
    end
    object tFornecedoresIDPais: TIntegerField
      FieldName = 'IDPais'
    end
    object tFornecedoresDDDFone1: TIntegerField
      FieldName = 'DDDFone1'
    end
    object tFornecedoresDDDFone2: TIntegerField
      FieldName = 'DDDFone2'
    end
    object tFornecedoresDDDFax: TIntegerField
      FieldName = 'DDDFax'
    end
    object tFornecedoresNumEnd: TStringField
      FieldName = 'NumEnd'
      Size = 15
    end
    object tFornecedoresPessoa: TStringField
      FieldName = 'Pessoa'
      Size = 1
    end
    object tFornecedoresTIPO_CONSUMIDOR: TIntegerField
      FieldName = 'TIPO_CONSUMIDOR'
    end
    object tFornecedoresTIPO_CONTRIBUINTE: TIntegerField
      FieldName = 'TIPO_CONTRIBUINTE'
    end
    object tFornecedoresCustoFixo: TBooleanField
      FieldName = 'CustoFixo'
    end
  end
  object tTransportadora: TTable
    DatabaseName = 'Tabelas'
    TableName = 'dbTransp.DB'
    Left = 1048
    Top = 504
    object tTransportadoraCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tTransportadoraNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object tTransportadoraEndereco: TStringField
      FieldName = 'Endereco'
      Size = 40
    end
    object tTransportadoraBairro: TStringField
      FieldName = 'Bairro'
      Size = 25
    end
    object tTransportadoraCidade: TStringField
      FieldName = 'Cidade'
      Size = 26
    end
    object tTransportadoraCep: TStringField
      FieldName = 'Cep'
      Size = 9
    end
    object tTransportadoraUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object tTransportadoraFone: TStringField
      FieldName = 'Fone'
      Size = 15
    end
    object tTransportadoraFax: TStringField
      FieldName = 'Fax'
      Size = 15
    end
    object tTransportadoraCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object tTransportadoraInscricao: TStringField
      FieldName = 'Inscricao'
    end
    object tTransportadoraContato: TStringField
      FieldName = 'Contato'
      Size = 40
    end
    object tTransportadoraObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
      Size = 20
    end
    object tTransportadoraCodCidade: TIntegerField
      FieldName = 'CodCidade'
    end
    object tTransportadoraFantasia: TStringField
      FieldName = 'Fantasia'
      Size = 40
    end
    object tTransportadoraCliente: TBooleanField
      FieldName = 'Cliente'
    end
    object tTransportadoraUFPlaca: TStringField
      FieldName = 'UFPlaca'
      Size = 2
    end
    object tTransportadoraPlaca: TStringField
      FieldName = 'Placa'
      Size = 8
    end
    object tTransportadoraPessoa: TStringField
      FieldName = 'Pessoa'
      Size = 1
    end
    object tTransportadoraEmailNFe: TStringField
      FieldName = 'EmailNFe'
      Size = 250
    end
    object tTransportadoraEmail: TStringField
      FieldName = 'Email'
      Size = 200
    end
    object tTransportadoraHomePage: TStringField
      FieldName = 'HomePage'
      Size = 200
    end
    object tTransportadoraIDPais: TIntegerField
      FieldName = 'IDPais'
    end
  end
  object tProduto: TTable
    DatabaseName = 'Tabelas'
    TableName = 'dbProduto.DB'
    Left = 584
    Top = 480
    object tProdutoCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tProdutoCodGrupo: TIntegerField
      FieldName = 'CodGrupo'
    end
    object tProdutoCodSubGrupo: TIntegerField
      FieldName = 'CodSubGrupo'
    end
    object tProdutoReferencia: TStringField
      FieldName = 'Referencia'
      Size = 8
    end
    object tProdutoNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object tProdutoUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object tProdutoCodClasFiscal: TStringField
      FieldName = 'CodClasFiscal'
      Size = 12
    end
    object tProdutoCodSitTrib: TIntegerField
      FieldName = 'CodSitTrib'
    end
    object tProdutoLancaGrade: TBooleanField
      FieldName = 'LancaGrade'
    end
    object tProdutoCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tProdutoQParTalao: TFloatField
      FieldName = 'QParTalao'
    end
    object tProdutoPesoLiquido: TFloatField
      FieldName = 'PesoLiquido'
    end
    object tProdutoPesoBruto: TFloatField
      FieldName = 'PesoBruto'
    end
    object tProdutoInativo: TBooleanField
      FieldName = 'Inativo'
    end
    object tProdutoAliqIcms: TFloatField
      FieldName = 'AliqIcms'
    end
    object tProdutoAliqIPI: TFloatField
      FieldName = 'AliqIPI'
    end
    object tProdutoNomeExp: TStringField
      FieldName = 'NomeExp'
      Size = 45
    end
    object tProdutoDescMaterial: TStringField
      FieldName = 'DescMaterial'
      Size = 10
    end
    object tProdutoReferencia2: TStringField
      FieldName = 'Referencia2'
      Size = 8
    end
    object tProdutoVlrAtelier: TFloatField
      FieldName = 'VlrAtelier'
    end
    object tProdutoNomeModelo: TStringField
      FieldName = 'NomeModelo'
    end
    object tProdutoFotoJpeg: TBlobField
      FieldName = 'FotoJpeg'
      BlobType = ftParadoxOle
      Size = 1
    end
    object tProdutoObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
      Size = 1
    end
    object tProdutoEndEtiq: TStringField
      FieldName = 'EndEtiq'
      Size = 60
    end
    object tProdutoLancaCor: TBooleanField
      FieldName = 'LancaCor'
    end
  end
  object tCidade: TTable
    DatabaseName = 'Tabelas'
    TableName = 'dbCidade.DB'
    Left = 944
    Top = 136
    object tCidadeCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tCidadeNome: TStringField
      FieldName = 'Nome'
      Size = 26
    end
    object tCidadeEstado: TStringField
      FieldName = 'Estado'
      Size = 2
    end
    object tCidadePrefixo: TStringField
      FieldName = 'Prefixo'
      Size = 3
    end
    object tCidadeCep: TStringField
      FieldName = 'Cep'
      Size = 9
    end
    object tCidadeCodMunicipio: TStringField
      FieldName = 'CodMunicipio'
      Size = 7
    end
  end
  object tPais: TTable
    DatabaseName = 'Tabelas'
    TableName = 'dbPais.DB'
    Left = 1000
    Top = 136
    object tPaisID: TIntegerField
      FieldName = 'ID'
    end
    object tPaisPais: TStringField
      FieldName = 'Pais'
      Size = 60
    end
    object tPaisCodPais: TStringField
      FieldName = 'CodPais'
      Size = 5
    end
  end
  object tCondPgto: TTable
    DatabaseName = 'Tabelas'
    TableName = 'DBCONDPGTO.DB'
    Left = 1056
    Top = 136
    object tCondPgtoCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tCondPgtoNome: TStringField
      FieldName = 'Nome'
      Size = 30
    end
    object tCondPgtoPrazoVista: TStringField
      FieldName = 'PrazoVista'
      Size = 1
    end
    object tCondPgtoCusto: TFloatField
      FieldName = 'Custo'
    end
    object tCondPgtoEntrada: TBooleanField
      FieldName = 'Entrada'
    end
  end
  object qCSTIPI: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'COD_IPI'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM TAB_CSTIPI'
      'WHERE COD_IPI = :COD_IPI'
      '')
    SQLConnection = DmDatabase.scoDados
    Left = 400
    Top = 24
    object qCSTIPIID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qCSTIPICOD_IPI: TStringField
      FieldName = 'COD_IPI'
      Size = 2
    end
    object qCSTIPINOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object qCSTIPIGERAR_IPI: TStringField
      FieldName = 'GERAR_IPI'
      FixedChar = True
      Size = 1
    end
  end
  object tClasFiscal: TTable
    DatabaseName = 'Tabelas'
    TableName = 'dbClasFiscal.DB'
    Left = 968
    Top = 184
    object tClasFiscalClasFiscal: TStringField
      FieldName = 'ClasFiscal'
      Size = 12
    end
    object tClasFiscalTipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object tClasFiscalNome: TStringField
      FieldName = 'Nome'
      Size = 30
    end
    object tClasFiscalVmaInterno: TFloatField
      FieldName = 'VmaInterno'
    end
    object tClasFiscalVmaInterestadual: TFloatField
      FieldName = 'VmaInterestadual'
    end
  end
  object sdsCondPgto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CONDPGTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 456
    Top = 80
    object sdsCondPgtoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCondPgtoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object sdsCondPgtoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sdsCondPgtoIMPRIMIR_NFSE: TStringField
      FieldName = 'IMPRIMIR_NFSE'
      FixedChar = True
      Size = 1
    end
    object sdsCondPgtoTIPO_CONDICAO: TStringField
      FieldName = 'TIPO_CONDICAO'
      FixedChar = True
      Size = 1
    end
    object sdsCondPgtoQTD_PARCELA: TIntegerField
      FieldName = 'QTD_PARCELA'
    end
    object sdsCondPgtoENTRADA: TStringField
      FieldName = 'ENTRADA'
      FixedChar = True
      Size = 1
    end
  end
  object dspCondPgto: TDataSetProvider
    DataSet = sdsCondPgto
    Left = 528
    Top = 80
  end
  object cdsCondPgto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCondPgto'
    Left = 592
    Top = 80
    object cdsCondPgtoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCondPgtoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsCondPgtoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsCondPgtoIMPRIMIR_NFSE: TStringField
      FieldName = 'IMPRIMIR_NFSE'
      FixedChar = True
      Size = 1
    end
    object cdsCondPgtoTIPO_CONDICAO: TStringField
      FieldName = 'TIPO_CONDICAO'
      FixedChar = True
      Size = 1
    end
    object cdsCondPgtoQTD_PARCELA: TIntegerField
      FieldName = 'QTD_PARCELA'
    end
    object cdsCondPgtoENTRADA: TStringField
      FieldName = 'ENTRADA'
      FixedChar = True
      Size = 1
    end
  end
  object dsCondPgto: TDataSource
    DataSet = cdsCondPgto
    Left = 664
    Top = 80
  end
  object tCor: TTable
    DatabaseName = 'Tabelas'
    TableName = 'Dbcor.DB'
    Left = 776
    Top = 344
    object tCorCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tCorNome: TStringField
      FieldName = 'Nome'
      Size = 25
    end
    object tCorPantone: TStringField
      FieldName = 'Pantone'
      Size = 15
    end
  end
  object dsProdutoPdx: TDataSource
    DataSet = tProduto
    Left = 624
    Top = 480
  end
  object tProdutoCor: TTable
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'CodProduto'
    MasterFields = 'Codigo'
    MasterSource = dsProdutoPdx
    TableName = 'dbProdutoCor.DB'
    Left = 728
    Top = 416
    object tProdutoCorCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object tProdutoCorCodCor: TIntegerField
      FieldName = 'CodCor'
    end
  end
  object tVendedor: TTable
    DatabaseName = 'Tabelas'
    TableName = 'dbVendedor.DB'
    Left = 1088
    Top = 600
    object tVendedorCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tVendedorNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object tVendedorPercComissao: TFloatField
      FieldName = 'PercComissao'
    end
    object tVendedorEndereco: TStringField
      FieldName = 'Endereco'
      Size = 40
    end
    object tVendedorBairro: TStringField
      FieldName = 'Bairro'
      Size = 30
    end
    object tVendedorCidade: TStringField
      FieldName = 'Cidade'
      Size = 26
    end
    object tVendedorEstado: TStringField
      FieldName = 'Estado'
      Size = 2
    end
    object tVendedorCep: TStringField
      FieldName = 'Cep'
      Size = 9
    end
    object tVendedorFone: TStringField
      FieldName = 'Fone'
      Size = 15
    end
    object tVendedorFax: TStringField
      FieldName = 'Fax'
      Size = 15
    end
    object tVendedorPessoa: TStringField
      FieldName = 'Pessoa'
      Size = 1
    end
    object tVendedorCgcCpf: TStringField
      FieldName = 'CgcCpf'
      Size = 18
    end
    object tVendedorInscEst: TStringField
      FieldName = 'InscEst'
    end
    object tVendedorRegioes: TIntegerField
      FieldName = 'Regioes'
    end
    object tVendedorTipoComissao: TStringField
      FieldName = 'TipoComissao'
      Size = 1
    end
    object tVendedorPercImpRenda: TFloatField
      FieldName = 'PercImpRenda'
    end
    object tVendedorSelecionado: TBooleanField
      FieldName = 'Selecionado'
    end
    object tVendedorContato: TStringField
      FieldName = 'Contato'
      Size = 50
    end
  end
  object dsCondPgtoPdx: TDataSource
    DataSet = tCondPgto
    Left = 1080
    Top = 136
  end
  object tCondPgtoItem: TTable
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'Codigo;Item'
    MasterFields = 'Codigo'
    MasterSource = dsCondPgtoPdx
    TableName = 'dbCondPgtoItem.DB'
    Left = 1056
    Top = 200
    object tCondPgtoItemCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tCondPgtoItemItem: TIntegerField
      FieldName = 'Item'
    end
    object tCondPgtoItemQtdDias: TSmallintField
      FieldName = 'QtdDias'
    end
  end
  object sdsCondPgto_Dia: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CONDPGTO_DIA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 464
    Top = 136
    object sdsCondPgto_DiaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCondPgto_DiaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsCondPgto_DiaQTDDIAS: TIntegerField
      FieldName = 'QTDDIAS'
    end
  end
  object dspCondPgto_Dia: TDataSetProvider
    DataSet = sdsCondPgto_Dia
    Left = 536
    Top = 136
  end
  object cdsCondPgto_Dia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCondPgto_Dia'
    Left = 600
    Top = 136
    object cdsCondPgto_DiaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCondPgto_DiaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsCondPgto_DiaQTDDIAS: TIntegerField
      FieldName = 'QTDDIAS'
    end
  end
  object dsCondPgto_Dia: TDataSource
    DataSet = cdsCondPgto_Dia
    Left = 672
    Top = 136
  end
  object qEstoqueMatMov: TQuery
    DatabaseName = 'Tabelas'
    Filter = 'qtd2 > 0'
    SQL.Strings = (
      
        'select e.codmaterial, e.codcor, sum(e.qtd2) qtd2, mat.unidade, m' +
        'at.icms, mat.ipi, MAT.NOME'
      'from dbestoquematmov.db e'
      'inner join dbmaterial.db mat'
      'on e.codmaterial = mat.codigo'
      
        'group by e.codmaterial, e.codcor, mat.unidade, mat.icms, mat.ipi' +
        ', MAT.NOME')
    Left = 952
    Top = 224
    object qEstoqueMatMovcodmaterial: TIntegerField
      FieldName = 'codmaterial'
    end
    object qEstoqueMatMovcodcor: TIntegerField
      FieldName = 'codcor'
    end
    object qEstoqueMatMovqtd2: TFloatField
      FieldName = 'qtd2'
      DisplayFormat = '0.000##'
    end
    object qEstoqueMatMovunidade: TStringField
      FieldName = 'unidade'
      Size = 3
    end
    object qEstoqueMatMovicms: TFloatField
      FieldName = 'icms'
    end
    object qEstoqueMatMovipi: TFloatField
      FieldName = 'ipi'
    end
    object qEstoqueMatMovNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object qVlrUnitario: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT MAX(DTMOV) DTMOV, VLRUNITARIO , CODMATERIAL, CODCOR'
      'FROM DBESTOQUEMATMOV.DB'
      'WHERE ES = '#39'E'#39
      'GROUP BY  VLRUNITARIO,  CODMATERIAL, CODCOR'
      'ORDER BY DTMOV')
    Left = 920
    Top = 272
    object qVlrUnitarioDTMOV: TDateField
      FieldName = 'DTMOV'
    end
    object qVlrUnitarioVLRUNITARIO: TFloatField
      FieldName = 'VLRUNITARIO'
    end
    object qVlrUnitarioCODMATERIAL: TIntegerField
      FieldName = 'CODMATERIAL'
    end
    object qVlrUnitarioCODCOR: TIntegerField
      FieldName = 'CODCOR'
    end
  end
  object sdsEstoque_Mov: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM ESTOQUE_MOV'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 128
    Top = 450
    object sdsEstoque_MovID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsEstoque_MovFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsEstoque_MovID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsEstoque_MovID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsEstoque_MovDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object sdsEstoque_MovTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object sdsEstoque_MovTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 5
    end
    object sdsEstoque_MovNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object sdsEstoque_MovID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object sdsEstoque_MovVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsEstoque_MovQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsEstoque_MovPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object sdsEstoque_MovPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object sdsEstoque_MovVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object sdsEstoque_MovUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object sdsEstoque_MovQTD2: TFloatField
      FieldName = 'QTD2'
    end
    object sdsEstoque_MovTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsEstoque_MovPERC_TRIBUTACAO: TFloatField
      FieldName = 'PERC_TRIBUTACAO'
    end
    object sdsEstoque_MovVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object sdsEstoque_MovID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object sdsEstoque_MovID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
    end
    object sdsEstoque_MovSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object sdsEstoque_MovUNIDADE_ORIG: TStringField
      FieldName = 'UNIDADE_ORIG'
      Size = 6
    end
    object sdsEstoque_MovVLR_UNITARIOORIG: TFloatField
      FieldName = 'VLR_UNITARIOORIG'
    end
    object sdsEstoque_MovQTD_ORIG: TFloatField
      FieldName = 'QTD_ORIG'
    end
    object sdsEstoque_MovVLR_DESCONTOORIG: TFloatField
      FieldName = 'VLR_DESCONTOORIG'
    end
    object sdsEstoque_MovMERCADO: TStringField
      FieldName = 'MERCADO'
      Size = 1
    end
    object sdsEstoque_MovID_CENTROCUSTO: TIntegerField
      FieldName = 'ID_CENTROCUSTO'
    end
    object sdsEstoque_MovQTD_ENT: TFloatField
      FieldName = 'QTD_ENT'
    end
    object sdsEstoque_MovQTD_SAI: TFloatField
      FieldName = 'QTD_SAI'
    end
    object sdsEstoque_MovTESTE: TStringField
      FieldName = 'TESTE'
      Size = 10
    end
    object sdsEstoque_MovID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
    end
    object sdsEstoque_MovID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
    end
    object sdsEstoque_MovGERAR_CUSTO: TStringField
      FieldName = 'GERAR_CUSTO'
      FixedChar = True
      Size = 1
    end
  end
  object dspEstoque_Mov: TDataSetProvider
    DataSet = sdsEstoque_Mov
    Left = 160
    Top = 450
  end
  object cdsEstoque_Mov: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspEstoque_Mov'
    Left = 200
    Top = 450
    object cdsEstoque_MovID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsEstoque_MovFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsEstoque_MovID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsEstoque_MovID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsEstoque_MovDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object cdsEstoque_MovTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object cdsEstoque_MovTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 5
    end
    object cdsEstoque_MovNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsEstoque_MovID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsEstoque_MovVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsEstoque_MovQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsEstoque_MovPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object cdsEstoque_MovPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsEstoque_MovVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object cdsEstoque_MovUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object cdsEstoque_MovQTD2: TFloatField
      FieldName = 'QTD2'
    end
    object cdsEstoque_MovTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsEstoque_MovPERC_TRIBUTACAO: TFloatField
      FieldName = 'PERC_TRIBUTACAO'
    end
    object cdsEstoque_MovVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object cdsEstoque_MovID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsEstoque_MovID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
    end
    object cdsEstoque_MovSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsEstoque_MovUNIDADE_ORIG: TStringField
      FieldName = 'UNIDADE_ORIG'
      Size = 6
    end
    object cdsEstoque_MovVLR_UNITARIOORIG: TFloatField
      FieldName = 'VLR_UNITARIOORIG'
    end
    object cdsEstoque_MovQTD_ORIG: TFloatField
      FieldName = 'QTD_ORIG'
    end
    object cdsEstoque_MovVLR_DESCONTOORIG: TFloatField
      FieldName = 'VLR_DESCONTOORIG'
    end
    object cdsEstoque_MovMERCADO: TStringField
      FieldName = 'MERCADO'
      Size = 1
    end
    object cdsEstoque_MovID_CENTROCUSTO: TIntegerField
      FieldName = 'ID_CENTROCUSTO'
    end
    object cdsEstoque_MovQTD_ENT: TFloatField
      FieldName = 'QTD_ENT'
    end
    object cdsEstoque_MovQTD_SAI: TFloatField
      FieldName = 'QTD_SAI'
    end
    object cdsEstoque_MovTESTE: TStringField
      FieldName = 'TESTE'
      Size = 10
    end
    object cdsEstoque_MovID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
    end
    object cdsEstoque_MovID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
    end
    object cdsEstoque_MovGERAR_CUSTO: TStringField
      FieldName = 'GERAR_CUSTO'
      FixedChar = True
      Size = 1
    end
  end
  object tProdutoMat: TTable
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'CodProduto;CodCorProd;Item'
    MasterFields = 'CodProduto;CodCor'
    MasterSource = dsProdutoCor
    TableName = 'dbProdutoMat.DB'
    Left = 728
    Top = 472
    object tProdutoMatCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object tProdutoMatCodCorProd: TIntegerField
      FieldName = 'CodCorProd'
    end
    object tProdutoMatItem: TIntegerField
      FieldName = 'Item'
    end
    object tProdutoMatCodMaterial: TIntegerField
      FieldName = 'CodMaterial'
    end
    object tProdutoMatCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tProdutoMatCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object tProdutoMatQtd: TFloatField
      FieldName = 'Qtd'
    end
    object tProdutoMatVlrUnitario: TFloatField
      FieldName = 'VlrUnitario'
    end
    object tProdutoMatVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object tProdutoMatImpTalao: TStringField
      FieldName = 'ImpTalao'
      Size = 1
    end
    object tProdutoMatUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object tProdutoMatConsumo: TStringField
      FieldName = 'Consumo'
      Size = 1
    end
  end
  object dsProdutoCor: TDataSource
    DataSet = tProdutoCor
    Left = 776
    Top = 416
  end
  object dsProdutoMat: TDataSource
    DataSet = tProdutoMat
    Left = 784
    Top = 472
  end
  object tProdutoConsumo: TTable
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'CodProduto;CodCorProduto;ItemMaterial;CodGrade'
    MasterFields = 'CodProduto;CodCorProd;Item'
    MasterSource = dsProdutoMat
    TableName = 'dbProdutoConsumo.db'
    Left = 728
    Top = 528
    object tProdutoConsumoCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object tProdutoConsumoCodCorProduto: TIntegerField
      FieldName = 'CodCorProduto'
    end
    object tProdutoConsumoItemMaterial: TIntegerField
      FieldName = 'ItemMaterial'
    end
    object tProdutoConsumoCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tProdutoConsumoConsumo: TFloatField
      FieldName = 'Consumo'
    end
  end
  object dsProdutoConsumo: TDataSource
    DataSet = tProdutoConsumo
    Left = 792
    Top = 528
  end
  object tProdutoConsumoItem: TTable
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'CodProduto;CodCorProduto;ItemMaterial;CodGrade;Posicao'
    MasterFields = 'CodProduto;CodCorProduto;ItemMaterial;CodGrade'
    MasterSource = dsProdutoConsumo
    TableName = 'dbProdutoConsumoItem.db'
    Left = 728
    Top = 576
    object tProdutoConsumoItemCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object tProdutoConsumoItemCodCorProduto: TIntegerField
      FieldName = 'CodCorProduto'
    end
    object tProdutoConsumoItemItemMaterial: TIntegerField
      FieldName = 'ItemMaterial'
    end
    object tProdutoConsumoItemCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tProdutoConsumoItemPosicao: TIntegerField
      FieldName = 'Posicao'
    end
    object tProdutoConsumoItemConsumo: TFloatField
      FieldName = 'Consumo'
    end
  end
  object dsProdutoConsumoItem: TDataSource
    DataSet = tProdutoConsumoItem
    Left = 792
    Top = 576
  end
  object tMaterial: TTable
    DatabaseName = 'Tabelas'
    TableName = 'dbMaterial.DB'
    Left = 1016
    Top = 360
    object tMaterialCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tMaterialNome: TStringField
      FieldName = 'Nome'
      Size = 60
    end
    object tMaterialGrupo: TIntegerField
      FieldName = 'Grupo'
    end
    object tMaterialSubGrupo: TIntegerField
      FieldName = 'SubGrupo'
    end
    object tMaterialUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object tMaterialICMS: TFloatField
      FieldName = 'ICMS'
    end
    object tMaterialIPI: TFloatField
      FieldName = 'IPI'
    end
    object tMaterialPrCusto: TFloatField
      FieldName = 'PrCusto'
    end
    object tMaterialFornecedor: TIntegerField
      FieldName = 'Fornecedor'
    end
    object tMaterialCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tMaterialEstMinimo: TFloatField
      FieldName = 'EstMinimo'
    end
    object tMaterialInativo: TBooleanField
      FieldName = 'Inativo'
    end
    object tMaterialLancaCor: TBooleanField
      FieldName = 'LancaCor'
    end
    object tMaterialPrecoCor: TBooleanField
      FieldName = 'PrecoCor'
    end
    object tMaterialLancaGrade: TBooleanField
      FieldName = 'LancaGrade'
    end
    object tMaterialPrecoGrade: TBooleanField
      FieldName = 'PrecoGrade'
    end
    object tMaterialTipoMat: TStringField
      FieldName = 'TipoMat'
      Size = 1
    end
    object tMaterialTipoSolado: TStringField
      FieldName = 'TipoSolado'
      Size = 1
    end
    object tMaterialMaterialOutros: TStringField
      FieldName = 'MaterialOutros'
      Size = 1
    end
    object tMaterialDtAlteracao: TDateField
      FieldName = 'DtAlteracao'
    end
    object tMaterialCalcMaterial: TBooleanField
      FieldName = 'CalcMaterial'
    end
    object tMaterialPre: TBooleanField
      FieldName = 'Pre'
    end
    object tMaterialPosseMat: TStringField
      FieldName = 'PosseMat'
      Size = 1
    end
    object tMaterialCodEstoqueMat: TIntegerField
      FieldName = 'CodEstoqueMat'
    end
    object tMaterialEstoque: TBooleanField
      FieldName = 'Estoque'
    end
    object tMaterialCodClasFiscal: TStringField
      FieldName = 'CodClasFiscal'
      Size = 12
    end
    object tMaterialCodSitTrib: TIntegerField
      FieldName = 'CodSitTrib'
    end
    object tMaterialComplemento: TStringField
      FieldName = 'Complemento'
      Size = 40
    end
    object tMaterialOrigemProd: TStringField
      FieldName = 'OrigemProd'
      Size = 1
    end
    object tMaterialNCM_Ex: TStringField
      FieldName = 'NCM_Ex'
      Size = 2
    end
    object tMaterialID_EnqIPI: TIntegerField
      FieldName = 'ID_EnqIPI'
    end
    object tMateriallkNomeGrupo: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeGrupo'
      LookupDataSet = tGrupo
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'Grupo'
      Size = 60
      Lookup = True
    end
    object tMaterialImpGradeTalaoAuxiliar: TBooleanField
      FieldName = 'ImpGradeTalaoAuxiliar'
    end
    object tMaterialImpTalaoAuxiliar: TBooleanField
      FieldName = 'ImpTalaoAuxiliar'
    end
    object tMaterialImpCalcMaterial: TBooleanField
      FieldName = 'ImpCalcMaterial'
    end
    object tMaterialTipoReg: TStringField
      FieldName = 'TipoReg'
      Size = 1
    end
    object tMaterialGeraOC: TBooleanField
      FieldName = 'GeraOC'
    end
    object tMaterialUsuario: TStringField
      FieldName = 'Usuario'
      Size = 15
    end
    object tMaterialCorreto: TBooleanField
      FieldName = 'Correto'
    end
    object tMaterialNomeSemAcento: TStringField
      FieldName = 'NomeSemAcento'
      Size = 60
    end
    object tMaterialNum_FCI: TStringField
      FieldName = 'Num_FCI'
      Size = 40
    end
    object tMaterialPerc_Usado_FCI: TFloatField
      FieldName = 'Perc_Usado_FCI'
    end
    object tMaterialDtAlteracao_Preco: TDateField
      FieldName = 'DtAlteracao_Preco'
    end
  end
  object dsMaterialPdx: TDataSource
    DataSet = tMaterial
    Left = 1072
    Top = 360
  end
  object tMaterialCor: TTable
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'CodMaterial;Item'
    MasterFields = 'Codigo'
    MasterSource = dsMaterialPdx
    TableName = 'dbMaterialCor.DB'
    Left = 1024
    Top = 424
    object tMaterialCorCodMaterial: TIntegerField
      FieldName = 'CodMaterial'
    end
    object tMaterialCorItem: TIntegerField
      FieldName = 'Item'
    end
    object tMaterialCorCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object tMaterialCorPrCusto: TFloatField
      FieldName = 'PrCusto'
    end
    object tMaterialCorDtAlteracao: TDateField
      FieldName = 'DtAlteracao'
    end
    object tMaterialCorlkNomeCor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCor'
      LookupDataSet = tCor
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCor'
      Size = 60
      Lookup = True
    end
  end
  object dsMaterialCorPdx: TDataSource
    DataSet = tMaterialCor
    Left = 1072
    Top = 424
  end
  object sdsCombinacao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM COMBINACAO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 96
    Top = 118
    object sdsCombinacaoID: TFMTBCDField
      FieldName = 'ID'
      Required = True
      Precision = 15
      Size = 0
    end
    object sdsCombinacaoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsCombinacaoITEM_COMBINACAO: TIntegerField
      FieldName = 'ITEM_COMBINACAO'
    end
    object sdsCombinacaoID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsCombinacaoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsCombinacaoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object sdsCombinacaoID_ANT: TIntegerField
      FieldName = 'ID_ANT'
    end
  end
  object dspCombinacao: TDataSetProvider
    DataSet = sdsCombinacao
    Left = 168
    Top = 118
  end
  object cdsCombinacao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCombinacao'
    Left = 232
    Top = 118
    object cdsCombinacaoID: TFMTBCDField
      FieldName = 'ID'
      Required = True
      Precision = 15
      Size = 0
    end
    object cdsCombinacaoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsCombinacaoITEM_COMBINACAO: TIntegerField
      FieldName = 'ITEM_COMBINACAO'
    end
    object cdsCombinacaoID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsCombinacaoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsCombinacaoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsCombinacaoID_ANT: TIntegerField
      FieldName = 'ID_ANT'
    end
  end
  object dsCombinacao: TDataSource
    DataSet = cdsCombinacao
    Left = 304
    Top = 118
  end
  object sdsProduto_Comb: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO_COMB'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 96
    Top = 53
    object sdsProduto_CombID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProduto_CombITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsProduto_CombID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsProduto_CombNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsProduto_CombINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_CombTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_CombPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object sdsProduto_CombPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object sdsProduto_CombPERC_MARGEMLUCRO: TFloatField
      FieldName = 'PERC_MARGEMLUCRO'
    end
    object sdsProduto_CombID_COR_COMBINACAO: TIntegerField
      FieldName = 'ID_COR_COMBINACAO'
    end
    object sdsProduto_CombFOTO: TStringField
      FieldName = 'FOTO'
      Size = 200
    end
    object sdsProduto_CombOBSMATERIAL: TStringField
      FieldName = 'OBSMATERIAL'
      Size = 100
    end
    object sdsProduto_CombNOME_FOTO: TStringField
      FieldName = 'NOME_FOTO'
      Size = 100
    end
  end
  object dspProduto_Comb: TDataSetProvider
    DataSet = sdsProduto_Comb
    Left = 168
    Top = 53
  end
  object cdsProduto_Comb: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspProduto_Comb'
    Left = 232
    Top = 53
    object cdsProduto_CombID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProduto_CombITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsProduto_CombID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsProduto_CombNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsProduto_CombINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_CombTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_CombPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsProduto_CombPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object cdsProduto_CombPERC_MARGEMLUCRO: TFloatField
      FieldName = 'PERC_MARGEMLUCRO'
    end
    object cdsProduto_CombID_COR_COMBINACAO: TIntegerField
      FieldName = 'ID_COR_COMBINACAO'
    end
    object cdsProduto_CombFOTO: TStringField
      FieldName = 'FOTO'
      Size = 200
    end
    object cdsProduto_CombOBSMATERIAL: TStringField
      FieldName = 'OBSMATERIAL'
      Size = 100
    end
    object cdsProduto_CombNOME_FOTO: TStringField
      FieldName = 'NOME_FOTO'
      Size = 100
    end
  end
  object dsProduto_Comb: TDataSource
    DataSet = cdsProduto_Comb
    Left = 304
    Top = 53
  end
  object tGrupo: TTable
    DatabaseName = 'Tabelas'
    TableName = 'dbGrupo.DB'
    Left = 1016
    Top = 304
    object tGrupoCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tGrupoNome: TStringField
      FieldName = 'Nome'
      Size = 30
    end
  end
  object tTamanhos: TTable
    DatabaseName = 'Tabelas'
    TableName = 'dbGradeItem.DB'
    Left = 920
    Top = 440
    object tTamanhosCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tTamanhosPosicao: TIntegerField
      FieldName = 'Posicao'
    end
    object tTamanhosTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 3
    end
    object tTamanhosMarcarTam: TStringField
      FieldName = 'MarcarTam'
      Size = 3
    end
  end
  object sdsTamanho: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAMANHO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 96
    Top = 384
    object sdsTamanhoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsTamanhoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
  end
  object dspTamanho: TDataSetProvider
    DataSet = sdsTamanho
    Left = 168
    Top = 384
  end
  object cdsTamanho: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTamanho'
    Left = 232
    Top = 384
    object cdsTamanhoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTamanhoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
  end
  object dsTamanho: TDataSource
    DataSet = cdsTamanho
    Left = 304
    Top = 384
  end
  object tGrade: TTable
    DatabaseName = 'Tabelas'
    TableName = 'dbGrade.DB'
    Left = 936
    Top = 520
    object tGradeCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tGradeNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object tGradeCodLetra: TStringField
      FieldName = 'CodLetra'
      Size = 2
    end
    object tGradeLargura: TStringField
      FieldName = 'Largura'
      Size = 1
    end
    object tGradeTipoDig: TStringField
      FieldName = 'TipoDig'
      Size = 1
    end
    object tGradeQtdParTotal: TIntegerField
      FieldName = 'QtdParTotal'
    end
  end
  object dsGradepdx: TDataSource
    DataSet = tGrade
    Left = 968
    Top = 520
  end
  object tGradeItem: TTable
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'CodGrade'
    MasterFields = 'Codigo'
    MasterSource = dsGradepdx
    TableName = 'dbGradeItem.DB'
    Left = 936
    Top = 576
    object tGradeItemCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tGradeItemPosicao: TIntegerField
      FieldName = 'Posicao'
    end
    object tGradeItemTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 3
    end
    object tGradeItemMarcarTam: TStringField
      FieldName = 'MarcarTam'
      Size = 3
    end
    object tGradeItemQtdPar: TIntegerField
      FieldName = 'QtdPar'
    end
    object tGradeItemTamDebrum: TStringField
      FieldName = 'TamDebrum'
      Size = 3
    end
    object tGradeItemTamBiqueira: TStringField
      FieldName = 'TamBiqueira'
      Size = 3
    end
    object tGradeItemTamPalmInterna: TStringField
      FieldName = 'TamPalmInterna'
      Size = 3
    end
    object tGradeItemTamForro: TStringField
      FieldName = 'TamForro'
      Size = 3
    end
    object tGradeItemTamAvesso: TStringField
      FieldName = 'TamAvesso'
      Size = 3
    end
    object tGradeItemTamCapaPlataforma: TStringField
      FieldName = 'TamCapaPlataforma'
      Size = 3
    end
    object tGradeItemTamCapaSalto: TStringField
      FieldName = 'TamCapaSalto'
      Size = 3
    end
    object tGradeItemTamPre: TStringField
      FieldName = 'TamPre'
      Size = 3
    end
    object tGradeItemTamTaloneira: TStringField
      FieldName = 'TamTaloneira'
      Size = 3
    end
    object tGradeItemTamEspuma: TStringField
      FieldName = 'TamEspuma'
      Size = 3
    end
  end
  object sdsGrade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM GRADE'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 456
    Top = 192
    object sdsGradeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsGradeNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsGradePOSSUI_MARCACAO: TStringField
      FieldName = 'POSSUI_MARCACAO'
      FixedChar = True
      Size = 1
    end
    object sdsGradeQTD_PARES_TOTAL: TIntegerField
      FieldName = 'QTD_PARES_TOTAL'
    end
    object sdsGradeTIPO_DIG: TStringField
      FieldName = 'TIPO_DIG'
      FixedChar = True
      Size = 1
    end
    object sdsGradeLARGURA: TStringField
      FieldName = 'LARGURA'
      Size = 1
    end
    object sdsGradeCOD_LETRA: TStringField
      FieldName = 'COD_LETRA'
      Size = 2
    end
  end
  object dspGrade: TDataSetProvider
    DataSet = sdsGrade
    Left = 528
    Top = 192
  end
  object cdsGrade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGrade'
    Left = 592
    Top = 192
    object cdsGradeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsGradeNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsGradePOSSUI_MARCACAO: TStringField
      FieldName = 'POSSUI_MARCACAO'
      FixedChar = True
      Size = 1
    end
    object cdsGradeQTD_PARES_TOTAL: TIntegerField
      FieldName = 'QTD_PARES_TOTAL'
    end
    object cdsGradeTIPO_DIG: TStringField
      FieldName = 'TIPO_DIG'
      FixedChar = True
      Size = 1
    end
    object cdsGradesdsGrade_Itens: TDataSetField
      FieldName = 'sdsGrade_Itens'
    end
    object cdsGradeLARGURA: TStringField
      FieldName = 'LARGURA'
      Size = 1
    end
    object cdsGradeCOD_LETRA: TStringField
      FieldName = 'COD_LETRA'
      Size = 2
    end
  end
  object dsGrade: TDataSource
    DataSet = cdsGrade
    Left = 664
    Top = 192
  end
  object sdsGrade_Itens: TSQLDataSet
    CommandText = 'SELECT *'#13#10'FROM GRADE_ITENS'#13#10'WHERE ID = :ID'
    DataSource = dsGrade_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 456
    Top = 256
    object sdsGrade_ItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsGrade_ItensTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
    object sdsGrade_ItensTAMANHO_USA: TStringField
      FieldName = 'TAMANHO_USA'
      Size = 10
    end
    object sdsGrade_ItensTAMANHO_EUR: TStringField
      FieldName = 'TAMANHO_EUR'
      Size = 10
    end
    object sdsGrade_ItensQTDPAR: TIntegerField
      FieldName = 'QTDPAR'
    end
    object sdsGrade_ItensTAM_DEBRUM: TStringField
      FieldName = 'TAM_DEBRUM'
      Size = 10
    end
    object sdsGrade_ItensTAM_BIQUEIRA: TStringField
      FieldName = 'TAM_BIQUEIRA'
      Size = 10
    end
    object sdsGrade_ItensTAM_PALM_INTERNA: TStringField
      FieldName = 'TAM_PALM_INTERNA'
      Size = 10
    end
    object sdsGrade_ItensTAM_FORRO: TStringField
      FieldName = 'TAM_FORRO'
      Size = 10
    end
    object sdsGrade_ItensTAM_AVESSO: TStringField
      FieldName = 'TAM_AVESSO'
      Size = 10
    end
    object sdsGrade_ItensTAM_CAPA_PLATAFORMA: TStringField
      FieldName = 'TAM_CAPA_PLATAFORMA'
      Size = 10
    end
    object sdsGrade_ItensTAM_CAPA_SALTO: TStringField
      FieldName = 'TAM_CAPA_SALTO'
      Size = 10
    end
    object sdsGrade_ItensTAM_PRE: TStringField
      FieldName = 'TAM_PRE'
      Size = 10
    end
    object sdsGrade_ItensTAM_TALONEIRA: TStringField
      FieldName = 'TAM_TALONEIRA'
      Size = 10
    end
    object sdsGrade_ItensTAM_ESPUMA: TStringField
      FieldName = 'TAM_ESPUMA'
      Size = 10
    end
  end
  object dspGrade_Itens: TDataSetProvider
    DataSet = sdsGrade_Itens
    Left = 528
    Top = 256
  end
  object cdsGrade_Itens: TClientDataSet
    Aggregates = <>
    DataSetField = cdsGradesdsGrade_Itens
    Params = <>
    Left = 584
    Top = 256
    object cdsGrade_ItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsGrade_ItensTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
    object cdsGrade_ItensTAMANHO_USA: TStringField
      FieldName = 'TAMANHO_USA'
      Size = 10
    end
    object cdsGrade_ItensTAMANHO_EUR: TStringField
      FieldName = 'TAMANHO_EUR'
      Size = 10
    end
    object cdsGrade_ItensQTDPAR: TIntegerField
      FieldName = 'QTDPAR'
    end
    object cdsGrade_ItensTAM_DEBRUM: TStringField
      FieldName = 'TAM_DEBRUM'
      Size = 10
    end
    object cdsGrade_ItensTAM_BIQUEIRA: TStringField
      FieldName = 'TAM_BIQUEIRA'
      Size = 10
    end
    object cdsGrade_ItensTAM_PALM_INTERNA: TStringField
      FieldName = 'TAM_PALM_INTERNA'
      Size = 10
    end
    object cdsGrade_ItensTAM_FORRO: TStringField
      FieldName = 'TAM_FORRO'
      Size = 10
    end
    object cdsGrade_ItensTAM_AVESSO: TStringField
      FieldName = 'TAM_AVESSO'
      Size = 10
    end
    object cdsGrade_ItensTAM_CAPA_PLATAFORMA: TStringField
      FieldName = 'TAM_CAPA_PLATAFORMA'
      Size = 10
    end
    object cdsGrade_ItensTAM_CAPA_SALTO: TStringField
      FieldName = 'TAM_CAPA_SALTO'
      Size = 10
    end
    object cdsGrade_ItensTAM_PRE: TStringField
      FieldName = 'TAM_PRE'
      Size = 10
    end
    object cdsGrade_ItensTAM_TALONEIRA: TStringField
      FieldName = 'TAM_TALONEIRA'
      Size = 10
    end
    object cdsGrade_ItensTAM_ESPUMA: TStringField
      FieldName = 'TAM_ESPUMA'
      Size = 10
    end
  end
  object dsGrade_Itens: TDataSource
    DataSet = cdsGrade_Itens
    Left = 664
    Top = 256
  end
  object dsGrade_Mestre: TDataSource
    DataSet = sdsGrade
    Left = 416
    Top = 232
  end
  object sdsCONVERSOR_COD_ANT: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CONVERSOR_COD_ANT'#13#10'WHERE ID_PESSOA = :ID_PESSOA'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PESSOA'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 440
    Top = 304
    object sdsCONVERSOR_COD_ANTID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCONVERSOR_COD_ANTID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object sdsCONVERSOR_COD_ANTCOD_ANT: TIntegerField
      FieldName = 'COD_ANT'
    end
    object sdsCONVERSOR_COD_ANTTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object dspCONVERSOR_COD_ANT: TDataSetProvider
    DataSet = sdsCONVERSOR_COD_ANT
    Left = 512
    Top = 304
  end
  object cdsCONVERSOR_COD_ANT: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCONVERSOR_COD_ANT'
    Left = 576
    Top = 304
    object cdsCONVERSOR_COD_ANTID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCONVERSOR_COD_ANTID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsCONVERSOR_COD_ANTCOD_ANT: TIntegerField
      FieldName = 'COD_ANT'
    end
    object cdsCONVERSOR_COD_ANTTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object dsCONVERSOR_COD_ANT: TDataSource
    DataSet = cdsCONVERSOR_COD_ANT
    Left = 648
    Top = 304
  end
  object sdsCor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM COR'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 312
    Top = 462
    object sdsCorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCorNOME: TStringField
      FieldName = 'NOME'
      Size = 45
    end
    object sdsCorPANTONE: TStringField
      FieldName = 'PANTONE'
      Size = 15
    end
  end
  object dspCor: TDataSetProvider
    DataSet = sdsCor
    Left = 384
    Top = 462
  end
  object cdscor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCor'
    Left = 448
    Top = 462
    object cdscorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdscorNOME: TStringField
      FieldName = 'NOME'
      Size = 45
    end
    object cdscorPANTONE: TStringField
      FieldName = 'PANTONE'
      Size = 15
    end
  end
  object dsCor: TDataSource
    DataSet = cdscor
    Left = 520
    Top = 462
  end
  object sdsProduto_Tam: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO_TAM'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 424
    Top = 357
    object sdsProduto_TamID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProduto_TamTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
    object sdsProduto_TamPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object sdsProduto_TamPESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
    end
    object sdsProduto_TamTAM_MATRIZ: TStringField
      FieldName = 'TAM_MATRIZ'
      Size = 10
    end
  end
  object dspProduto_Tam: TDataSetProvider
    DataSet = sdsProduto_Tam
    Left = 496
    Top = 357
  end
  object cdsProduto_Tam: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspProduto_Tam'
    Left = 560
    Top = 357
    object cdsProduto_TamID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProduto_TamTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
    object cdsProduto_TamPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object cdsProduto_TamPESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
    end
    object cdsProduto_TamTAM_MATRIZ: TStringField
      FieldName = 'TAM_MATRIZ'
      Size = 10
    end
  end
  object dsProduto_Tam: TDataSource
    DataSet = cdsProduto_Tam
    Left = 632
    Top = 357
  end
  object sdsProduto_Calcado: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO_CALCADO'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 424
    Top = 405
    object sdsProduto_CalcadoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProduto_CalcadoTIPO_MAT: TStringField
      FieldName = 'TIPO_MAT'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_CalcadoTIPO_SOLADO: TStringField
      FieldName = 'TIPO_SOLADO'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_CalcadoCALCULA_MAT: TStringField
      FieldName = 'CALCULA_MAT'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_CalcadoPRE: TStringField
      FieldName = 'PRE'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_CalcadoIMP_GRADE_AUX: TStringField
      FieldName = 'IMP_GRADE_AUX'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_CalcadoIMP_TALAO_AUX: TStringField
      FieldName = 'IMP_TALAO_AUX'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_CalcadoIMP_CALC_MAT: TStringField
      FieldName = 'IMP_CALC_MAT'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_CalcadoGERAR_OC: TStringField
      FieldName = 'GERAR_OC'
      FixedChar = True
      Size = 1
    end
  end
  object dspProduto_Calcado: TDataSetProvider
    DataSet = sdsProduto_Calcado
    Left = 496
    Top = 405
  end
  object cdsProduto_Calcado: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspProduto_Calcado'
    Left = 560
    Top = 405
    object cdsProduto_CalcadoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProduto_CalcadoTIPO_MAT: TStringField
      FieldName = 'TIPO_MAT'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_CalcadoTIPO_SOLADO: TStringField
      FieldName = 'TIPO_SOLADO'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_CalcadoCALCULA_MAT: TStringField
      FieldName = 'CALCULA_MAT'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_CalcadoPRE: TStringField
      FieldName = 'PRE'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_CalcadoIMP_GRADE_AUX: TStringField
      FieldName = 'IMP_GRADE_AUX'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_CalcadoIMP_TALAO_AUX: TStringField
      FieldName = 'IMP_TALAO_AUX'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_CalcadoIMP_CALC_MAT: TStringField
      FieldName = 'IMP_CALC_MAT'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_CalcadoGERAR_OC: TStringField
      FieldName = 'GERAR_OC'
      FixedChar = True
      Size = 1
    end
  end
  object dsProduto_Calcado: TDataSource
    DataSet = cdsProduto_Calcado
    Left = 632
    Top = 405
  end
  object qEstoqueMatMovGrade: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'select e.codmaterial, e.codcor, sum(g.qtd2) qtd2, g.tamanho'
      'from dbestoquematmov.db e'
      'inner join dbestoquematmovgrade g'
      'on e.nummov = g.nummov'
      'group by e.codmaterial, e.codcor, g.tamanho')
    Left = 1064
    Top = 248
    object qEstoqueMatMovGradecodmaterial: TIntegerField
      FieldName = 'codmaterial'
    end
    object qEstoqueMatMovGradecodcor: TIntegerField
      FieldName = 'codcor'
    end
    object qEstoqueMatMovGradeqtd2: TFloatField
      FieldName = 'qtd2'
    end
    object qEstoqueMatMovGradetamanho: TStringField
      FieldName = 'tamanho'
      Size = 3
    end
  end
  object dsqEstoqueMatMov: TDataSource
    DataSet = qEstoqueMatMov
    Left = 984
    Top = 224
  end
  object qTam: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'TAMANHO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT COUNT(1) CONTADOR FROM TAMANHO WHERE TAMANHO = :TAMANHO')
    SQLConnection = DmDatabase.scoDados
    Left = 384
    Top = 96
    object qTamCONTADOR: TIntegerField
      FieldName = 'CONTADOR'
      Required = True
    end
  end
  object qCodAnt: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'COD_ANT'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT count(1) contador'
      'FROM CONVERSOR_COD_ANT C'
      'WHERE C.COD_ANT = :COD_ANT'
      '  AND C.TIPO = '#39'F'#39)
    SQLConnection = DmDatabase.scoDados
    Left = 752
    Top = 184
    object qCodAntCONTADOR: TIntegerField
      FieldName = 'CONTADOR'
      Required = True
    end
  end
  object qCodAnt2: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'COD_ANT'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT C.*'
      'FROM CONVERSOR_COD_ANT C'
      'WHERE C.COD_ANT = :COD_ANT'
      '  AND C.TIPO = '#39'F'#39)
    SQLConnection = DmDatabase.scoDados
    Left = 752
    Top = 240
    object qCodAnt2ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qCodAnt2ID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object qCodAnt2COD_ANT: TIntegerField
      FieldName = 'COD_ANT'
    end
    object qCodAnt2TIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
end
