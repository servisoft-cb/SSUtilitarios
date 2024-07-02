object DMRecebeXMLNovo_ListarXML: TDMRecebeXMLNovo_ListarXML
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 338
  Top = 128
  Height = 502
  Width = 713
  object NFe: TACBrNFe
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    Left = 209
    Top = 84
  end
  object cdsNFeItens: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 40
    Top = 200
    object cdsNFeItensCodProd: TStringField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'CodProd'
      Size = 30
    end
    object cdsNFeItensEAN: TStringField
      FieldName = 'EAN'
      Size = 30
    end
    object cdsNFeItensxProd: TStringField
      DisplayLabel = 'Nome Produto'
      FieldName = 'xProd'
      Size = 100
    end
    object cdsNFeItensUnidade: TStringField
      FieldName = 'Unidade'
      Size = 5
    end
    object cdsNFeItensQtd: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'Qtd'
    end
    object cdsNFeItensVlrUnitario: TFloatField
      DisplayLabel = 'Valor Unit'#225'rio'
      FieldName = 'VlrUnitario'
    end
    object cdsNFeItensVlrTotal: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'VlrTotal'
    end
  end
  object dscdsNFeItens: TDataSource
    DataSet = cdsNFeItens
    Left = 80
    Top = 200
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
    SQLConnection = dmDatabase.scoDados
    Left = 193
    Top = 152
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
  end
  object sdsNotaImportada: TSQLDataSet
    CommandText = 
      'select nf.id'#13#10'from notafiscal nf'#13#10'where nf.tipo_reg = '#39'NTE'#39#13#10'and' +
      ' nf.nfechaveacesso = :CHAVE'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CHAVE'
        ParamType = ptInput
        Value = ''
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 264
    object sdsNotaImportadaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select F.ID, F.NOME, F.NOME_INTERNO, F.CNPJ_CPF'#13#10'from FILIAL F'#13#10 +
      'where F.INATIVO = '#39'N'#39' and'#13#10'      coalesce(F.MANIFESTO_AUTOMATICO' +
      ','#39'N'#39') = '#39'S'#39#13#10#13#10#13#10'  '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 49
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 504
    Top = 48
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFilial'
    Left = 544
    Top = 48
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
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 596
    Top = 48
  end
  object sdsConsManifesto: TSQLDataSet
    CommandText = 
      'select AN.ID, AN.CHAVE_ACESSO, AN.CNPJ, AN.INSC_ESTADUAL, AN.DTE' +
      'MISSAO, AN.NOME, AN.NUM_NOTA, AN.VLR_NOTA,'#13#10'       AN.SITUACAO_M' +
      'ANIF, AN.SITUACAO_NFE, AN.XML, AN.DTRECEBIMENTO, AN.NUM_PROTOCOL' +
      'O, AN.DOWNLOAD,'#13#10'       AN.GRAVADA_NOTA, AN.TIPO_EVE, AN.CNPJ_FI' +
      'LIAL, AN.FILIAL, AN.NOTA_PROPRIA, AN.SERIE, AN.NSU, AN.DTEMISSAO' +
      '2,'#13#10'       AN.POSSUI_CCE, AN.OCULTAR, AN.USUARIO, AN.DTUSUARIO, ' +
      'AN.HRUSUARIO, AN.MOTIVO_CCE, AN.MOTIVO_CANCELADO,'#13#10'       AN.NOM' +
      'E_ARQUIVO'#13#10'from MANIFESTO_AN AN'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase_NFeBD.scoNFeBD
    Left = 454
    Top = 129
  end
  object dspConsManifesto: TDataSetProvider
    DataSet = sdsConsManifesto
    UpdateMode = upWhereKeyOnly
    Left = 510
    Top = 129
  end
  object cdsConsManifesto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsManifesto'
    Left = 564
    Top = 130
    object cdsConsManifestoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsManifestoCHAVE_ACESSO: TStringField
      FieldName = 'CHAVE_ACESSO'
      Size = 44
    end
    object cdsConsManifestoCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsConsManifestoINSC_ESTADUAL: TStringField
      FieldName = 'INSC_ESTADUAL'
    end
    object cdsConsManifestoDTEMISSAO: TStringField
      FieldName = 'DTEMISSAO'
      Size = 30
    end
    object cdsConsManifestoNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object cdsConsManifestoNUM_NOTA: TFMTBCDField
      FieldName = 'NUM_NOTA'
      Precision = 15
      Size = 0
    end
    object cdsConsManifestoVLR_NOTA: TFloatField
      FieldName = 'VLR_NOTA'
    end
    object cdsConsManifestoSITUACAO_MANIF: TIntegerField
      FieldName = 'SITUACAO_MANIF'
    end
    object cdsConsManifestoSITUACAO_NFE: TIntegerField
      FieldName = 'SITUACAO_NFE'
    end
    object cdsConsManifestoXML: TMemoField
      FieldName = 'XML'
      BlobType = ftMemo
      Size = 1
    end
    object cdsConsManifestoDTRECEBIMENTO: TStringField
      FieldName = 'DTRECEBIMENTO'
      Size = 30
    end
    object cdsConsManifestoNUM_PROTOCOLO: TStringField
      FieldName = 'NUM_PROTOCOLO'
      Size = 25
    end
    object cdsConsManifestoDOWNLOAD: TStringField
      FieldName = 'DOWNLOAD'
      FixedChar = True
      Size = 1
    end
    object cdsConsManifestoGRAVADA_NOTA: TStringField
      FieldName = 'GRAVADA_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsConsManifestoTIPO_EVE: TStringField
      FieldName = 'TIPO_EVE'
    end
    object cdsConsManifestoCNPJ_FILIAL: TStringField
      FieldName = 'CNPJ_FILIAL'
      Size = 18
    end
    object cdsConsManifestoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsConsManifestoNOTA_PROPRIA: TStringField
      FieldName = 'NOTA_PROPRIA'
      FixedChar = True
      Size = 1
    end
    object cdsConsManifestoSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsConsManifestoNSU: TStringField
      FieldName = 'NSU'
      Size = 15
    end
    object cdsConsManifestoDTEMISSAO2: TDateField
      FieldName = 'DTEMISSAO2'
    end
    object cdsConsManifestoPOSSUI_CCE: TStringField
      FieldName = 'POSSUI_CCE'
      Size = 1
    end
    object cdsConsManifestoOCULTAR: TStringField
      FieldName = 'OCULTAR'
      Size = 1
    end
    object cdsConsManifestoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsConsManifestoDTUSUARIO: TDateField
      FieldName = 'DTUSUARIO'
    end
    object cdsConsManifestoHRUSUARIO: TTimeField
      FieldName = 'HRUSUARIO'
    end
    object cdsConsManifestoMOTIVO_CCE: TStringField
      FieldName = 'MOTIVO_CCE'
      Size = 1000
    end
    object cdsConsManifestoMOTIVO_CANCELADO: TStringField
      FieldName = 'MOTIVO_CANCELADO'
      Size = 500
    end
    object cdsConsManifestoNOME_ARQUIVO: TStringField
      FieldName = 'NOME_ARQUIVO'
      Size = 250
    end
  end
  object dsConsManifesto: TDataSource
    DataSet = cdsConsManifesto
    Left = 606
    Top = 129
  end
end
