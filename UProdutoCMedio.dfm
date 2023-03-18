object frmProdutoCMedio: TfrmProdutoCMedio
  Left = 81
  Top = 117
  Width = 1135
  Height = 545
  Caption = 'frmProdutoCMedio'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1119
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 327
      Top = 24
      Width = 89
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data Pre'#231'o M'#233'dio:'
    end
    object btnConsultar: TNxButton
      Left = 192
      Top = 16
      Width = 75
      Caption = 'Consultar'
      TabOrder = 1
      OnClick = btnConsultarClick
    end
    object NxComboBox1: TNxComboBox
      Left = 64
      Top = 16
      Width = 121
      Height = 21
      Cursor = crArrow
      TabOrder = 0
      Text = 'Produto'
      ReadOnly = True
      HideFocus = False
      Style = dsDropDownList
      AutoCompleteDelay = 0
      ItemIndex = 0
      Items.Strings = (
        'Produto'
        'Semi Acabado'
        'Material'
        'Consumo')
    end
    object ProgressBar1: TProgressBar
      Left = 584
      Top = 8
      Width = 513
      Height = 17
      TabOrder = 4
    end
    object ProgressBar2: TProgressBar
      Left = 584
      Top = 28
      Width = 513
      Height = 17
      TabOrder = 5
    end
    object btnGerarPrecoMedio: TNxButton
      Left = 432
      Top = 40
      Width = 105
      Caption = 'Gerar Pre'#231'o M'#233'dio'
      TabOrder = 3
      OnClick = btnGerarPrecoMedioClick
    end
    object DateEdit1: TDateEdit
      Left = 416
      Top = 16
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 81
    Width = 1119
    Height = 425
    Align = alClient
    Ctl3D = False
    DataSource = DMProdutoCMedio.dsProduto
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Flat = True
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 7
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_REG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 301
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO_CUSTO'
        Width = 111
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO_CUSTO_TOTAL'
        Width = 142
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USA_PRECO_COR'
        Width = 117
        Visible = True
      end>
  end
end
