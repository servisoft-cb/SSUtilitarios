object frmRecebeXMLNovo_ListarXML: TfrmRecebeXMLNovo_ListarXML
  Left = 95
  Top = 35
  Width = 1192
  Height = 672
  Caption = 'Listar XMLs por pasta'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Shape2: TShape
    Left = 928
    Top = 21
    Width = 23
    Height = 16
    Brush.Color = clYellow
  end
  object Label4: TLabel
    Left = 954
    Top = 22
    Width = 91
    Height = 13
    Caption = 'Nota j'#225' lan'#231'ada'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object pnlFiltro: TPanel
    Left = 0
    Top = 0
    Width = 1176
    Height = 346
    Align = alTop
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 1174
      Height = 44
      Align = alTop
      BevelOuter = bvNone
      Color = 13290186
      TabOrder = 0
      object lblDiretorio: TLabel
        Left = 13
        Top = 1
        Width = 61
        Height = 16
        Caption = 'Diret'#243'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblLeitor: TLabel
        Left = 390
        Top = 1
        Width = 244
        Height = 16
        Caption = 'Localiza XML por Chave de acesso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape1: TShape
        Left = 760
        Top = 5
        Width = 23
        Height = 16
        Brush.Color = clYellow
      end
      object Label2: TLabel
        Left = 786
        Top = 6
        Width = 91
        Height = 13
        Caption = 'Nota j'#225' lan'#231'ada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 786
        Top = 21
        Width = 85
        Height = 13
        Caption = 'Sem Download'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape3: TShape
        Left = 760
        Top = 20
        Width = 23
        Height = 16
        Brush.Color = 13948116
      end
      object Shape4: TShape
        Left = 896
        Top = 5
        Width = 23
        Height = 16
        Brush.Color = 33023
      end
      object Label6: TLabel
        Left = 922
        Top = 6
        Width = 84
        Height = 13
        Caption = 'Sem Manifesto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 922
        Top = 21
        Width = 94
        Height = 13
        Caption = 'Nota Incompleta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape5: TShape
        Left = 896
        Top = 20
        Width = 23
        Height = 16
        Brush.Color = 16777088
      end
      object edtDiretorio: TDirectoryEdit
        Left = 13
        Top = 17
        Width = 300
        Height = 21
        InitialDir = 'C:\Delphi7\SSFacil'
        Ctl3D = False
        NumGlyphs = 1
        ParentCtl3D = False
        TabOrder = 0
        Text = 'C:\Delphi7\SSFacil'
        OnChange = edtDiretorioChange
      end
      object edtProcuraChave: TEdit
        Left = 390
        Top = 19
        Width = 300
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        OnKeyDown = edtProcuraChaveKeyDown
      end
      object btnAtualizar: TNxButton
        Left = 317
        Top = 8
        Width = 30
        Height = 30
        Glyph.Data = {
          FE0A0000424DFE0A00000000000036000000280000001E0000001E0000000100
          180000000000C80A0000130B0000130B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E7CEC7C386B2A8
          4CA49425A1890DA28708AA8C18B79D3DCDB876EAE2C8FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFC4C9908D8F1B8B890F938C15988C159B8B11
          A0880DA08707A28100A07D00A177009F6F00A27000D0B77BFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFDCE2C48596248893229296279596259692219B911E9C8D159E8B0F9F
          8709A28404A28101A47E01A67C02A87A00A56E00A26900E4D5B7FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1C281
          7C95208D9E338E9C3191992D9596289693239992209A8F189D8C12A0880BA086
          06A28301A38001A67D01A67B01AA7900AA7400A16000C8A25DFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFA1BA6E7D9D308AA23B8C
          A0368E9D33919A2E9497289594249792219A901C9A8B109B85039B8200A38403
          A28101A57E00A67C01A97A01A97801AA7302A76400BE8F3EFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFADC7877AA13588A64289A33E8CA1378F9E
          348E9A2F8F94238E8F188B890E8E83039D8F1CB9AE59C5B86E9D8000A38101A4
          7F00A77D01A77A01AB7900AA7401AC7101A86200C8A05DFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFD9E5CA71A23483A94887A74488A43F8BA23B8C9F3392A03A
          B3B86DCCCC98E6E6CCFFFFFFFFFFFFFFFFFFC4B86E977B00A28301A28000A67D
          00A67C02AA7900AA7601AB7300AF7001A65B00E4D4B6FFFFFFFFFFFF0000FFFF
          FFFFFFFF73AA417FAD4A84AA4985A84687A5418AA33C8BA036889829F4F4EBFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFE1DCB8B2A13E967600A07F00A57F00A77C01
          A97A01AA7800AA7302AE7101AE6D00AA6100FFFFFFFFFFFF0000FFFFFFB9D6A3
          73AC4480AE4C82AC4A84A84787A74188A43F8CA1388E9D32818E17EEEEDFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1EEDE9E7C00A17D00A77D01A77B01AA
          7900AB7501AD7201AF7000AB6200D3B17BFFFFFF0000FFFFFF6EAF497CB2517F
          B04F81AC4B84AA4887A84488A5408BA23A8CA0358C9C30838C14F0F0E2FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFF9C7800A47D00A67C02A97A00AA76
          01AA7400AE7100AF6C00AA6200FFFFFF0000DFEDD96AAF477CB3547DB04F80AE
          4B83AB4985A84687A6418AA23D899F338E9E338E992E868B11F2F2E6FFFFFFB7
          B264DCD7B1FFFFFFFFFFFFFFFFFFE7E1C69A7100A77C01A87B01AA7800AA7402
          AD7101AF6F00A95F00ECDEC80000B3D8A370B34E7BB4557CB1507FAF4D82AC4A
          85A84887A64384A138A2B4638C9D318E9C3290982A8B8C13F0F1E58C84039284
          02978709EAE6CDFFFFFFFFFFFFAB8E20A47A00A67B02AA7901AB7501AB7301AF
          7000AC6600D2AF75000093C87F72B65378B5567DB2537DB04E81AD4C84AA4881
          A43DB3C585A7B86A889D308F9D32909A2F9396278C8C1497922199901B9A8B10
          8F7800EBE7D1FFFFFFD7CA979F7500A77C01A87A00AA7801AA7301AD7100AE6A
          00C08D3C00007DBF6974B85676B6567CB4537CB15080AE4D82AC4A7BA138E4EB
          D5A0B563889F318E9E338E9B3092982B9495249492229B911E9B8D159B880C9A
          8000FFFFFFF0EDDD9B7300A67C01A87B01AA7800AA7401AD7201AE6E00B57917
          000072BC5C74B95976B75679B5557EB1517EAF4E82AC4B78A034FFFFFFB0C182
          8A9E3F90A042919F3E949B3997993799973199932B9B92269F9024988205DBD4
          B0FEFFFF9A7200A77D02A67B01A97A00AA7601AB7300AF7000B06F04000070BC
          5C73BA5A75B85878B6567BB2547DB04F80AE4C76A134FFFFFFD4DEBB7F9B2F8C
          A0378E9D32909A2F93972A949423979223A097329C8E179A8501BFAF5CFDFEFF
          997400A47F00A77D02A97A01A97800AA7302AD7100AE700400007BC16A71BA59
          75B95977B6577BB4557CB1507FAE4C76A438EEF3E7FFFFFF819D328AA0368D9E
          348E9C3193982C9596279593219B91209A8E179A8809B2A140E8E2C59C7900A2
          7F00A67D01A77B01AA7900AA7601AB7100B47B1700008FCA826DBA5874B95A75
          B85779B5557DB2517EB04E79A63ECEDCB5FFFFFFE6ECD879941D8B9F328D9C32
          92992E8C8F189393229891219A901B99890CB7A84CC0B15F9F7F00A28000A67D
          00A67C01A87A00AA7601A86F00BF913B0000B0D9A769B95572BA5B76B85777B6
          567CB2547CB14F7CAC4893B560FFFFFFFFFFFFE5EAD5859C2F849521808E16F0
          F1E48B8B1194911F9A911E9A8B11B1A4469C8301A28404A28100A47F00A67C00
          A87B01AA7801A66C00CFB2760000DDEFDA62B65073BB5A75B95976B7577AB455
          7DB1517FAF4D73A336E4EBD6FFFFFFFFFFFFFFFFFFD7DCB9AFB970FFFFFFF2F2
          E689870A98901E9B8F189B890D9F880BA08606A38301A38000A77D02A77B01AA
          7901A36800EBDFC70000FFFFFF65B7546FBB5B73B95A76B85778B5567CB2537E
          AF4E7FAC497DA53DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0E2
          8B8507998F1A9B8D149F890E9F8608A38403A18101A57E00A67C01A87900A46D
          00FFFFFF0000FFFFFFB1DAA967B75372BB5A75B95876B6567BB3547CB15080AE
          4C7FAA4681A43FF0F3E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEDE8C
          84039B8C159C8C109F870AA18505A28101A38000A67C01A27200CFB779FFFFFF
          0000FFFFFFFFFFFF64B65270BB5A74B95A75B7567AB5557CB25280AF4E81AC4B
          83A846789B2DA3B86ADDE3C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5ED958A
          109B8D119F890DA08607A28302A28001A67C00A07100FFFFFFFFFFFF0000FFFF
          FFFFFFFFD2E9CD5EB34874BA5A75B85877B6567CB3537CB04F7FAE4C84AB4985
          A8467D9D2FB7C687FFFFFFFFFFFFFFFFFFE6E7CFCBCC97B5B3659E95279B8C14
          9F8A0F9F8709A38503A28101996E00E2D7B4FFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFF9ED19466B64C74B95877B7577BB4557DB1517FAF4D81AC4A85A84883A3
          3AB8C88EB0BE7891A13B808F18888F198E9019918F1A99901F9B8F179D8C119F
          880BA186059B7700C0AB5AFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
          FFFF8FC87F67B44B76B75778B5567DB2527EB04E81AD4C84AA4885A84483A138
          869E338A9F328E9C3292992F93982895942498912199901B9C8D14A0890E987C
          00B49E3CFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFA0D09264B04375B6557DB3537CB04F80AE4C83AB4A86A74688A64189A33D8B
          A1378E9E348F9B3194982A9596259692229A911E9B8C13907D00BEB05DFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          D3E8CB6BB04A6FB0497BB14F80AF4E82AC4B84A94886A74488A4408BA1398E9F
          358E9C3292992D949628949321928A11928507DFDAB7FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFB6D6A373AD4671A83E7AA94280A94485A74487A5408AA23C8B9F348C9B2D
          8A95248A8E148D8E15C7C388FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFE0ECD6B9D19C9EBD728DAE5488A74289A33E93A848A6B361C1C78DE5
          E7CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000}
        TabOrder = 2
        OnClick = btnAtualizarClick
      end
    end
    object gridChave: TSMDBGrid
      Left = 1
      Top = 130
      Width = 1174
      Height = 215
      Align = alClient
      Ctl3D = False
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = gridChaveCellClick
      OnDblClick = gridChaveDblClick
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
      ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
      OnGetCellParams = gridChaveGetCellParams
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      ColCount = 11
      RowCount = 2
      Columns = <
        item
          Expanded = False
          FieldName = 'SERIE'
          Title.Color = 15194057
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUM_NOTA'
          Title.Color = 15194057
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTEMISSAO2'
          Title.Color = 15194057
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_NOTA'
          Title.Color = 15194057
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Color = 15194057
          Width = 325
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNPJ'
          Title.Color = 15194057
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHAVE_ACESSO'
          Title.Color = 15194057
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FILIAL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNPJ_FILIAL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_ARQUIVO'
          Visible = True
        end>
    end
    object NxFlipPanel1: TNxFlipPanel
      Left = 1
      Top = 45
      Width = 1174
      Height = 85
      Align = alTop
      Caption = ' Pesquisa '
      CollapseGlyph.Data = {
        7A010000424D7A01000000000000360000002800000009000000090000000100
        2000000000004401000000000000000000000000000000000000604830406048
        30FF604830FF604830FF604830FF604830FF604830FF604830FF60483040C0A8
        90FFFFF0E0FFE0D0C0FFE0C8B0FFE0C0B0FFD0B8A0FFD0B8A0FFD0B8A0FF6048
        30FFC0A890FFFFF8F0FFFFF0E0FFF0E0E0FFF0D8D0FFF0D8C0FFF0D0C0FFD0B8
        A0FF604830FFC0A890FFFFF8FFFFFFF8F0FFFFF0E0FFF0E0E0FFF0D8D0FFF0D0
        C0FFD0B8A0FF604830FFC0A8A0FFFFFFFFFF604830FF604830FF604830FF6048
        30FF604830FFE0C0B0FF604830FFC0A8A0FFFFFFFFFFFFFFFFFFFFF8FFFFFFF0
        F0FFFFF0E0FFF0E8E0FFE0C0B0FF604830FFC0B0A0FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF8FFFFFFF0F0FFFFF0E0FFE0D0C0FF604830FFC0B0A0FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF8FFFFFFF0F0FFF0F0E0FF604830FFC0B0A040C0B0
        A0FFC0B0A0FFC0A8A0FFC0A8A0FFC0A8A0FFC0A890FFC0A090FF60483040}
      Color = 13290186
      ExpandGlyph.Data = {
        7A010000424D7A01000000000000360000002800000009000000090000000100
        2000000000004401000000000000000000000000000000000000604830406048
        30FF604830FF604830FF604830FF604830FF604830FF604830FF60483040C0A8
        90FFFFF0E0FFE0D0C0FFE0C8B0FFE0C0B0FFD0B8A0FFD0B8A0FFD0B8A0FF6048
        30FFC0A890FFFFF8F0FFFFF0E0FFF0E0E0FF604830FFF0D8C0FFF0D0C0FFD0B8
        A0FF604830FFC0A890FFFFF8FFFFFFF8F0FFFFF0E0FF604830FFF0D8D0FFF0D0
        C0FFD0B8A0FF604830FFC0A8A0FFFFFFFFFF604830FF604830FF604830FF6048
        30FF604830FFE0C0B0FF604830FFC0A8A0FFFFFFFFFFFFFFFFFFFFF8FFFF6048
        30FFFFF0E0FFF0E8E0FFE0C0B0FF604830FFC0B0A0FFFFFFFFFFFFFFFFFFFFFF
        FFFF604830FFFFF0F0FFFFF0E0FFE0D0C0FF604830FFC0B0A0FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF8FFFFFFF0F0FFF0F0E0FF604830FFC0B0A040C0B0
        A0FFC0B0A0FFC0A8A0FFC0A8A0FFC0A8A0FFC0A890FFC0A090FF60483040}
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'MS Sans Serif'
      HeaderFont.Style = []
      FullHeight = 0
      object Label3: TLabel
        Left = 32
        Top = 28
        Width = 23
        Height = 13
        Alignment = taRightJustify
        Caption = 'Filial:'
      end
      object Label16: TLabel
        Left = 20
        Top = 48
        Width = 35
        Height = 13
        Alignment = taRightJustify
        Caption = 'Op'#231#227'o:'
      end
      object Label18: TLabel
        Left = 8
        Top = 68
        Width = 47
        Height = 13
        Alignment = taRightJustify
        Caption = 'Dt. Inicial:'
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 58
        Top = 20
        Width = 472
        Height = 21
        DropDownCount = 8
        Ctl3D = False
        LookupField = 'ID'
        LookupDisplay = 'NOME_INTERNO'
        ParentCtl3D = False
        TabOrder = 0
      end
      object dtInicial: TNxDatePicker
        Left = 58
        Top = 60
        Width = 95
        Height = 21
        TabOrder = 1
        Text = '17/07/2016'
        HideFocus = False
        Date = 42568.000000000000000000
        NoneCaption = 'None'
        TodayCaption = 'Today'
      end
      object cbxOpcao: TNxComboBox
        Left = 58
        Top = 40
        Width = 472
        Height = 21
        Cursor = crArrow
        TabOrder = 2
        Text = 
          'Todas as notas (excetos as gravadas no sistema e marcadas como o' +
          'cultas)'
        ReadOnly = True
        HideFocus = False
        Style = dsDropDownList
        AutoCompleteDelay = 0
        ItemIndex = 1
        Items.Strings = (
          'Todas as Notas'
          
            'Todas as notas (excetos as gravadas no sistema e marcadas como o' +
            'cultas)'
          'Somente as notas n'#227'o manifestadas'
          'Somente as notas n'#227'o sem download (n'#227'o baixado o xml)'
          ''
          '')
      end
      object NxButton1: TNxButton
        Left = 532
        Top = 56
        Width = 133
        Caption = 'Efetuar Pesquisa'
        TabOrder = 3
      end
      object btnApagarImportados: TButton
        Left = 752
        Top = 43
        Width = 164
        Height = 25
        Caption = 'Apagar XML j'#225' importados'
        TabOrder = 4
        OnClick = btnApagarImportadosClick
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 346
    Width = 1176
    Height = 40
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 30
      Top = 3
      Width = 468
      Height = 18
      Caption = 'Para selecionar a nota, d'#234' duplo clique na Grid acima.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 386
    Width = 1176
    Height = 247
    Align = alClient
    Ctl3D = False
    DataSource = DMRecebeXMLNovo_ListarXML.dscdsNFeItens
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 2
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 8
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'CodProd'
        Title.Color = 11468718
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EAN'
        Title.Color = 11468718
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'xProd'
        Title.Color = 11468718
        Width = 405
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unidade'
        Title.Color = 11468718
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qtd'
        Title.Color = 11468718
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrUnitario'
        Title.Color = 11468718
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrTotal'
        Title.Color = 11468718
        Width = 100
        Visible = True
      end>
  end
end
