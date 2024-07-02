object frmRecebeXML_ConsOC: TfrmRecebeXML_ConsOC
  Left = 255
  Top = 45
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Selecionar as OC'
  ClientHeight = 631
  ClientWidth = 963
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 436
    Width = 963
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 133
    Width = 963
    Height = 303
    Align = alClient
    BorderStyle = bsNone
    Ctl3D = False
    DataSource = DMRecebeXML.dsOC
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
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
    ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    OnGetCellParams = SMDBGrid1GetCellParams
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 23
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 17
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUM_PEDIDO'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' OC'
        Title.Color = 16769217
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ITEM'
        Title.Alignment = taCenter
        Title.Caption = 'Item'
        Title.Color = 16769217
        Width = 28
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTENTREGA'
        Title.Alignment = taCenter
        Title.Caption = 'Dt. Entregue'
        Title.Color = 16769217
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REFERENCIA'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Title.Color = 16769217
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_PRODUTO'
        Title.Alignment = taCenter
        Title.Caption = 'Id Produto'
        Title.Color = 16769217
        Width = 47
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TAMANHO'
        Title.Alignment = taCenter
        Title.Caption = 'Tam'
        Title.Color = 16769217
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEPRODUTO'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Produto'
        Title.Color = 16769217
        Width = 337
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. OC'
        Title.Color = 16769217
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_RESTANTE'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Pendente'
        Title.Color = 16769217
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_FATURADO'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Entregue'
        Title.Color = 16769217
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_UNITARIO'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Unit'#225'rio'
        Title.Color = 16769217
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ_CPF'
        Title.Alignment = taCenter
        Title.Caption = 'CNPJ/CPF'
        Title.Color = 16769217
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_CLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'Id Fornecedor'
        Title.Color = 16769217
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEFORNECEDOR'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Fornecedor'
        Title.Color = 16769217
        Width = 195
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTEMISSAO'
        Title.Alignment = taCenter
        Title.Caption = 'Dt. Emiss'#227'o'
        Title.Color = 16769217
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CENTROCUSTO'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Centro Custo'
        Title.Color = 16769217
        Width = 218
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 606
    Width = 963
    Height = 25
    Align = alBottom
    Color = 16760704
    TabOrder = 1
    object Label1: TLabel
      Left = 1
      Top = 11
      Width = 961
      Height = 13
      Align = alBottom
      Caption = 'Duplo Clique para selecionar a OC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 963
    Height = 46
    Align = alTop
    Color = clSilver
    TabOrder = 2
    Visible = False
    object Label2: TLabel
      Left = 88
      Top = 8
      Width = 293
      Height = 20
      Caption = 'Fornecedor n'#227'o encontrado na base'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 386
      Top = 13
      Width = 324
      Height = 13
      Caption = '(Com isso o sistema n'#227'o vai encontrar Ordem de Compra)'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 46
    Width = 963
    Height = 46
    Align = alTop
    Color = clSilver
    TabOrder = 3
    Visible = False
    object Label4: TLabel
      Left = 114
      Top = 11
      Width = 377
      Height = 25
      Caption = 'Qtd. de OC Pendente de aprova'#231#227'o:  0'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 92
    Width = 963
    Height = 41
    Align = alTop
    TabOrder = 4
    object Label5: TLabel
      Left = 47
      Top = 15
      Width = 99
      Height = 16
      Caption = 'N'#186' OC Interna:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 626
      Top = 13
      Width = 173
      Height = 14
      Caption = 'F3 Avan'#231'a Item das Notas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ceNumOC: TCurrencyEdit
      Left = 148
      Top = 9
      Width = 121
      Height = 23
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyDown = ceNumOCKeyDown
    end
    object ckAssociar: TNxCheckBox
      Left = 282
      Top = 11
      Width = 213
      Height = 21
      TabOrder = 1
      Text = 'ckAssociar'
      Visible = False
      Caption = 'Associar pelo ID. Produto Interno'
    end
    object btnAssociar: TNxButton
      Left = 496
      Top = 9
      Width = 75
      Caption = 'Associar'
      TabOrder = 2
      Visible = False
      OnClick = btnAssociarClick
    end
  end
  object gbxVendedor: TRzGroupBox
    Left = 0
    Top = 439
    Width = 963
    Height = 167
    Align = alBottom
    BorderColor = clNavy
    BorderInner = fsButtonUp
    BorderOuter = fsBump
    Caption = ' Itens da Nota '
    Color = clActiveCaption
    Ctl3D = True
    FlatColor = clNavy
    FlatColorAdjustment = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 5
    VisualStyle = vsGradient
    object SMDBGrid2: TSMDBGrid
      Left = 5
      Top = 18
      Width = 953
      Height = 144
      Align = alClient
      Ctl3D = False
      DataSource = DMRecebeXML.dsmItensNota
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNavy
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
      ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
      OnGetCellParams = SMDBGrid2GetCellParams
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      ColCount = 35
      RowCount = 2
      Columns = <
        item
          Expanded = False
          FieldName = 'Item'
          ReadOnly = True
          Title.Color = 11140947
          Width = 28
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NumPedido'
          ReadOnly = True
          Title.Caption = 'N'#186' OC'
          Title.Color = 11140947
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ItemPedido'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Item OC'
          Title.Color = 11140947
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CodProduto'
          ReadOnly = True
          Title.Color = 11140947
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CodProdutoInterno'
          Title.Caption = 'ID Prod Interno'
          Title.Color = 11140947
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeProduto'
          Title.Color = 11140947
          Width = 335
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CodBarra'
          Title.Alignment = taCenter
          Title.Color = 11140947
          Width = 117
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Unidade'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Unid. da Compra'
          Title.Color = 11140947
          Width = 52
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'UnidadeInterno'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Unid. da Venda'
          Title.Color = 11140947
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CFOP'
          ReadOnly = True
          Title.Color = 11140947
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CFOPInterno'
          Title.Color = 11140947
          Width = 52
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CodCFOP_NFCe'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'CFOP NFCe'
          Title.Color = 11140947
          Width = 49
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CFOPOriginal'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Color = 11140947
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Referencia_Int'
          Title.Alignment = taCenter
          Title.Caption = 'Refer'#234'ncia Interna'
          Title.Color = 11140947
          Width = 88
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Tamanho'
          Title.Alignment = taCenter
          Title.Color = 11140947
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ID_Cor'
          Title.Alignment = taCenter
          Title.Caption = 'ID Cor'
          Title.Color = 11140947
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome_Cor'
          Title.Alignment = taCenter
          Title.Caption = 'Nome Cor'
          Title.Color = 11140947
          Width = 117
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qtd'
          ReadOnly = True
          Title.Color = 11140947
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrUnitario'
          ReadOnly = True
          Title.Caption = 'Vlr. Unit'#225'rio Original'
          Title.Color = 11140947
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrUnitario_Conversao'
          Title.Caption = 'Vlr. Compra Produto'
          Title.Color = 11140947
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vlr_Venda_Atual'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Vlr. Venda Atual'
          Title.Color = 11140947
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vlr_Venda'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr. Venda Calculada'
          Title.Color = 11140947
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Num_Lote_Controle'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Lote Controle'
          Title.Color = 11140947
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrTotal'
          ReadOnly = True
          Title.Color = 11140947
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrIPI'
          Title.Alignment = taCenter
          Title.Color = 11140947
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NCM'
          ReadOnly = True
          Title.Color = 11140947
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CEST'
          Title.Alignment = taCenter
          Title.Color = 11140947
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrIcmsST'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr. ICMS ST'
          Title.Color = 11140947
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QtdPacote'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Color = 11140947
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GravarNovo'
          ReadOnly = True
          Title.Color = 11140947
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Obs_Complementar'
          Title.Alignment = taCenter
          Title.Caption = 'Obs. Complementar'
          Title.Color = 11140947
          Width = 168
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'InfAdicionais'
          Title.Alignment = taCenter
          Title.Caption = 'Informa'#231#245'es Adicionais'
          Title.Color = 11140947
          Width = 207
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeProduto_Nota'
          Title.Alignment = taCenter
          Title.Caption = 'Nome do produto na nota'
          Title.Color = 11140947
          Width = 649
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome_Grupo'
          Title.Alignment = taCenter
          Title.Caption = 'Nome Grupo (Estrutura)'
          Title.Color = 11140947
          Width = 295
          Visible = True
        end>
    end
  end
end
