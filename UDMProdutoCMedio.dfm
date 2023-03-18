object DMProdutoCMedio: TDMProdutoCMedio
  OldCreateOrder = False
  Left = 412
  Top = 260
  Height = 310
  Width = 565
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select P.ID, P.TIPO_REG, P.NOME, P.PRECO_CUSTO, P.PRECO_CUSTO_TO' +
      'TAL, P.USA_PRECO_COR'#13#10'from PRODUTO P'#13#10'WHERE P.INATIVO = '#39'N'#39#13#10'  a' +
      'nd P.TIPO_REG = :TIPO_REG'#13#10'  and (coalesce(p.preco_custo,0) > 0 ' +
      ' or coalesce(p.preco_custo_total,0) > 0 or p.usa_preco_cor = '#39'S'#39 +
      ')'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'TIPO_REG'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 352
    Top = 120
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Left = 384
    Top = 120
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    Left = 416
    Top = 120
    object cdsProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProdutoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsProdutoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsProdutoPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
    end
    object cdsProdutoUSA_PRECO_COR: TStringField
      FieldName = 'USA_PRECO_COR'
      FixedChar = True
      Size = 1
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 456
    Top = 120
  end
  object sdsProduto_CMedio: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM produto_cmedio'#13#10'WHERE ID = :ID'#13#10'  AND ID_COR = :I' +
      'D_COR'#13#10'  AND DATA = :DATA'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_COR'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 40
    Top = 24
    object sdsProduto_CMedioID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_CMedioID_COR: TIntegerField
      FieldName = 'ID_COR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_CMedioDATA: TDateField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_CMedioPRECO_MEDIO: TFloatField
      FieldName = 'PRECO_MEDIO'
    end
  end
  object dspProduto_CMedio: TDataSetProvider
    DataSet = sdsProduto_CMedio
    UpdateMode = upWhereKeyOnly
    OnGetTableName = dspProduto_CMedioGetTableName
    Left = 80
    Top = 24
  end
  object cdsProduto_CMedio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto_CMedio'
    Left = 120
    Top = 24
    object cdsProduto_CMedioID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_CMedioID_COR: TIntegerField
      FieldName = 'ID_COR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_CMedioDATA: TDateField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_CMedioPRECO_MEDIO: TFloatField
      FieldName = 'PRECO_MEDIO'
    end
  end
  object sdsProduto_Comb: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'select PC.*'#13#10'from PRODUTO_COMB PC'#13#10'where PC.ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 344
    Top = 48
  end
  object dspProduto_Comb: TDataSetProvider
    DataSet = sdsProduto_Comb
    Left = 376
    Top = 48
  end
  object cdsProduto_Comb: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto_Comb'
    Left = 408
    Top = 48
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
    object cdsProduto_CombGERAR_WEB: TStringField
      FieldName = 'GERAR_WEB'
      FixedChar = True
      Size = 1
    end
  end
  object dsProduto_Comb: TDataSource
    DataSet = cdsProduto_Comb
    Left = 448
    Top = 48
  end
end
