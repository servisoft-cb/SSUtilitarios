object DMRecebeXMLNovo_ListarXML: TDMRecebeXMLNovo_ListarXML
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 448
  Top = 116
  Height = 394
  Width = 408
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
    Left = 184
    Top = 48
  end
  object cdsNFe: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 40
    Top = 128
    object IntegerField1: TIntegerField
      FieldName = 'id'
    end
    object cdsNFeSerie: TIntegerField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'Serie'
    end
    object cdsNFeNumNota: TIntegerField
      DisplayLabel = 'Num. Nota'
      FieldName = 'NumNota'
    end
    object cdsNFeDtEmissao: TDateField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'DtEmissao'
    end
    object cdsNFeVlrTotal: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'VlrTotal'
    end
    object cdsNFeNomeEmitente: TStringField
      DisplayLabel = 'Nome Emitente'
      DisplayWidth = 60
      FieldName = 'NomeEmitente'
      Size = 100
    end
    object cdsNFeCNPJEmitente: TStringField
      DisplayLabel = 'CNPJ Emitente'
      DisplayWidth = 60
      FieldName = 'CNPJEmitente'
      Size = 100
    end
    object cdsNFechave_acesso: TStringField
      DisplayLabel = 'Chave de Acesso'
      FieldName = 'chave_acesso'
      Size = 44
    end
    object cdsNFevArq: TStringField
      FieldName = 'vArq'
      Size = 255
    end
    object cdsNFeImportado: TStringField
      FieldName = 'Importado'
      Size = 1
    end
    object cdsNFecaminhoArq: TStringField
      FieldName = 'caminhoArq'
      Size = 300
    end
  end
  object dscdsNFe: TDataSource
    DataSet = cdsNFe
    Left = 80
    Top = 128
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
    object cdsNFeItensNumOC: TStringField
      FieldName = 'NumOC'
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
    SQLConnection = DmDatabase.scoDados
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
    SQLConnection = DmDatabase.scoDados
    Left = 40
    Top = 264
    object sdsNotaImportadaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
end
