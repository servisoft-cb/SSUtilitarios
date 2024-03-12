object frmImportar_PlanoContas: TfrmImportar_PlanoContas
  Left = 312
  Top = 208
  Width = 695
  Height = 308
  Caption = 'frmImportar_PlanoContas'
  Color = 16769734
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 16
    Width = 103
    Height = 13
    Caption = 'Endere'#231'o do Arquivo:'
  end
  object Label2: TLabel
    Left = 376
    Top = 40
    Width = 134
    Height = 16
    Caption = 'Total de Registros:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 515
    Top = 40
    Width = 71
    Height = 16
    AutoSize = False
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object FilenameEdit1: TFilenameEdit
    Left = 163
    Top = 9
    Width = 422
    Height = 21
    NumGlyphs = 1
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 163
    Top = 56
    Width = 209
    Height = 36
    Caption = 'Importar Plano Contas'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 163
    Top = 104
    Width = 209
    Height = 36
    Caption = 'Importar Plano Cont'#225'bil'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object qPlano: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM PLANO_CONTAS'
      'WHERE CODIGO = :CODIGO')
    SQLConnection = DmDatabase.scoDados
    Left = 496
    Top = 64
    object qPlanoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qPlanoCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 60
    end
    object qPlanoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qPlanoDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object qPlanoNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object qPlanoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object qPlanoCOD_NATUREZA: TIntegerField
      FieldName = 'COD_NATUREZA'
    end
    object qPlanoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object qPlanoSUPERIOR: TIntegerField
      FieldName = 'SUPERIOR'
    end
  end
  object qPlano_Contabil: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PLANO_CONTABIL')
    SQLConnection = DmDatabase.scoDados
    Left = 496
    Top = 120
    object qPlano_ContabilID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qPlano_ContabilCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 60
    end
    object qPlano_ContabilNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object qPlano_ContabilDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object qPlano_ContabilNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object qPlano_ContabilTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object qPlano_ContabilCOD_NATUREZA: TIntegerField
      FieldName = 'COD_NATUREZA'
    end
    object qPlano_ContabilINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object qPlano_ContabilSUPERIOR: TIntegerField
      FieldName = 'SUPERIOR'
    end
    object qPlano_ContabilDT_INICIO_VALIDADE: TDateField
      FieldName = 'DT_INICIO_VALIDADE'
    end
    object qPlano_ContabilDT_FINAL_VALIDADE: TDateField
      FieldName = 'DT_FINAL_VALIDADE'
    end
    object qPlano_ContabilCODIGO_REDUZIDO: TIntegerField
      FieldName = 'CODIGO_REDUZIDO'
    end
  end
end
