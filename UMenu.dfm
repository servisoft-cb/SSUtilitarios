object fMenu: TfMenu
  Left = 267
  Top = 54
  Width = 801
  Height = 650
  Caption = 'Menu    (23/09/2021  1.0.10)'
  Color = clSilver
  Constraints.MinHeight = 650
  Constraints.MinWidth = 780
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PrintScale = poNone
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object btnLocalizar: TNxButton
    Left = 37
    Top = 72
    Width = 302
    Height = 33
    Caption = 'Importar XML NFe'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btnLocalizarClick
  end
  object NxButton1: TNxButton
    Left = 37
    Top = 105
    Width = 302
    Height = 33
    Caption = 'Importar XML NFSe'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = NxButton1Click
  end
  object NxButton2: TNxButton
    Left = 37
    Top = 138
    Width = 302
    Height = 33
    Caption = 'Importar Paradox'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = NxButton2Click
  end
  object NxButton3: TNxButton
    Left = 37
    Top = 171
    Width = 302
    Height = 33
    Caption = 'Importar Texto (CSV)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = NxButton3Click
  end
  object btnImportar_PlanoSped: TNxButton
    Left = 37
    Top = 204
    Width = 302
    Height = 33
    Caption = 'Importar Plano Contas SPED/Plano Cont'#225'bil'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btnImportar_PlanoSpedClick
  end
  object btnImportar_ContasOrcamento: TNxButton
    Left = 37
    Top = 237
    Width = 302
    Height = 33
    Caption = 'Importar/Exportar Contas Or'#231'amento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = btnImportar_ContasOrcamentoClick
  end
  object NxButton4: TNxButton
    Left = 37
    Top = 270
    Width = 302
    Height = 33
    Caption = 'Importar Impostos/CFOP Paradox'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = NxButton4Click
  end
  object NxButton5: TNxButton
    Left = 428
    Top = 73
    Width = 236
    Height = 33
    Caption = 'Importar Impostos/CFOP Paradox'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = NxButton4Click
  end
  object NxButton6: TNxButton
    Left = 37
    Top = 302
    Width = 302
    Height = 33
    Caption = 'Importar Regras Empresa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = NxButton3Click
  end
  object NxButton7: TNxButton
    Left = 37
    Top = 334
    Width = 302
    Height = 33
    Caption = 'Le o cdsEstoque_Mov para montar o Estoque'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = NxButton7Click
  end
  object NxButton8: TNxButton
    Left = 428
    Top = 105
    Width = 236
    Height = 33
    Caption = 'Gerar Setor nos Tal'#245'es (Calcado)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = NxButton4Click
  end
  object NxButton9: TNxButton
    Left = 428
    Top = 138
    Width = 236
    Height = 33
    Caption = 'Ajusta Contas de Orc. nas Duplicatas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = NxButton9Click
  end
  object NxButton10: TNxButton
    Left = 37
    Top = 366
    Width = 302
    Height = 33
    Caption = 'Gerar Invent'#225'rio pelo arquivo (CSV)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnClick = NxButton10Click
  end
  object btnCBenef: TNxButton
    Left = 36
    Top = 398
    Width = 302
    Height = 33
    Caption = 'Carregar Tabela C'#243'd. Benef'#237'cio Fiscal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    OnClick = btnCBenefClick
  end
  object NxButton11: TNxButton
    Left = 428
    Top = 171
    Width = 236
    Height = 33
    Caption = 'Ajusta Produto_Processo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    OnClick = NxButton11Click
  end
end
