object frmAjusteNCMCFOP: TfrmAjusteNCMCFOP
  Left = 338
  Top = 219
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmAjusteNCMCFOP'
  ClientHeight = 241
  ClientWidth = 793
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 129
    Top = 11
    Width = 151
    Height = 14
    Alignment = taRightJustify
    Caption = 'Arquivo NCM em EXCEL:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 577
    Top = 98
    Width = 118
    Height = 14
    Alignment = taRightJustify
    Caption = 'Total de Registros:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 2
    Top = 35
    Width = 278
    Height = 14
    Alignment = taRightJustify
    Caption = 'Pasta onde gravar txt (AjusteNCMCFOP.txt):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 594
    Top = 121
    Width = 101
    Height = 14
    Alignment = taRightJustify
    Caption = 'Registros Lidos:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object FilenameEdit1: TFilenameEdit
    Left = 282
    Top = 3
    Width = 503
    Height = 21
    Ctl3D = False
    NumGlyphs = 1
    ParentCtl3D = False
    TabOrder = 0
  end
  object ceTotal: TCurrencyEdit
    Left = 696
    Top = 90
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
    Left = 289
    Top = 63
    Width = 147
    Height = 34
    Caption = 'Ajustar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = NxButton1Click
  end
  object DirectoryEdit1: TDirectoryEdit
    Left = 282
    Top = 30
    Width = 501
    Height = 21
    Ctl3D = False
    NumGlyphs = 1
    ParentCtl3D = False
    TabOrder = 3
  end
  object ceLidos: TCurrencyEdit
    Left = 696
    Top = 113
    Width = 74
    Height = 21
    AutoSize = False
    Ctl3D = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    ParentCtl3D = False
    TabOrder = 4
  end
end
