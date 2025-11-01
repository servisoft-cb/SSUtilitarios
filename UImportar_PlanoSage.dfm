object frmImportar_PlanoSage: TfrmImportar_PlanoSage
  Left = 349
  Top = 225
  Width = 652
  Height = 258
  Caption = 'frmImportar_PlanoSage'
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
  object pnlPrincipal: TAdvPanel
    Left = 0
    Top = 0
    Width = 636
    Height = 219
    Align = alClient
    BevelWidth = 10
    Color = 15325901
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    UseDockManager = True
    Version = '2.0.1.0'
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clHighlightText
    Caption.Font.Height = -11
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    CollapsColor = 16776176
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    FullHeight = 0
    object Label1: TLabel
      Left = 22
      Top = 32
      Width = 140
      Height = 13
      Alignment = taRightJustify
      Caption = 'Endere'#231'o do Arquivo (Excel):'
    end
    object Label2: TLabel
      Left = 377
      Top = 56
      Width = 134
      Height = 16
      Alignment = taRightJustify
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
      Top = 56
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
    object Label4: TLabel
      Left = 428
      Top = 72
      Width = 83
      Height = 16
      Alignment = taRightJustify
      Caption = 'Total Lidos:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 515
      Top = 72
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
      Top = 25
      Width = 422
      Height = 21
      NumGlyphs = 1
      TabOrder = 0
    end
    object btnImportar: TNxButton
      Left = 170
      Top = 104
      Width = 209
      Height = 33
      Caption = 'Importar Plano Cont'#225'bil'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnImportarClick
    end
  end
  object qPlano_Contabil: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PLANO_CONTABIL')
    SQLConnection = dmDatabase.scoDados
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
