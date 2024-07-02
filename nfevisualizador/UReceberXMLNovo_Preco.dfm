object frmReceberXMLNovo_Preco: TfrmReceberXMLNovo_Preco
  Left = 428
  Top = 215
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pre'#231'o'
  ClientHeight = 161
  ClientWidth = 310
  Color = 14996162
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
  object Label155: TLabel
    Left = 37
    Top = 76
    Width = 139
    Height = 13
    Caption = '% da Margem de c'#225'lculo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 13
    Top = 22
    Width = 281
    Height = 32
    Caption = 'Informar o % da margem para c'#225'lculo '#13#10'do pre'#231'o de venda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cePercVlrVenda: TCurrencyEdit
    Left = 42
    Top = 91
    Width = 121
    Height = 21
    AutoSize = False
    DisplayFormat = '0.00'
    TabOrder = 0
  end
  object btnAplicarItens: TNxButton
    Left = 41
    Top = 115
    Width = 216
    Height = 38
    Caption = 'Aplicar em todos Itens'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnAplicarItensClick
  end
end
