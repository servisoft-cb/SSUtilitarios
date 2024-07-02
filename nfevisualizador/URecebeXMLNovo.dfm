object frmRecebeXMLNovo: TfrmRecebeXMLNovo
  Left = 50
  Top = 11
  Width = 1266
  Height = 704
  BorderWidth = 5
  Caption = 'Recebe XML NFe'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1240
    Height = 161
    Align = alTop
    BevelOuter = bvNone
    Color = 15128264
    TabOrder = 0
    object RzPageControl1: TRzPageControl
      Left = 133
      Top = 0
      Width = 1107
      Height = 161
      ActivePage = TS_Cabecalho
      ActivePageDefault = TS_Cabecalho
      Align = alClient
      TabIndex = 0
      TabOrder = 0
      FixedDimension = 19
      object TS_Cabecalho: TRzTabSheet
        Color = 15128264
        Caption = 'Dados do cabe'#231'alho da Nota'
        object Label91: TLabel
          Left = 285
          Top = 19
          Width = 105
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cliente Triangular:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SpeedButton1: TSpeedButton
          Left = 707
          Top = 9
          Width = 23
          Height = 22
          Hint = 'Atualiza tabela de cliente'
          Glyph.Data = {
            E6040000424DE604000000000000360000002800000014000000140000000100
            180000000000B0040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFDF9FAFBF2
            F1F1EEEEEEEBEBEBE9EAECE4E8E9E2E4E7E3E4E6E4E6E7E6E9EAEBECF0F2F4F7
            F2F6F5F7F6F6FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFF1EBE9D0C5BADBDEE2C9CC
            CEC1C3C4B6B0AEB1A397AA876AA6764FA87044AC754BB39174C7BCB3D5D6DBE5
            E7E8EFEFEEFDFDFDFFFFFFFFFFFFFFFFFFEBE5DC9F6B46DBDBDEC9C8CAB9A796
            B68861C18451D29861CD9460CE945CCC9258C58346B26E36C09E83E3E1E3EFF1
            F2FBFBFBFFFFFFFFFFFFFFFFFFF5F0EEBC8A63C3A48CC3A58CC68F61CF9B68C8
            9565CA9361CD9364C18951BF864FC18853C6884FB8763BCEB3A1F7FCFFFEFEFE
            FFFFFFFFFFFFFFFFFFF7F3EFBD916CD5B493D6AD8BD8AA84CB9668CB9664BA85
            53BA8A61C6A281BF926DBB814EC08F67B47437BE8C5EEDE6DFFFFFFFFFFFFFFF
            FFFFFFFFFFF6F2EEB98F69E3C2A3DDB99AE0BF9CCA9C72BD9473E2CFC0E5D9D0
            F1EEECEFE7E3E1CAB1DCC3AACFB193A96B33E4D1BFFFFFFFFFFFFFFFFFFFFFFF
            FFF7F2EFBA9069DFBB9BDEBD9DC79F7BD8C4B1F1EDEAFFFFFFFFFFFFFFFFFFFF
            FFFFF7F3EEEAD6C4FEFEFEB58560D7BDA9FFFFFFFFFFFFFFFFFFFFFFFFF7F3EF
            BD946CDFBC9CD9B996D8B694C8AE97F6F6F6FFFFFFFEFFFFFFFEFFFFFFFFFBF9
            F7F4EBE5FFFFFFC1A287D9C5B5FFFFFFFFFFFFFFFFFFFFFFFFF5EEEAB07E53E0
            BD9FDCB793E2BE9FCE9E73D0B499FCFAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFE2D6CBEBE3DCFFFFFFFFFFFFFFFFFFFFFFFFF9F9F5BEA994C2A797BFA1
            92BB9E8CB99C89B39983F7F5F2FFFFFFAB7957BB967BB79676B89778B89777B9
            997EECE3DCFFFFFFFFFFFFFFFFFFFFFFFFF5F0E8CAB09BFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFC9B7A7D3A679DBB088D9AA84DCAD87C7986EE9DB
            CDFFFFFFFFFFFFFFFFFFFFFFFFE6D8CEB67B50E8D0BCDFC7B7F3EFEBFFFFFFFE
            FFFEFEFFFEFFFFFFFFFFFFBA9F8CD6A57DCF9B6ECD9B6CBF9164E9DDD2FFFFFF
            FFFFFFFFFFFFFFFFFFEDE4DCA86B3BBF865CC29776EAE2DBFFFFFFFFFFFFFFFF
            FFFDFFFFDED0C4D4B8A3C79B71D1A478CD9E70BF9265E8DDD0FFFFFFFFFFFFFF
            FFFFFFFFFFF9F5F2BD8F6DBC8A639D5F2DB58968E0D2C8E7DCD3DAC8B8DECBBA
            C09A77D4A882D0A479D2A478D3A77CBF8E64E8DBCFFFFFFFFFFFFFFFFFFFFFFF
            FFF7F5F2CAAB93E5CCB7CCA788C29471CDAC8ED9BDA3CAA98AD7B094E8CEB2DB
            BEA1DDB995C99D76C0946FC39168EADACFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFF
            E1D2C6C5A284F6E3D0F0DCC9E6CEB7E6CCB5E5CBB6E7CCB5E5CCB2E3C2A4C299
            78CFB9A6D2BEADB58257E7D5C6FFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFDFEFEDA
            C9BBBA9675D4B193EDD1B8EED3BCECCEB6D1AF8EBE916DC2A386EEE6E2F9F8F6
            FFFFFFBD9A80DBC9BAFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFFFDFEFEF6F2
            EFD9C8BDBFA38CC3A388B99D83CFBEACFAF6F4F7F4F2FFFFFFFFFFFFFFFFFFF8
            F7F5F8F7F4FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFFFFFFFFFFFF
            FFFEFEFFFFFFFFFFFFFF}
          Margin = 0
        end
        object Label114: TLabel
          Left = 359
          Top = 37
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Filial:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label119: TLabel
          Left = 398
          Top = 77
          Width = 86
          Height = 13
          Alignment = taRightJustify
          Caption = 'Local Estoque:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label122: TLabel
          Left = 417
          Top = 57
          Width = 141
          Height = 13
          Alignment = taRightJustify
          Caption = 'Gravar o Emitente como:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label75: TLabel
          Left = 59
          Top = 10
          Width = 83
          Height = 16
          Caption = 'Dt.Entrada:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label64: TLabel
          Left = 73
          Top = 32
          Width = 61
          Height = 16
          Alignment = taRightJustify
          Caption = 'N'#186' Nota:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 92
          Top = 53
          Width = 42
          Height = 16
          Alignment = taRightJustify
          Caption = 'S'#233'rie:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label93: TLabel
          Left = 106
          Top = 119
          Width = 58
          Height = 13
          Caption = 'Gerar como:'
        end
        object Label99: TLabel
          Left = 68
          Top = 77
          Width = 66
          Height = 16
          Alignment = taRightJustify
          Caption = 'Emiss'#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label116: TLabel
          Left = 4
          Top = 99
          Width = 130
          Height = 13
          Alignment = taRightJustify
          Caption = 'Finalidade (Aquisi'#231#227'o):'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxDBLookupCombo1: TRxDBLookupCombo
          Left = 393
          Top = 9
          Width = 313
          Height = 21
          DropDownCount = 15
          DropDownWidth = 700
          Ctl3D = False
          LookupField = 'CODIGO'
          LookupDisplay = 'NOME;CNPJ_CPF'
          LookupSource = DMRecebeXML.dsCliente
          ParentCtl3D = False
          TabOrder = 6
        end
        object RxDBLookupCombo6: TRxDBLookupCombo
          Left = 393
          Top = 29
          Width = 313
          Height = 21
          DropDownCount = 8
          Ctl3D = False
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = DMRecebeXML.dsFilial
          ParentCtl3D = False
          TabOrder = 7
          OnExit = RxDBLookupCombo6Exit
        end
        object rxdbLocalEstoque: TRxDBLookupCombo
          Left = 486
          Top = 69
          Width = 220
          Height = 21
          DropDownCount = 8
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          LookupField = 'ID'
          LookupDisplay = 'NOME;COD_LOCAL'
          LookupSource = DMRecebeXML.dsLocal_Estoque
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 9
          OnExit = rxdbLocalEstoqueExit
        end
        object cbTpEmitente: TNxComboBox
          Left = 560
          Top = 49
          Width = 146
          Height = 21
          Cursor = crArrow
          TabOrder = 8
          Text = 'Cliente'
          ReadOnly = True
          HideFocus = False
          Style = dsDropDownList
          AutoCompleteDelay = 0
          ItemIndex = 1
          Items.Strings = (
            'Fornecedor'
            'Cliente'
            'Ambos')
        end
        object DateEdit1: TDateEdit
          Left = 137
          Top = 3
          Width = 130
          Height = 22
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          NumGlyphs = 2
          ParentCtl3D = False
          ParentFont = False
          StartOfWeek = Sun
          TabOrder = 0
        end
        object DBEdit34: TDBEdit
          Left = 137
          Top = 26
          Width = 130
          Height = 22
          TabStop = False
          Color = 13882323
          Ctl3D = False
          DataField = 'nNF'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit60: TDBEdit
          Left = 137
          Top = 47
          Width = 55
          Height = 22
          TabStop = False
          Color = 13882323
          Ctl3D = False
          DataField = 'serie'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object ComboBox2: TComboBox
          Left = 168
          Top = 113
          Width = 92
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 1
          TabOrder = 5
          Text = 'Entrada'
          Items.Strings = (
            'Sa'#237'da'
            'Entrada')
        end
        object ckAtualizaRef: TNxCheckBox
          Left = 486
          Top = 108
          Width = 220
          Height = 21
          TabOrder = 10
          Text = 'ckAtualizaRef'
          Caption = 'Ajustar Refer'#234'ncia'
        end
        object DateEdit2: TDateEdit
          Left = 137
          Top = 68
          Width = 130
          Height = 22
          TabStop = False
          Color = 13882323
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          NumGlyphs = 2
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          StartOfWeek = Sun
          TabOrder = 3
        end
        object cbFinalidade: TNxComboBox
          Left = 137
          Top = 90
          Width = 130
          Height = 21
          Cursor = crArrow
          TabOrder = 4
          Text = 'Outros'
          ReadOnly = True
          HideFocus = False
          Style = dsDropDownList
          AutoCompleteDelay = 0
          DropDownCount = 15
          ItemIndex = 4
          Items.Strings = (
            'Consumo'
            'Revenda'
            'Industrializa'#231#227'o'
            'Usar conforme produto'
            'Outros'
            '')
        end
      end
      object TS_Itens_Geral: TRzTabSheet
        Color = 15128264
        Caption = 'Dados dos itens (Geral)'
        object Label145: TLabel
          Left = 76
          Top = 36
          Width = 63
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo Sped:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label132: TLabel
          Left = 46
          Top = 80
          Width = 93
          Height = 13
          Alignment = taRightJustify
          Caption = 'Ref.Seq. Inicial:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label71: TLabel
          Left = 32
          Top = 12
          Width = 108
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo dos Produtos:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CurrencyEdit2: TCurrencyEdit
          Left = 143
          Top = 72
          Width = 97
          Height = 21
          AutoSize = False
          BorderStyle = bsNone
          Color = clSilver
          Ctl3D = False
          DecimalPlaces = 0
          DisplayFormat = '0'
          ParentCtl3D = False
          TabOrder = 0
        end
        object cbTipoSped: TNxComboBox
          Left = 142
          Top = 28
          Width = 184
          Height = 21
          Cursor = crArrow
          TabOrder = 1
          Text = '04 - Produto Acabado'
          ReadOnly = True
          HideFocus = False
          Style = dsDropDownList
          AutoCompleteDelay = 0
          DropDownCount = 15
          ItemIndex = 4
          Items.Strings = (
            '00 - Mercadoria para Revenda'
            '01- Mat'#233'ria-Prima'
            '02- Embalagem'
            '03 - Produto em Processo'
            '04 - Produto Acabado'
            '05 - SubProduto'
            '06 - Produto Intermedi'#225'rio'
            '07 - Material de Uso e Consumo'
            '08 - Ativo Imobilizado'
            '09 - Servi'#231'os'
            '10 - Outros Insumos'
            '99 - Outras'
            '')
        end
        object ComboBox1: TNxComboBox
          Left = 142
          Top = 7
          Width = 121
          Height = 21
          Cursor = crArrow
          TabOrder = 2
          ReadOnly = True
          HideFocus = False
          Style = dsDropDownList
          AutoCompleteDelay = 0
          DropDownCount = 15
          Items.Strings = (
            'Produto'
            'Material'
            'Material Consumo'
            'Imobilizado')
        end
      end
    end
    object Panel5: TPanel
      Left = 0
      Top = 0
      Width = 133
      Height = 161
      Align = alLeft
      BevelOuter = bvNone
      Color = 15128264
      TabOrder = 1
      object btnAbrirXML: TNxButton
        Left = 3
        Top = 38
        Width = 126
        Height = 30
        Caption = 'Abrir XML'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000FFFFFF148BD2
          148BD2148BD25FB0E1ABD6EFEFF7FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF148BD28CE4F698EEFB73D5F150BBE632A3DC148BD2148BD247A5DC
          8AC6E9CDE6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF158CD385DCF3A4F7FE8CF1FF81EFFF73EBFF69
          E8FF6DD6F34DBDE932A7DF1990D4148BD2148BD22E98D773BAE5B4DAF1F3F9FD
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF198FD457BBE5A5F7FE95F4
          FF87F0FF7CEDFF70EAFF63E6FF58E3FF4DE0FF46DDFF40DCFF46C7F031AAE11C
          94D6148BD2148BD2FAFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF148BD2
          2698D7A7F7FE9FF6FF8DF2FF82EFFF76EBFF6AE8FF5FE5FF53E1FF49DFFF41DC
          FF3FDCFF3FDCFF3FDCFF3FDCFF239DDB44A3DCFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF148BD2148BD28BDFF4AAF7FE92F3FF88F0FF7EEEFF71EAFF66E7FF
          59E3FF4FE1FF46DEFF3FDCFF3FDCFF3FDCFF3FDCFF4CCBF1148BD2FBFDFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF148BD236B5E659BBE5ABF8FE9BF5FF8EF2FF84
          F0FF79EDFF6CE9FF60E6FF55E2FF4BDFFF43DCFF3FDCFF3FDCFF3FDCFF3FDCFF
          259EDB43A3DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF148BD25CE3FC2798D7A6F8
          FFA5F8FE93F4FF8AF2FF7FEEFF73EBFF67E7FF5BE3FF50E0FF47DEFF40DDFF3F
          DCFF3FDCFF3FDCFF50CCF1148BD2F5FAFEFFFFFFFFFFFFFFFFFFFFFFFF148BD2
          61E9FF148BD28EE0F4ABF9FE9AF5FF90F3FF85EFFF7AEDFF6EEAFF62E6FF56E3
          FF4CE0FF43DEFF3FDCFF3FDCFF3FDCFF3FDCFF269EDC379CD9FFFFFFFFFFFFFF
          FFFFFFFFFF148BD250E5FF0D9FE059BBE5A9F8FEA3F7FF94F4FF8CF2FF81EEFF
          75EBFF68E8FF5CE4FF52E1FF48DFFF40DCFF3FDCFF3FDCFF3FDCFF54CEF2148B
          D2EEF7FCFFFFFFFFFFFFFFFFFF148BD23FE0FF03BEF62999D8A5F8FFABF9FE99
          F6FF98F4FFA0F5FE97F3FE88F0FF75EBFF63E6FF50E1FF45DDFF3FDCFF3FDCFF
          3FDCFF3FDCFF279FDC2C97D7FFFFFFFFFFFFFFFFFF148BD22EDCFF00C8FD148B
          D2148BD234A1DB4EB3E267C6E97CD5F092E6F79EF6FE9DF5FE96F3FF8CF1FE72
          E9FE41DDFF3FDCFF3FDCFF3FDCFF57CFF2148BD2D7EBF8FFFFFFFFFFFF148BD2
          2CDCFF00CBFF01C6FC08B0EC0DA3E31196DA148BD2148BD2148BD2148BD231A0
          DB47B2E25BC3E96BD2F07BE1F789F0FF83EEFE7CECFE76EBFF279FDC148BD2FF
          FFFFFFFFFF148BD22DDBFF00CBFF00CBFF00CBFF00CBFF00CBFF00CBFF00CBFF
          00CAFE05BCF409ADEA0E9FE0138DD3148BD2148BD2148BD22B9FDB3CAFE24BBE
          E93DB4E5148BD2EAF5FBFFFFFF148BD22EDAFF00CBFF00CBFF00CBFF00CBFF00
          CBFF00CBFF00CBFF00CBFF00CBFF00CBFF00CBFF00CBFF00CBFF00CBFF03C2F8
          5FCDEE148BD2178DD3148BD2148BD2DDEFF9FFFFFF148BD22EDAFF00CBFF01CC
          FF01CCFF01CCFF01CCFF01CCFF00CAFF4CE3FF95F7FF90F5FF90F5FF8FF5FF8F
          F5FF8FF5FF8DF5FF8DF5FF148BD2EEF7FCFFFFFFFFFFFFFFFFFFFFFFFF148BD2
          2FDAFF00C9FF00CAFF00CAFF00CAFF00CAFF00CAFF00CCFF24A1DF54AADD148B
          D2148BD2148BD2148BD2289E4522973C1C8F3317872A1281220F7B1B429548FF
          FFFFFFFFFF148BD2AFFDFF7AEFFF7CEFFF7CEFFF7CEFFF7CEFFF7CEFFF7EF3FF
          58B2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5AB46C39B45E5AD98442BE693AB5
          5F35AF580C7716FFFFFFFFFFFF1F91D42497D6148BD2148BD2148BD2148BD214
          8BD2148BD22295D5B7DBF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF55AE65
          32AC555AD9843AB55F35AF580C7716FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97D4A1FFFFFFFF
          FFFFFFFFFF22973C5AD98442BE693AB55F35AF580C7716FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF35AF5863BE76C7E6CA289E455AD9844BCA7442BE69259B4135AF580C7716FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF65C17A44C16C37B25B5AD98454D37D4BCA7417872A489D
          5121953A0C7716FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAE9CD31AB534DCC775AD98454D37D
          1C8F33BFDDC1FFFFFF45984C0C7716FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9E8CC2D
          A54C289E4522973CC1E0C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentFont = False
        TabOrder = 0
        Transparent = True
        OnClick = btnAbrirXMLClick
      end
      object btnGravarNFe: TNxButton
        Left = 3
        Top = 98
        Width = 126
        Height = 30
        Caption = 'Gravar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0DED3A2BCA6789678688A69688A
          69789678A2BDA7D0DED3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0C5B3305F322B592C2B5629
          3B7043447D50447D503B70432B56292B592C305F32AFC5B3FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDE8E0688F6C2C5D2E3F
          784A6BB68B86DBB187DEB384D8AE84D8AE87DEB386DBB16BB68B3F784A2C5D2E
          688E6CDDE8E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1E0D42F64
          372C613370B78E8EDFB77ED1A469BD855AB47459B27159B2715AB47469BD857E
          D1A48EDFB770B78E2C61332F6337D0E0D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          DDE9E12F683A38734488D3AC8AD7AE61B87C50AE6654B16C56B26E56B26E56B2
          6E56B26E54B16C50AE6661B87C8AD7AE88D2AC3874442F683ADDE9E1FFFFFFFF
          FFFFFFFFFFFFFFFF6896722B67388DD4AF8AD6AD55B16C56B06E59B27259B272
          59B27259B27259B27259B27259B27259B27256B06E55B16C8AD6AD8DD4AF2B67
          37699673FFFFFFFFFFFFFFFFFFB1CBB82A6A397BBD9796DCB65AB1705BB4715D
          B5745DB5745DB57455B16D4FAE675DB5735DB5745DB5745DB5745DB5745BB471
          5AB17096DCB67BBD972A6938B1CCB9FFFFFFFFFFFF2F7544428659A6E5C76CBD
          845BB3715EB6755EB6755EB5754EAE6780C693CAE9D241A95D5DB5745EB6755E
          B6755EB6755EB6755BB3716ABD84A6E5C74286592E7443FFFFFFD2E4D828713E
          84C4A097D8B358B16E61B67961B67961B67851AF698BCB9BFFFFFFFFFFFFD1EB
          D94DAD665FB57761B67961B67961B67961B67958B16E97D8B384C4A028713ED3
          E4D9A6C9B124743EB0E6CB7DC69662B67766B97C65B87B4EAE68A0D6AFFFFFFF
          FFFFFFFFFFFFFFFFFFDFF1E349AC6463B77966B97C66B97C66B97C62B6777DC6
          96B0E6CB24743EA7CAB376AD8A408D5CB5E7D16DBC8367B97B68B97D5FB576B5
          DFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9F5ED58B37065B87A69BA7D
          69BA7D67B97B6DBC83B5E7D1408D5C76AC8A67A37E4D996EB3E5CD6DBB826ABA
          7F68B97D7CC490FFFFFFFFFFFFFFFFFFFFFFFFFCFDFCFFFFFFFFFFFFFFFFFFF2
          F9F456B06E67B87D6CBB816ABA7F6DBB82B3E5CD4D996E67A37E66A77F509C6F
          B9E6D071BD866DBB826FBB8465B77C76C289FFFFFFFFFFFF99D2A851AF6AFFFF
          FFFFFFFFFFFFFFFFFFFFFAFDFA68B87D69B87F6DBB8271BD86B9E6D0509C6F66
          A77F75B18E409564C3EBDA76BF8B70BD8572BE8772BE8768B87E85C9969FD3AD
          61B6796BBA8171C087FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF76C18A6DBB8276BF
          8BC3EBDA40956474B18EA6D0B820854AC4EADB8ECEA270BD8474C08974C08974
          C08970BD856DBC8274C08974C0896CBB8176C289FFFFFFFFFFFFFFFFFFFFFFFF
          8BCB9C6CBB808ECEA2C4EADB1F8449A8D2BAD3E9DC218B4F99CFB4B2E0C76EBB
          7F79C18A79C18A79C18A79C18A79C18A79C18A79C18A79C18A6EBB818FCD9FFF
          FFFFDDEFE16CBD8072BD856EBB7FB2E0C799CFB4208A4ED4E9DEFFFFFF299459
          45A26FCFEDE588CB9C77BF897CC28E7CC28E7CC28E7CC28E7CC28E7CC28E7CC2
          8E7CC28E72BD8586CA986AB97E7AC08C77BF8988CB9CCFEDE545A26F279358FF
          FFFFFFFFFFB1D9C32091549ED2B8C6E8DC7AC28B7BC18D7DC2907DC2907DC290
          7DC2907DC2907DC2907DC2907DC2907AC18D7DC2907BC18D7AC28BC6E8DA9ED2
          B81F9154B2DAC4FFFFFFFFFFFFFFFFFF65B78C209558C7E7D9C4E6D87DC38C7C
          C28D80C49180C49180C49180C49180C49180C49180C49180C4917CC28D7DC38C
          C4E6D8C7E7D920955864B68CFFFFFFFFFFFFFFFFFFFFFFFFDFF0E7259D6036A4
          6CCCE8DFCFEBE193CEA379C38880C69083C79283C79383C79383C79280C69079
          C38893CEA3CFEBE1CCE8DF36A46C249D5FDFF1E8FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFD3ECDF24A0631F9D5EA9D9C4E4F3F3C9E6DBA4D5B48CCB9B89C99A89C9
          9A8CCB9BA4D5B4C9E6DBE4F3F3A9D9C41F9D5E24A062D3ECDFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF1E862BE931B9F5F48B17FACDCC8E7F2F4
          EBF5F6E3F0F0E3F0F0EBF5F6E7F2F4ACDCC848B17F1B9F5F63BE93DFF1E9FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2DFCA26
          A86D1BA26318A26141B27F57BA8D57BA8D41B27F18A1611BA26325A76CB2DFCA
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFD5EEE3AADDC672C9A162C39762C39772C9A1ABDDC6D6
          EFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentFont = False
        TabOrder = 1
        Transparent = True
        OnClick = btnGravarNFeClick
      end
      object btnListarXmls: TNxButton
        Left = 3
        Top = 8
        Width = 126
        Height = 30
        Caption = 'Listar XMLs'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000FFFFFF148BD2
          148BD2148BD25FB0E1ABD6EFEFF7FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF148BD28CE4F698EEFB73D5F150BBE632A3DC148BD2148BD247A5DC
          8AC6E9CDE6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF158CD385DCF3A4F7FE8CF1FF81EFFF73EBFF69
          E8FF6DD6F34DBDE932A7DF1990D4148BD2148BD22E98D773BAE5B4DAF1F3F9FD
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF198FD457BBE5A5F7FE95F4
          FF87F0FF7CEDFF70EAFF63E6FF58E3FF4DE0FF46DDFF40DCFF46C7F031AAE11C
          94D6148BD2148BD2FAFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF148BD2
          2698D7A7F7FE9FF6FF8DF2FF82EFFF76EBFF6AE8FF5FE5FF53E1FF49DFFF41DC
          FF3FDCFF3FDCFF3FDCFF3FDCFF239DDB44A3DCFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF148BD2148BD28BDFF4AAF7FE92F3FF88F0FF7EEEFF71EAFF66E7FF
          59E3FF4FE1FF46DEFF3FDCFF3FDCFF3FDCFF3FDCFF4CCBF1148BD2FBFDFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF148BD236B5E659BBE5ABF8FE9BF5FF8EF2FF84
          F0FF79EDFF6CE9FF60E6FF55E2FF4BDFFF43DCFF3FDCFF3FDCFF3FDCFF3FDCFF
          259EDB43A3DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF148BD25CE3FC2798D7A6F8
          FFA5F8FE93F4FF8AF2FF7FEEFF73EBFF67E7FF5BE3FF50E0FF47DEFF40DDFF3F
          DCFF3FDCFF3FDCFF50CCF1148BD2F5FAFEFFFFFFFFFFFFFFFFFFFFFFFF148BD2
          61E9FF148BD28EE0F4ABF9FE9AF5FF90F3FF85EFFF7AEDFF6EEAFF62E6FF56E3
          FF4CE0FF43DEFF3FDCFF3FDCFF3FDCFF3FDCFF269EDC379CD9FFFFFFFFFFFFFF
          FFFFFFFFFF148BD250E5FF0D9FE059BBE5A9F8FEA3F7FF94F4FF8CF2FF81EEFF
          75EBFF68E8FF5CE4FF52E1FF48DFFF40DCFF3FDCFF3FDCFF3FDCFF54CEF2148B
          D2EEF7FCFFFFFFFFFFFFFFFFFF148BD23FE0FF03BEF62999D8A5F8FFABF9FE99
          F6FF98F4FFA0F5FE97F3FE88F0FF75EBFF63E6FF50E1FF45DDFF3FDCFF3FDCFF
          3FDCFF3FDCFF279FDC2C97D7FFFFFFFFFFFFFFFFFF148BD22EDCFF00C8FD148B
          D2148BD234A1DB4EB3E267C6E97CD5F092E6F79EF6FE9DF5FE96F3FF8CF1FE72
          E9FE41DDFF3FDCFF3FDCFF3FDCFF57CFF2148BD2D7EBF8FFFFFFFFFFFF148BD2
          2CDCFF00CBFF01C6FC08B0EC0DA3E31196DA148BD2148BD2148BD2148BD231A0
          DB47B2E25BC3E96BD2F07BE1F789F0FF83EEFE7CECFE76EBFF279FDC148BD2FF
          FFFFFFFFFF148BD22DDBFF00CBFF00CBFF00CBFF00CBFF00CBFF00CBFF00CBFF
          00CAFE05BCF409ADEA0E9FE0138DD3148BD2148BD2148BD22B9FDB3CAFE24BBE
          E93DB4E5148BD2EAF5FBFFFFFF148BD22EDAFF00CBFF00CBFF00CBFF00CBFF00
          CBFF00CBFF00CBFF00CBFF00CBFF00CBFF00CBFF00CBFF00CBFF00CBFF03C2F8
          5FCDEE148BD2178DD3148BD2148BD2DDEFF9FFFFFF148BD22EDAFF00CBFF01CC
          FF01CCFF01CCFF01CCFF01CCFF00CAFF4CE3FF95F7FF90F5FF90F5FF8FF5FF8F
          F5FF8FF5FF8DF5FF8DF5FF148BD2EEF7FCFFFFFFFFFFFFFFFFFFFFFFFF148BD2
          2FDAFF00C9FF00CAFF00CAFF00CAFF00CAFF00CAFF00CCFF24A1DF54AADD148B
          D2148BD2148BD2148BD2289E4522973C1C8F3317872A1281220F7B1B429548FF
          FFFFFFFFFF148BD2AFFDFF7AEFFF7CEFFF7CEFFF7CEFFF7CEFFF7CEFFF7EF3FF
          58B2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5AB46C39B45E5AD98442BE693AB5
          5F35AF580C7716FFFFFFFFFFFF1F91D42497D6148BD2148BD2148BD2148BD214
          8BD2148BD22295D5B7DBF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF55AE65
          32AC555AD9843AB55F35AF580C7716FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97D4A1FFFFFFFF
          FFFFFFFFFF22973C5AD98442BE693AB55F35AF580C7716FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF35AF5863BE76C7E6CA289E455AD9844BCA7442BE69259B4135AF580C7716FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF65C17A44C16C37B25B5AD98454D37D4BCA7417872A489D
          5121953A0C7716FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAE9CD31AB534DCC775AD98454D37D
          1C8F33BFDDC1FFFFFF45984C0C7716FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9E8CC2D
          A54C289E4522973CC1E0C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentFont = False
        TabOrder = 2
        Transparent = True
      end
    end
  end
  object pnlMensagem: TNxPanel
    Left = 0
    Top = 161
    Width = 1240
    Height = 40
    Align = alTop
    UseDockManager = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -27
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    Visible = False
  end
  object NxPageControl1: TNxPageControl
    Left = 0
    Top = 201
    Width = 1240
    Height = 454
    ActivePage = TS_Emitente
    ActivePageIndex = 2
    Align = alClient
    TabOrder = 2
    Margin = 0
    Spacing = 0
    TabHeight = 17
    object TS_Itens: TNxTabSheet
      ActiveTabColor = clYellow
      Caption = 'Itens'
      PageIndex = 0
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'MS Sans Serif'
      TabFont.Style = []
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 0
        Width = 1240
        Height = 325
        Align = alClient
        Ctl3D = False
        DataSource = DMRecebeXML.dsmItensNota
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        TabOrder = 0
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
        ExOptions = [eoDisableDelete, eoDisableInsert, eoDrawGraphicField, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 28
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Grafico'
            Title.Alignment = taCenter
            Title.Caption = 'Custo'
            Title.Color = 11140947
            Width = 45
            Visible = True
          end
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
            FieldName = 'CFOP'
            ReadOnly = True
            Title.Color = 11140947
            Width = 38
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CodProduto'
            ReadOnly = True
            Title.Color = 11140947
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CodProdutoInterno'
            ReadOnly = True
            Title.Color = 11140947
            Width = 48
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodBarra'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Color = 11140947
            Width = 101
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeProduto'
            ReadOnly = True
            Title.Color = 11140947
            Width = 391
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Tamanho'
            Title.Alignment = taCenter
            Title.Caption = 'Tam.'
            Title.Color = 11140947
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome_Cor'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Nome Cor'
            Title.Color = 11140947
            Width = 117
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Referencia_Int'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia Interna'
            Title.Color = 11140947
            Width = 88
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'UnidadeInterno'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Unid. da Venda'
            Title.Color = 11140947
            Width = 40
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
            FieldName = 'QtdPacote'
            ReadOnly = True
            Title.Alignment = taCenter
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
            ReadOnly = True
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
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Venda Calculada'
            Title.Color = 11140947
            Width = 78
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
            FieldName = 'Obs_Complementar'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Obs. Complementar'
            Title.Color = 11140947
            Width = 168
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'InfAdicionais'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Informa'#231#245'es Adicionais'
            Title.Color = 11140947
            Width = 207
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeProduto_Nota'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Nome do produto na nota'
            Title.Color = 11140947
            Width = 649
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Gravar_Adic_Prod'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Gravar Inf. Adic. No Nome do Produto'
            Title.Color = 11140947
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Preco_Custo_Total'
            Title.Color = 11140947
            Visible = True
          end>
      end
      object Panel7: TPanel
        Left = 0
        Top = 366
        Width = 1240
        Height = 67
        Align = alBottom
        Color = clSilver
        TabOrder = 1
        DesignSize = (
          1240
          67)
        object Shape1: TShape
          Left = 984
          Top = 9
          Width = 25
          Height = 16
          Anchors = [akTop, akRight]
          Brush.Color = clRed
        end
        object Label67: TLabel
          Left = 1012
          Top = 12
          Width = 115
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Produto n'#227'o encontrado'
        end
        object Shape2: TShape
          Left = 811
          Top = 9
          Width = 25
          Height = 16
          Anchors = [akTop, akRight]
          Brush.Color = clYellow
        end
        object Shape3: TShape
          Left = 811
          Top = 39
          Width = 25
          Height = 16
          Anchors = [akTop, akRight]
          Brush.Color = clAqua
        end
        object Label68: TLabel
          Left = 840
          Top = 43
          Width = 86
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Unidade Diferente'
        end
        object Shape4: TShape
          Left = 984
          Top = 24
          Width = 25
          Height = 16
          Anchors = [akTop, akRight]
          Brush.Color = clGray
        end
        object Label90: TLabel
          Left = 1012
          Top = 27
          Width = 109
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'CFOP N'#227'o Encontrada'
        end
        object Label76: TLabel
          Left = 839
          Top = 12
          Width = 124
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'N'#227'o possui n'#250'mero na OC'
        end
        object Shape5: TShape
          Left = 811
          Top = 24
          Width = 25
          Height = 16
          Anchors = [akTop, akRight]
          Brush.Color = clMaroon
        end
        object Label118: TLabel
          Left = 839
          Top = 27
          Width = 72
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Produto Inativo'
        end
        object Shape6: TShape
          Left = 984
          Top = 40
          Width = 25
          Height = 16
          Anchors = [akTop, akRight]
          Brush.Color = 33023
        end
        object Label148: TLabel
          Left = 1012
          Top = 43
          Width = 174
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'CFOP 5405 Sem Base/Vlr ST Retido'
        end
        object Shape7: TShape
          Left = 637
          Top = 7
          Width = 25
          Height = 16
          Anchors = [akTop, akRight]
          Brush.Color = 8453888
        end
        object Label149: TLabel
          Left = 665
          Top = 10
          Width = 103
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Diverg'#234'ncia de CFOP'
        end
        object Label48: TLabel
          Left = 6
          Top = 21
          Width = 505
          Height = 42
          Caption = 
            'F3 - Associar Produto       F6 - Rateio Produto      F10 - Cadas' +
            'tro de produtos'#13#10'F4 - Associar OC               F7 - Ver CFOP '#13#10 +
            'F5 - Associar Nota            F9 - Cons. Prod. Associado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label72: TLabel
          Left = 8
          Top = 2
          Width = 288
          Height = 16
          Caption = 'Duplo Clique/Enter para Mostrar Item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CheckBox2: TCheckBox
          Left = 666
          Top = 25
          Width = 139
          Height = 17
          Anchors = [akTop, akRight]
          Caption = 'Mostrar CFOP na Grid'
          TabOrder = 0
        end
      end
      object pnlMsgItem: TPanel
        Left = 0
        Top = 325
        Width = 1240
        Height = 41
        Align = alBottom
        Color = 15128264
        TabOrder = 2
        Visible = False
        object lblMsgItem: TLabel
          Left = 89
          Top = 5
          Width = 5
          Height = 16
          Caption = '.'
          Color = 8454143
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
      end
    end
    object TS_Cabecalho_XML: TNxTabSheet
      ActiveTabColor = clYellow
      Caption = 'cabe'#231'alho'
      PageIndex = 1
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'MS Sans Serif'
      TabFont.Style = []
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 1240
        Height = 93
        Align = alTop
        Caption = ' Dados de Autoriza'#231#227'o da NFe '
        Color = clMoneyGreen
        ParentColor = False
        TabOrder = 0
        object Label1: TLabel
          Left = 40
          Top = 20
          Width = 34
          Height = 13
          Caption = 'Chave:'
        end
        object Label2: TLabel
          Left = 26
          Top = 38
          Width = 48
          Height = 13
          Caption = 'Protocolo:'
        end
        object Label3: TLabel
          Left = 7
          Top = 56
          Width = 67
          Height = 13
          Caption = 'Dt.Autorizado:'
        end
        object Label5: TLabel
          Left = 427
          Top = 22
          Width = 71
          Height = 13
          Caption = 'Tipo Ambiente:'
        end
        object Label6: TLabel
          Left = 437
          Top = 40
          Width = 61
          Height = 13
          Caption = 'Vers'#227'o XML:'
        end
        object Label16: TLabel
          Left = 415
          Top = 58
          Width = 83
          Height = 13
          Caption = 'Vers'#227'o Processo:'
        end
        object DBEdit1: TDBEdit
          Left = 76
          Top = 14
          Width = 337
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'chNFe'
          DataSource = DMRecebeXML.dsNFeProtocolo
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 76
          Top = 32
          Width = 337
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'nProt'
          DataSource = DMRecebeXML.dsNFeProtocolo
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 76
          Top = 50
          Width = 337
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'dhRecbto'
          DataSource = DMRecebeXML.dsNFeProtocolo
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 500
          Top = 16
          Width = 94
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'tpAmb'
          DataSource = DMRecebeXML.dsNFeProtocolo
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 500
          Top = 34
          Width = 94
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'versao'
          DataSource = DMRecebeXML.dsNFeProtocolo
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit12: TDBEdit
          Left = 500
          Top = 52
          Width = 94
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'verProc'
          DataSource = DMRecebeXML.dsCabecalho
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 5
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 93
        Width = 1240
        Height = 178
        Align = alTop
        Caption = 'Dados Da NFe'
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        object Label7: TLabel
          Left = 18
          Top = 29
          Width = 27
          Height = 13
          Caption = 'S'#233'rie:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 115
          Top = 29
          Width = 41
          Height = 13
          Caption = 'N'#186' Nota:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 295
          Top = 29
          Width = 56
          Height = 13
          Caption = 'Dt.Emiss'#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 546
          Top = 29
          Width = 46
          Height = 13
          Caption = 'Dt.Sa'#237'da:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 705
          Top = 29
          Width = 88
          Height = 13
          Caption = 'Hr.Sa'#237'da/Entrada:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 7
          Top = 70
          Width = 38
          Height = 13
          Caption = 'Modelo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 264
          Top = 67
          Width = 89
          Height = 13
          Caption = 'Forma Pagamento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 502
          Top = 67
          Width = 51
          Height = 13
          Caption = 'Finalidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 707
          Top = 67
          Width = 74
          Height = 13
          Alignment = taRightJustify
          Caption = 'Entrada/Sa'#237'da:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 264
          Top = 85
          Width = 89
          Height = 13
          Alignment = taRightJustify
          Caption = 'Forma de Emiss'#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 7
          Top = 95
          Width = 198
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data e Hora da Entrada em Conting'#234'ncia:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 7
          Top = 138
          Width = 195
          Height = 13
          Alignment = taRightJustify
          Caption = 'Justificativa  da Entrada em Conting'#234'ncia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 506
          Top = 85
          Width = 47
          Height = 13
          Alignment = taRightJustify
          Caption = 'Processo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit6: TDBEdit
          Left = 47
          Top = 23
          Width = 54
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'serie'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit7: TDBEdit
          Left = 159
          Top = 17
          Width = 131
          Height = 25
          TabStop = False
          Ctl3D = False
          DataField = 'nNF'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit8: TDBEdit
          Left = 354
          Top = 17
          Width = 143
          Height = 25
          TabStop = False
          Ctl3D = False
          DataField = 'ide_dEmi'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit9: TDBEdit
          Left = 596
          Top = 23
          Width = 94
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'dSaiEnt'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit10: TDBEdit
          Left = 795
          Top = 23
          Width = 94
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'hSaiEnt'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit11: TDBEdit
          Left = 47
          Top = 66
          Width = 54
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'mod'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object edTipoPagamento: TEdit
          Left = 353
          Top = 62
          Width = 129
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
        object edFinalidade: TEdit
          Left = 554
          Top = 62
          Width = 129
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
        end
        object edEntradaSaida: TEdit
          Left = 783
          Top = 62
          Width = 94
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
        object edFormaEmissao: TEdit
          Left = 353
          Top = 80
          Width = 129
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object DBEdit13: TDBEdit
          Left = 7
          Top = 111
          Width = 224
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'dhCont'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
        end
        object DBEdit14: TDBEdit
          Left = 7
          Top = 154
          Width = 834
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'xJust'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
        end
        object edProcesso: TEdit
          Left = 554
          Top = 80
          Width = 323
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
        end
        object DBEdit68: TDBEdit
          Left = 353
          Top = 41
          Width = 144
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'ide_dhemi'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 13
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 271
        Width = 1240
        Height = 72
        Align = alTop
        Caption = 'Emitente'
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        object Label25: TLabel
          Left = 32
          Top = 28
          Width = 31
          Height = 13
          Caption = 'Nome:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 5
          Top = 45
          Width = 55
          Height = 13
          Caption = 'CNPJ/CPF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label27: TLabel
          Left = 245
          Top = 45
          Width = 67
          Height = 13
          Caption = 'Insc.Estadual:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label28: TLabel
          Left = 624
          Top = 45
          Width = 17
          Height = 13
          Caption = 'UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit16: TDBEdit
          Left = 66
          Top = 21
          Width = 631
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'emit_xNome'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object edCNPJEmitente: TEdit
          Left = 66
          Top = 39
          Width = 164
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object edInscEmitente: TEdit
          Left = 314
          Top = 39
          Width = 129
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object edUFEmitente: TEdit
          Left = 645
          Top = 39
          Width = 52
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 343
        Width = 1240
        Height = 90
        Align = alClient
        Caption = 'Destinat'#225'rio'
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 3
        object Label21: TLabel
          Left = 32
          Top = 28
          Width = 31
          Height = 13
          Caption = 'Nome:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 5
          Top = 45
          Width = 55
          Height = 13
          Caption = 'CNPJ/CPF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 245
          Top = 45
          Width = 67
          Height = 13
          Caption = 'Insc.Estadual:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 624
          Top = 45
          Width = 17
          Height = 13
          Caption = 'UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit15: TDBEdit
          Left = 66
          Top = 21
          Width = 631
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'dest_xNome'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object edCNPJDest: TEdit
          Left = 66
          Top = 39
          Width = 164
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object edInscDest: TEdit
          Left = 314
          Top = 39
          Width = 129
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object edUFDest: TEdit
          Left = 645
          Top = 39
          Width = 52
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
      end
    end
    object TS_Emitente: TNxTabSheet
      ActiveTabColor = clYellow
      Caption = 'Emitente'
      PageIndex = 2
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'MS Sans Serif'
      TabFont.Style = []
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1240
        Height = 433
        Align = alClient
        Color = clMoneyGreen
        TabOrder = 0
        DesignSize = (
          1240
          433)
        object Label29: TLabel
          Left = 18
          Top = 29
          Width = 66
          Height = 13
          Caption = 'Raz'#227'o Social:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label30: TLabel
          Left = 41
          Top = 51
          Width = 43
          Height = 13
          Caption = 'Fantasia:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label31: TLabel
          Left = 35
          Top = 73
          Width = 49
          Height = 13
          Caption = 'Endere'#231'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label32: TLabel
          Left = 650
          Top = 73
          Width = 15
          Height = 13
          Caption = 'N'#186':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label33: TLabel
          Left = 17
          Top = 95
          Width = 67
          Height = 13
          Caption = 'Complemento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label34: TLabel
          Left = 54
          Top = 117
          Width = 30
          Height = 13
          Caption = 'Bairro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label35: TLabel
          Left = 48
          Top = 139
          Width = 36
          Height = 13
          Caption = 'Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label36: TLabel
          Left = 607
          Top = 139
          Width = 58
          Height = 13
          Caption = 'C'#243'd.Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label37: TLabel
          Left = 67
          Top = 161
          Width = 17
          Height = 13
          Caption = 'UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label38: TLabel
          Left = 60
          Top = 183
          Width = 25
          Height = 13
          Caption = 'Pa'#237's:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label39: TLabel
          Left = 616
          Top = 183
          Width = 50
          Height = 13
          Caption = 'C'#243'd. Pa'#237's:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label40: TLabel
          Left = 441
          Top = 161
          Width = 22
          Height = 13
          Caption = 'Cep:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label43: TLabel
          Left = 29
          Top = 261
          Width = 55
          Height = 13
          Caption = 'CNPJ/CPF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label44: TLabel
          Left = 358
          Top = 261
          Width = 67
          Height = 13
          Caption = 'Insc.Estadual:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label41: TLabel
          Left = 328
          Top = 280
          Width = 97
          Height = 13
          Caption = 'IE do Sub.Tribut'#225'rio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label42: TLabel
          Left = 10
          Top = 280
          Width = 74
          Height = 13
          Caption = 'Insc. Municipal:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label45: TLabel
          Left = 52
          Top = 302
          Width = 32
          Height = 13
          Caption = 'CNAE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label46: TLabel
          Left = 400
          Top = 302
          Width = 25
          Height = 13
          Caption = 'CRT:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label79: TLabel
          Left = 57
          Top = 205
          Width = 27
          Height = 13
          Caption = 'Fone:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label61: TLabel
          Left = 1115
          Top = 389
          Width = 132
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Fornecedor n'#227'o encontrado'
          Visible = False
        end
        object DBEdit17: TDBEdit
          Left = 87
          Top = 23
          Width = 506
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'emit_xNome'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit18: TDBEdit
          Left = 87
          Top = 45
          Width = 506
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'xFant'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit19: TDBEdit
          Left = 87
          Top = 67
          Width = 506
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderEmit_xLgr'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit20: TDBEdit
          Left = 667
          Top = 67
          Width = 163
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderEmit_nro'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit21: TDBEdit
          Left = 87
          Top = 89
          Width = 506
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderEmit_xCpl'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit22: TDBEdit
          Left = 87
          Top = 111
          Width = 506
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderEmit_xBairro'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit23: TDBEdit
          Left = 87
          Top = 133
          Width = 506
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderEmit_xMun'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit24: TDBEdit
          Left = 667
          Top = 132
          Width = 163
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderEmit_cMun'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
        end
        object DBEdit25: TDBEdit
          Left = 87
          Top = 155
          Width = 83
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderEmit_UF'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
        object DBEdit26: TDBEdit
          Left = 87
          Top = 177
          Width = 506
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderEmit_xPais'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object DBEdit27: TDBEdit
          Left = 667
          Top = 177
          Width = 163
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderEmit_cPais'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
        end
        object DBEdit28: TDBEdit
          Left = 470
          Top = 155
          Width = 123
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderEmit_CEP'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
        end
        object edCNPJEmitente2: TEdit
          Left = 87
          Top = 255
          Width = 164
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
        end
        object edInscEmitente2: TEdit
          Left = 429
          Top = 255
          Width = 164
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 13
        end
        object DBEdit29: TDBEdit
          Left = 429
          Top = 277
          Width = 164
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'IEST'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 14
        end
        object DBEdit30: TDBEdit
          Left = 87
          Top = 277
          Width = 164
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'IM'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 15
        end
        object DBEdit31: TDBEdit
          Left = 87
          Top = 299
          Width = 164
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'CNAE'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 16
        end
        object DBEdit32: TDBEdit
          Left = 429
          Top = 299
          Width = 164
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'CRT'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 17
        end
        object DBEdit45: TDBEdit
          Left = 87
          Top = 199
          Width = 506
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderEmit_fone'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 18
        end
        object BitBtn1: TBitBtn
          Left = 1139
          Top = 459
          Width = 123
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Mostrar Dados Originais'
          TabOrder = 19
          Visible = False
        end
      end
    end
    object TS_Destinatario: TNxTabSheet
      ActiveTabColor = clYellow
      Caption = 'Destinat'#225'rio'
      PageIndex = 3
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'MS Sans Serif'
      TabFont.Style = []
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1240
        Height = 433
        Align = alClient
        Color = clMoneyGreen
        TabOrder = 0
        object Label47: TLabel
          Left = 18
          Top = 29
          Width = 66
          Height = 13
          Caption = 'Raz'#227'o Social:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label49: TLabel
          Left = 35
          Top = 73
          Width = 49
          Height = 13
          Caption = 'Endere'#231'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label50: TLabel
          Left = 650
          Top = 73
          Width = 15
          Height = 13
          Caption = 'N'#186':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label51: TLabel
          Left = 17
          Top = 95
          Width = 67
          Height = 13
          Caption = 'Complemento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label52: TLabel
          Left = 54
          Top = 117
          Width = 30
          Height = 13
          Caption = 'Bairro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label53: TLabel
          Left = 48
          Top = 139
          Width = 36
          Height = 13
          Caption = 'Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label54: TLabel
          Left = 607
          Top = 139
          Width = 58
          Height = 13
          Caption = 'C'#243'd.Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label55: TLabel
          Left = 67
          Top = 161
          Width = 17
          Height = 13
          Caption = 'UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label56: TLabel
          Left = 61
          Top = 183
          Width = 25
          Height = 13
          Caption = 'Pa'#237's:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label57: TLabel
          Left = 616
          Top = 183
          Width = 50
          Height = 13
          Caption = 'C'#243'd. Pa'#237's:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label58: TLabel
          Left = 441
          Top = 161
          Width = 22
          Height = 13
          Caption = 'Cep:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label59: TLabel
          Left = 29
          Top = 221
          Width = 55
          Height = 13
          Caption = 'CNPJ/CPF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label60: TLabel
          Left = 358
          Top = 221
          Width = 67
          Height = 13
          Caption = 'Insc.Estadual:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label65: TLabel
          Left = 56
          Top = 319
          Width = 28
          Height = 13
          Caption = 'Email:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit33: TDBEdit
          Left = 87
          Top = 23
          Width = 506
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'dest_xNome'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit35: TDBEdit
          Left = 87
          Top = 67
          Width = 506
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderDest_xLgr'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit36: TDBEdit
          Left = 667
          Top = 67
          Width = 163
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderDest_nro'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit37: TDBEdit
          Left = 87
          Top = 89
          Width = 506
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderDest_xCpl'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit38: TDBEdit
          Left = 87
          Top = 111
          Width = 506
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderDest_xBairro'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit39: TDBEdit
          Left = 87
          Top = 133
          Width = 506
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderDest_xMun'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit40: TDBEdit
          Left = 667
          Top = 132
          Width = 163
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderDest_cMun'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit41: TDBEdit
          Left = 87
          Top = 155
          Width = 83
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderDest_UF'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
        end
        object DBEdit42: TDBEdit
          Left = 87
          Top = 177
          Width = 506
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderDest_xPais'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
        object DBEdit43: TDBEdit
          Left = 667
          Top = 177
          Width = 163
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderDest_cPais'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object DBEdit44: TDBEdit
          Left = 470
          Top = 155
          Width = 123
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderDest_CEP'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
        end
        object edCNPJDest2: TEdit
          Left = 87
          Top = 215
          Width = 164
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
        end
        object edInscDest2: TEdit
          Left = 429
          Top = 215
          Width = 164
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
        end
        object DBEdit49: TDBEdit
          Left = 87
          Top = 313
          Width = 506
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'email'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 13
        end
      end
    end
    object TS_Transportadora: TNxTabSheet
      ActiveTabColor = clYellow
      Caption = 'Transportadora'
      PageIndex = 4
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'MS Sans Serif'
      TabFont.Style = []
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1240
        Height = 433
        Align = alClient
        Color = clMoneyGreen
        TabOrder = 0
        object Label73: TLabel
          Left = 54
          Top = 29
          Width = 31
          Height = 13
          Caption = 'Nome:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label92: TLabel
          Left = 35
          Top = 73
          Width = 49
          Height = 13
          Caption = 'Endere'#231'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label96: TLabel
          Left = 48
          Top = 139
          Width = 36
          Height = 13
          Caption = 'Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label97: TLabel
          Left = 607
          Top = 139
          Width = 58
          Height = 13
          Caption = 'C'#243'd.Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label98: TLabel
          Left = 67
          Top = 161
          Width = 17
          Height = 13
          Caption = 'UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label102: TLabel
          Left = 29
          Top = 221
          Width = 55
          Height = 13
          Caption = 'CNPJ/CPF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label103: TLabel
          Left = 358
          Top = 221
          Width = 67
          Height = 13
          Caption = 'Insc.Estadual:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit58: TDBEdit
          Left = 87
          Top = 23
          Width = 506
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'xNome'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit59: TDBEdit
          Left = 87
          Top = 67
          Width = 506
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'xEnder'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit63: TDBEdit
          Left = 87
          Top = 133
          Width = 506
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'transporta_xMun'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit64: TDBEdit
          Left = 667
          Top = 132
          Width = 163
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'cMunFG1'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit65: TDBEdit
          Left = 87
          Top = 155
          Width = 83
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'transporta_UF'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object edCNPJTransportadora: TEdit
          Left = 87
          Top = 215
          Width = 164
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object edInscTransportadora: TEdit
          Left = 429
          Top = 215
          Width = 164
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
      end
    end
    object TS_Financeiro: TNxTabSheet
      ActiveTabColor = clYellow
      Caption = 'Financeiro'
      PageIndex = 5
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'MS Sans Serif'
      TabFont.Style = []
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 1240
        Height = 433
        Align = alClient
        TabOrder = 0
        object Panel11: TPanel
          Left = 1
          Top = 1
          Width = 1238
          Height = 162
          Align = alTop
          Color = clSilver
          TabOrder = 0
          object Label89: TLabel
            Left = 114
            Top = 13
            Width = 108
            Height = 14
            Alignment = taRightJustify
            Caption = 'Vlr. Tota da Nota:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label94: TLabel
            Left = 151
            Top = 31
            Width = 68
            Height = 14
            Alignment = taRightJustify
            Caption = 'Vlr. T'#237'tulos:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit61: TDBEdit
            Left = 224
            Top = 7
            Width = 121
            Height = 20
            TabStop = False
            Color = clSilver
            Ctl3D = False
            DataField = 'vNF'
            DataSource = DMRecebeXML.dsCabecalho
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object ceVlr_Titulos: TCurrencyEdit
            Left = 224
            Top = 26
            Width = 121
            Height = 21
            AutoSize = False
            Ctl3D = False
            DisplayFormat = '0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
          end
        end
      end
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.xml'
    InitialDir = 'c:\'
    Left = 1013
    Top = 70
  end
  object XMLDocument1: TXMLDocument
    Left = 628
    Top = 386
    DOMVendorDesc = 'MSXML'
  end
end
