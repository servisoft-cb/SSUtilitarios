object DMAjustarNCMCFOP: TDMAjustarNCMCFOP
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 364
  Top = 204
  Height = 340
  Width = 486
  object sdsTab_NCM: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select N.ID, N.ID_CFOP, N.ID_CST_ICMS, N.NCM, N.ALTERADO,'#13#10'GERAR' +
      '_ST'#13#10'from TAB_NCM N'#13#10'where NCM like :NCM '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NCM'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 30
    object sdsTab_NCMID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsTab_NCMID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object sdsTab_NCMID_CST_ICMS: TIntegerField
      FieldName = 'ID_CST_ICMS'
    end
    object sdsTab_NCMNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object sdsTab_NCMALTERADO: TStringField
      FieldName = 'ALTERADO'
      FixedChar = True
      Size = 1
    end
    object sdsTab_NCMGERAR_ST: TStringField
      FieldName = 'GERAR_ST'
      FixedChar = True
      Size = 1
    end
  end
  object dspTab_NCM: TDataSetProvider
    DataSet = sdsTab_NCM
    UpdateMode = upWhereKeyOnly
    Left = 94
    Top = 30
  end
  object cdsTab_NCM: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTab_NCM'
    Left = 137
    Top = 29
    object cdsTab_NCMID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsTab_NCMID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsTab_NCMID_CST_ICMS: TIntegerField
      FieldName = 'ID_CST_ICMS'
    end
    object cdsTab_NCMNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object cdsTab_NCMALTERADO: TStringField
      FieldName = 'ALTERADO'
      FixedChar = True
      Size = 1
    end
    object cdsTab_NCMGERAR_ST: TStringField
      FieldName = 'GERAR_ST'
      FixedChar = True
      Size = 1
    end
  end
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select P.ID, P.ID_NCM, P.ID_CFOP_NFCE, P.ID_CSTICMS, NOME'#13#10'from ' +
      'PRODUTO P'#13#10'where P.ID_NCM = :ID_NCM'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_NCM'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 86
    object sdsProdutoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProdutoID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object sdsProdutoID_CFOP_NFCE: TIntegerField
      FieldName = 'ID_CFOP_NFCE'
    end
    object sdsProdutoID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object sdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    UpdateMode = upWhereKeyOnly
    Left = 94
    Top = 86
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspProduto'
    Left = 137
    Top = 85
    object cdsProdutoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProdutoID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object cdsProdutoID_CFOP_NFCE: TIntegerField
      FieldName = 'ID_CFOP_NFCE'
    end
    object cdsProdutoID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object cdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
end
