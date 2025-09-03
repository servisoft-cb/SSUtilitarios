object frmGeraCBenefSC: TfrmGeraCBenefSC
  Left = 270
  Top = 191
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmGeraCBenefSC'
  ClientHeight = 241
  ClientWidth = 793
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 11
    Top = 11
    Width = 261
    Height = 14
    Alignment = taRightJustify
    Caption = 'Arquivo dos C'#243'digos Benef. Fiscal (Excel):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 218
    Top = 60
    Width = 115
    Height = 14
    Caption = 'Gerando Registro:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object FilenameEdit1: TFilenameEdit
    Left = 272
    Top = 3
    Width = 503
    Height = 21
    Ctl3D = False
    NumGlyphs = 1
    ParentCtl3D = False
    TabOrder = 0
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 338
    Top = 52
    Width = 74
    Height = 21
    AutoSize = False
    Ctl3D = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    ParentCtl3D = False
    TabOrder = 1
  end
  object NxButton1: TNxButton
    Left = 239
    Top = 99
    Width = 147
    Height = 34
    Caption = 'Gerar CBenef'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = NxButton1Click
  end
  object sdsCBenef: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CBENEF'#13#10'WHERE CODIGO = :CODIGO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 531
    Top = 97
    object sdsCBenefID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCBenefCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object sdsCBenefUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sdsCBenefDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 250
    end
    object sdsCBenefOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
    object sdsCBenefDTINICIO: TDateField
      FieldName = 'DTINICIO'
    end
    object sdsCBenefDTFINAL: TDateField
      FieldName = 'DTFINAL'
    end
    object sdsCBenefCST_00: TStringField
      FieldName = 'CST_00'
      Size = 1
    end
    object sdsCBenefCST_10: TStringField
      FieldName = 'CST_10'
      Size = 1
    end
    object sdsCBenefCST_20: TStringField
      FieldName = 'CST_20'
      Size = 1
    end
    object sdsCBenefCST_30: TStringField
      FieldName = 'CST_30'
      Size = 1
    end
    object sdsCBenefCST_40: TStringField
      FieldName = 'CST_40'
      Size = 1
    end
    object sdsCBenefCST_41: TStringField
      FieldName = 'CST_41'
      Size = 1
    end
    object sdsCBenefCST_50: TStringField
      FieldName = 'CST_50'
      Size = 1
    end
    object sdsCBenefCST_51: TStringField
      FieldName = 'CST_51'
      Size = 1
    end
    object sdsCBenefCST_60: TStringField
      FieldName = 'CST_60'
      Size = 1
    end
    object sdsCBenefCST_70: TStringField
      FieldName = 'CST_70'
      Size = 1
    end
    object sdsCBenefCST_90: TStringField
      FieldName = 'CST_90'
      Size = 1
    end
    object sdsCBenefTRIBUTO: TStringField
      FieldName = 'TRIBUTO'
      Size = 30
    end
    object sdsCBenefAPLICA_SIMPLES: TStringField
      FieldName = 'APLICA_SIMPLES'
      FixedChar = True
      Size = 1
    end
    object sdsCBenefCST_02: TStringField
      FieldName = 'CST_02'
      Size = 1
    end
    object sdsCBenefCST_15: TStringField
      FieldName = 'CST_15'
      Size = 1
    end
    object sdsCBenefCST_53: TStringField
      FieldName = 'CST_53'
      Size = 1
    end
    object sdsCBenefCST_61: TStringField
      FieldName = 'CST_61'
      Size = 1
    end
    object sdsCBenefBENEFICIO: TStringField
      FieldName = 'BENEFICIO'
      Size = 30
    end
  end
  object dspCBenef: TDataSetProvider
    DataSet = sdsCBenef
    Left = 561
    Top = 97
  end
  object cdsCBenef: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCBenef'
    Left = 593
    Top = 97
    object cdsCBenefID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCBenefCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object cdsCBenefUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsCBenefDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 250
    end
    object cdsCBenefOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
    object cdsCBenefDTINICIO: TDateField
      FieldName = 'DTINICIO'
    end
    object cdsCBenefDTFINAL: TDateField
      FieldName = 'DTFINAL'
    end
    object cdsCBenefCST_00: TStringField
      FieldName = 'CST_00'
      Size = 1
    end
    object cdsCBenefCST_10: TStringField
      FieldName = 'CST_10'
      Size = 1
    end
    object cdsCBenefCST_20: TStringField
      FieldName = 'CST_20'
      Size = 1
    end
    object cdsCBenefCST_30: TStringField
      FieldName = 'CST_30'
      Size = 1
    end
    object cdsCBenefCST_40: TStringField
      FieldName = 'CST_40'
      Size = 1
    end
    object cdsCBenefCST_41: TStringField
      FieldName = 'CST_41'
      Size = 1
    end
    object cdsCBenefCST_50: TStringField
      FieldName = 'CST_50'
      Size = 1
    end
    object cdsCBenefCST_51: TStringField
      FieldName = 'CST_51'
      Size = 1
    end
    object cdsCBenefCST_60: TStringField
      FieldName = 'CST_60'
      Size = 1
    end
    object cdsCBenefCST_70: TStringField
      FieldName = 'CST_70'
      Size = 1
    end
    object cdsCBenefCST_90: TStringField
      FieldName = 'CST_90'
      Size = 1
    end
    object cdsCBenefTRIBUTO: TStringField
      FieldName = 'TRIBUTO'
      Size = 30
    end
    object cdsCBenefAPLICA_SIMPLES: TStringField
      FieldName = 'APLICA_SIMPLES'
      FixedChar = True
      Size = 1
    end
    object cdsCBenefCST_02: TStringField
      FieldName = 'CST_02'
      Size = 1
    end
    object cdsCBenefCST_15: TStringField
      FieldName = 'CST_15'
      Size = 1
    end
    object cdsCBenefCST_53: TStringField
      FieldName = 'CST_53'
      Size = 1
    end
    object cdsCBenefCST_61: TStringField
      FieldName = 'CST_61'
      Size = 1
    end
    object cdsCBenefBENEFICIO: TStringField
      FieldName = 'BENEFICIO'
      Size = 30
    end
  end
  object dsCBenef: TDataSource
    DataSet = cdsCBenef
    Left = 627
    Top = 97
  end
  object qMax: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select max(id) ID'
      'from cbenef c')
    SQLConnection = dmDatabase.scoDados
    Left = 517
    Top = 144
    object qMaxID: TIntegerField
      FieldName = 'ID'
    end
  end
end
