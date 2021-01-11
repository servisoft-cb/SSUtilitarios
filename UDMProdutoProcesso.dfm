object DMProdutoProcesso: TDMProdutoProcesso
  OldCreateOrder = False
  Left = 354
  Top = 193
  Height = 383
  Width = 437
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    Left = 72
    Top = 24
  end
  object sdsConsulta: TSQLDataSet
    CommandText = 
      'select distinct P.ID, PROC.id_processo, PROC.qtd_leitura, proc.i' +
      'tem, proc.item_proc, PC.id_setor'#13#10'FROM PRODUTO P'#13#10'INNER JOIN PRO' +
      'DUTO_CONSUMO PC'#13#10'ON P.ID = PC.ID'#13#10'INNER JOIN produto_consumo_pro' +
      'c PROC'#13#10'ON PC.ID = PROC.ID'#13#10'AND PC.item = PROC.item'#13#10'INNER JOIN ' +
      'PROCESSO PR'#13#10'ON PROC.id_processo = PR.id'#13#10'WHERE P.TIPO_REG = '#39'P'#39 +
      #13#10'  AND P.INATIVO = '#39'N'#39#13#10'order by P.ID, proc.ID_PROCESSO'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 34
    Top = 23
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ID_PROCESSO'
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 112
    Top = 27
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object cdsConsultaQTD_LEITURA: TIntegerField
      FieldName = 'QTD_LEITURA'
    end
    object cdsConsultaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsConsultaITEM_PROC: TIntegerField
      FieldName = 'ITEM_PROC'
      Required = True
    end
    object cdsConsultaID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
  end
  object sdsProdutoProcesso: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT * FROM PRODUTO_PROCESSO'#13#10'WHERE ID = :ID'#13#10'  and ID_PROCESS' +
      'O = :ID_PROCESSO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_PROCESSO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 224
    Top = 180
    object sdsProdutoProcessoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProdutoProcessoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProdutoProcessoID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
      Required = True
    end
    object sdsProdutoProcessoID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object sdsProdutoProcessoQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsProdutoProcessoUN: TStringField
      FieldName = 'UN'
      Size = 3
    end
    object sdsProdutoProcessoVLR_UNIT: TFloatField
      FieldName = 'VLR_UNIT'
    end
    object sdsProdutoProcessoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsProdutoProcessoOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object sdsProdutoProcessoID_POSICAO: TIntegerField
      FieldName = 'ID_POSICAO'
    end
    object sdsProdutoProcessoORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
  end
  object dspProdutoProcesso: TDataSetProvider
    DataSet = sdsProdutoProcesso
    UpdateMode = upWhereKeyOnly
    Left = 256
    Top = 179
  end
  object cdsProdutoProcesso: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspProdutoProcesso'
    Left = 286
    Top = 179
    object cdsProdutoProcessoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProdutoProcessoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProdutoProcessoID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
      Required = True
    end
    object cdsProdutoProcessoID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object cdsProdutoProcessoQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsProdutoProcessoUN: TStringField
      FieldName = 'UN'
      Size = 3
    end
    object cdsProdutoProcessoVLR_UNIT: TFloatField
      FieldName = 'VLR_UNIT'
    end
    object cdsProdutoProcessoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsProdutoProcessoOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object cdsProdutoProcessoID_POSICAO: TIntegerField
      FieldName = 'ID_POSICAO'
    end
    object cdsProdutoProcessoORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
  end
  object dsProdutoProcesso: TDataSource
    DataSet = cdsProdutoProcesso
    Left = 320
    Top = 179
  end
end
