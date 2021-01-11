object frmConvProdutoProc: TfrmConvProdutoProc
  Left = 258
  Top = 169
  Width = 928
  Height = 480
  Caption = 'frmConvProdutoProc'
  Color = clBtnFace
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
  object NxButton1: TNxButton
    Left = 70
    Top = 99
    Width = 175
    Caption = 'Gerar Produto Processo'
    TabOrder = 0
    OnClick = NxButton1Click
  end
  object ProgressBar1: TProgressBar
    Left = 73
    Top = 43
    Width = 524
    Height = 17
    TabOrder = 1
  end
end
