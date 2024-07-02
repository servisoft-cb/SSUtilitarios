object frmRecebeXmlNovo_Config: TfrmRecebeXmlNovo_Config
  Left = 398
  Top = 217
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmRecebeXmlNovo_Config'
  ClientHeight = 147
  ClientWidth = 329
  Color = 14024661
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ckAssociar: TNxCheckBox
    Left = 28
    Top = 11
    Width = 283
    Height = 21
    TabOrder = 0
    Text = 'ckAssociar'
    Caption = 'Associar Produtos'
  end
  object ckUsarConfigCFOPInt: TNxCheckBox
    Left = 28
    Top = 31
    Width = 283
    Height = 21
    TabOrder = 1
    Text = 'NxCheckBox1'
    Caption = 'Usar Config. da CFOP Interna para o ICMS'
  end
  object ckUsaNome: TNxCheckBox
    Left = 28
    Top = 51
    Width = 283
    Height = 21
    TabOrder = 2
    Text = 'ckUsaNome'
    Caption = 'Usa Nome da Nota'
  end
  object btnConfirmar: TNxButton
    Left = 74
    Top = 98
    Width = 93
    Height = 26
    Caption = 'Confirmar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = btnConfirmarClick
  end
  object btnCancelar: TNxButton
    Left = 168
    Top = 98
    Width = 93
    Height = 26
    Caption = 'Cancelar'
    TabOrder = 5
    OnClick = btnCancelarClick
  end
  object ckCopiarInfAdicionaisProd: TNxCheckBox
    Left = 28
    Top = 71
    Width = 283
    Height = 21
    TabOrder = 3
    Text = 'ckUsaNome'
    Caption = 'Copiar inf. adicionais para o nome do produto'
  end
end
