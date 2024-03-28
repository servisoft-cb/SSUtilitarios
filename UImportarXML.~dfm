object frmImportarXML: TfrmImportarXML
  Left = 162
  Top = 16
  Width = 882
  Height = 706
  BorderWidth = 5
  Caption = 'Importar XML NFe (Notas Emitidas)'
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcDados: TPageControl
    Left = 0
    Top = 0
    Width = 856
    Height = 657
    ActivePage = TabSheet7
    Align = alClient
    TabOrder = 0
    object TabSheet7: TTabSheet
      Caption = 'Importar XML'
      ImageIndex = 8
      object Diretorio: TLabel
        Left = 251
        Top = 16
        Width = 30
        Height = 13
        Alignment = taRightJustify
        Caption = 'Pasta:'
      end
      object Label4: TLabel
        Left = 258
        Top = 40
        Width = 23
        Height = 13
        Caption = 'Filial:'
      end
      object Label48: TLabel
        Left = 408
        Top = 58
        Width = 367
        Height = 13
        Caption = 
          'Informar a Filial para separar os Produtos e Clientes por empres' +
          'a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnListar: TButton
        Left = 284
        Top = 56
        Width = 109
        Height = 25
        Hint = 'Importa arquivos XML'
        Caption = 'Importar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = btnListarClick
      end
      object chkSub: TCheckBox
        Left = 632
        Top = 16
        Width = 145
        Height = 17
        Caption = 'Incluir Subpastas'
        TabOrder = 2
      end
      object MemLista: TMemo
        Left = 0
        Top = 81
        Width = 848
        Height = 346
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        Lines.Strings = (
          'MemLista')
        ScrollBars = ssBoth
        TabOrder = 3
      end
      object ckCliente: TCheckBox
        Left = 8
        Top = 8
        Width = 97
        Height = 17
        Caption = 'Gravar Cliente'
        Checked = True
        State = cbChecked
        TabOrder = 4
      end
      object ckProduto: TCheckBox
        Left = 8
        Top = 25
        Width = 97
        Height = 17
        Caption = 'Gravar Produto'
        Checked = True
        State = cbChecked
        TabOrder = 5
      end
      object ckPreco: TCheckBox
        Left = 8
        Top = 59
        Width = 169
        Height = 16
        Caption = 'Gravar Pre'#231'o no Produto'
        Checked = True
        State = cbChecked
        TabOrder = 6
      end
      object edtDiretorio: TDirectoryEdit
        Left = 283
        Top = 10
        Width = 337
        Height = 21
        DialogKind = dkWin32
        InitialDir = 'C:\'
        MultipleDirs = True
        NumGlyphs = 1
        TabOrder = 0
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 427
        Width = 848
        Height = 202
        Align = alBottom
        Caption = 
          ' Arquivos que apresentaram erros e n'#227'o gravaram os Clientes/Prod' +
          'utos '
        TabOrder = 7
        object Memo1: TMemo
          Left = 2
          Top = 15
          Width = 844
          Height = 185
          Align = alClient
          ScrollBars = ssBoth
          TabOrder = 0
        end
      end
      object ckTransportadora: TCheckBox
        Left = 8
        Top = 41
        Width = 143
        Height = 17
        Caption = 'Gravar Transportadora'
        TabOrder = 8
        Visible = False
      end
      object ckFornecedor: TCheckBox
        Left = 120
        Top = 8
        Width = 129
        Height = 17
        Caption = 'Gravar Fornecedores'
        Checked = True
        State = cbChecked
        TabOrder = 9
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 283
        Top = 32
        Width = 337
        Height = 21
        DropDownCount = 8
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = DMImportarXML.dsFilial
        TabOrder = 10
      end
      object btnBuscaNCM: TButton
        Left = 732
        Top = 32
        Width = 109
        Height = 25
        Hint = 'Importa arquivos XML'
        Caption = 'Busca NCM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        Visible = False
        OnClick = btnBuscaNCMClick
      end
      object ckNotaEntrada: TCheckBox
        Left = 168
        Top = 56
        Width = 97
        Height = 17
        Caption = 'Notas Entrada'
        TabOrder = 12
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Cabe'#231'alho/NFe'
      ImageIndex = 3
      object GroupBox1: TGroupBox
        Left = 0
        Top = 101
        Width = 848
        Height = 245
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
        TabOrder = 0
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
          Left = 119
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
          Left = 498
          Top = 29
          Width = 46
          Height = 13
          Caption = 'Dt.Sa'#237'da:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 657
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
          Top = 61
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
          Left = 228
          Top = 61
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
          Left = 466
          Top = 61
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
          Left = 673
          Top = 61
          Width = 72
          Height = 13
          Alignment = taRightJustify
          Caption = 'Entrada/Saida:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 228
          Top = 87
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
          Top = 111
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
          Top = 154
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
          Left = 470
          Top = 87
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
          Height = 26
          TabStop = False
          Ctl3D = False
          DataField = 'serie'
          DataSource = DMImportarXML.dsCabecalho
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
          Left = 163
          Top = 23
          Width = 94
          Height = 26
          TabStop = False
          Ctl3D = False
          DataField = 'nNF'
          DataSource = DMImportarXML.dsCabecalho
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
        object DBEdit8: TDBEdit
          Left = 353
          Top = 23
          Width = 94
          Height = 26
          TabStop = False
          Ctl3D = False
          DataField = 'ide_dEmi'
          DataSource = DMImportarXML.dsCabecalho
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
        object DBEdit9: TDBEdit
          Left = 548
          Top = 23
          Width = 94
          Height = 26
          TabStop = False
          Ctl3D = False
          DataField = 'dSaiEnt'
          DataSource = DMImportarXML.dsCabecalho
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
          Left = 747
          Top = 23
          Width = 94
          Height = 26
          TabStop = False
          Ctl3D = False
          DataField = 'hSaiEnt'
          DataSource = DMImportarXML.dsCabecalho
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
          Top = 57
          Width = 54
          Height = 26
          TabStop = False
          Ctl3D = False
          DataField = 'mod'
          DataSource = DMImportarXML.dsCabecalho
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
          Left = 317
          Top = 56
          Width = 129
          Height = 26
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
          Left = 518
          Top = 56
          Width = 129
          Height = 26
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
          Left = 747
          Top = 56
          Width = 94
          Height = 26
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
          Left = 317
          Top = 82
          Width = 129
          Height = 26
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
          Top = 127
          Width = 224
          Height = 26
          TabStop = False
          Ctl3D = False
          DataField = 'dhCont'
          DataSource = DMImportarXML.dsCabecalho
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
          Top = 170
          Width = 834
          Height = 26
          TabStop = False
          Ctl3D = False
          DataField = 'xJust'
          DataSource = DMImportarXML.dsCabecalho
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
          Left = 518
          Top = 82
          Width = 323
          Height = 26
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
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 346
        Width = 848
        Height = 112
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
        TabOrder = 1
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
          Height = 26
          TabStop = False
          Ctl3D = False
          DataField = 'emit_xNome'
          DataSource = DMImportarXML.dsCabecalho
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
          Height = 26
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
          Height = 26
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
          Height = 26
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
        Top = 458
        Width = 848
        Height = 172
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
        TabOrder = 2
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
          Height = 26
          TabStop = False
          Ctl3D = False
          DataField = 'dest_xNome'
          DataSource = DMImportarXML.dsCabecalho
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
          Height = 26
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
          Height = 26
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
          Height = 26
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
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 848
        Height = 101
        Align = alTop
        Color = clMoneyGreen
        ParentColor = False
        TabOrder = 3
        object Label1: TLabel
          Left = 304
          Top = 14
          Width = 34
          Height = 13
          Caption = 'Chave:'
        end
        object Label2: TLabel
          Left = 290
          Top = 32
          Width = 48
          Height = 13
          Caption = 'Protocolo:'
        end
        object Label3: TLabel
          Left = 271
          Top = 50
          Width = 67
          Height = 13
          Caption = 'Dt.Autorizado:'
        end
        object Label5: TLabel
          Left = 691
          Top = 14
          Width = 71
          Height = 13
          Caption = 'Tipo Ambiente:'
        end
        object Label6: TLabel
          Left = 701
          Top = 32
          Width = 61
          Height = 13
          Caption = 'Vers'#227'o XML:'
        end
        object Label16: TLabel
          Left = 679
          Top = 50
          Width = 83
          Height = 13
          Caption = 'Vers'#227'o Processo:'
        end
        object Label64: TLabel
          Left = 721
          Top = 82
          Width = 41
          Height = 13
          Caption = 'N'#186' Nota:'
        end
        object DBEdit1: TDBEdit
          Left = 340
          Top = 8
          Width = 337
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'chNFe'
          DataSource = DMImportarXML.dsNFeProtocolo
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 340
          Top = 26
          Width = 337
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'nProt'
          DataSource = DMImportarXML.dsNFeProtocolo
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 340
          Top = 44
          Width = 337
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'dhRecbto'
          DataSource = DMImportarXML.dsNFeProtocolo
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 764
          Top = 8
          Width = 94
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'tpAmb'
          DataSource = DMImportarXML.dsNFeProtocolo
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 764
          Top = 26
          Width = 94
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'versao'
          DataSource = DMImportarXML.dsNFeProtocolo
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit12: TDBEdit
          Left = 764
          Top = 44
          Width = 94
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'verProc'
          DataSource = DMImportarXML.dsCabecalho
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit34: TDBEdit
          Left = 764
          Top = 76
          Width = 94
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'nNF'
          DataSource = DMImportarXML.dsCabecalho
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 6
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Emitente'
      ImageIndex = 4
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 848
        Height = 630
        Align = alClient
        Color = clMoneyGreen
        TabOrder = 0
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
          Left = 61
          Top = 183
          Width = 23
          Height = 13
          Caption = 'Pais:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label39: TLabel
          Left = 617
          Top = 183
          Width = 48
          Height = 13
          Caption = 'C'#243'd. Pais:'
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
        object DBEdit17: TDBEdit
          Left = 87
          Top = 23
          Width = 506
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'emit_xNome'
          DataSource = DMImportarXML.dsCabecalho
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
          DataSource = DMImportarXML.dsCabecalho
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
          DataSource = DMImportarXML.dsCabecalho
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
          DataSource = DMImportarXML.dsCabecalho
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
          DataSource = DMImportarXML.dsCabecalho
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
          DataSource = DMImportarXML.dsCabecalho
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
          DataSource = DMImportarXML.dsCabecalho
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
          DataSource = DMImportarXML.dsCabecalho
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
          DataSource = DMImportarXML.dsCabecalho
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
          DataSource = DMImportarXML.dsCabecalho
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
          DataSource = DMImportarXML.dsCabecalho
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
          DataSource = DMImportarXML.dsCabecalho
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
          DataSource = DMImportarXML.dsCabecalho
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
          DataSource = DMImportarXML.dsCabecalho
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
          DataSource = DMImportarXML.dsCabecalho
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
          DataSource = DMImportarXML.dsCabecalho
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
          DataSource = DMImportarXML.dsCabecalho
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
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Destinat'#225'rio'
      ImageIndex = 5
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 848
        Height = 630
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
          Width = 23
          Height = 13
          Caption = 'Pais:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label57: TLabel
          Left = 617
          Top = 183
          Width = 48
          Height = 13
          Caption = 'C'#243'd. Pais:'
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
          DataSource = DMImportarXML.dsCabecalho
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
          DataSource = DMImportarXML.dsCabecalho
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
          DataSource = DMImportarXML.dsCabecalho
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
          DataSource = DMImportarXML.dsCabecalho
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
          DataSource = DMImportarXML.dsCabecalho
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
          DataSource = DMImportarXML.dsCabecalho
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
          DataSource = DMImportarXML.dsCabecalho
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
          DataSource = DMImportarXML.dsCabecalho
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
          DataSource = DMImportarXML.dsCabecalho
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
          DataSource = DMImportarXML.dsCabecalho
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
          DataSource = DMImportarXML.dsCabecalho
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
          DataSource = DMImportarXML.dsCabecalho
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
    object TabSheet8: TTabSheet
      Caption = 'Transportadora'
      ImageIndex = 9
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 848
        Height = 630
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
          DataSource = DMImportarXML.dsCabecalho
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
          DataSource = DMImportarXML.dsCabecalho
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
          DataSource = DMImportarXML.dsCabecalho
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
          DataSource = DMImportarXML.dsCabecalho
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
          DataSource = DMImportarXML.dsCabecalho
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
    object TabSheet4: TTabSheet
      Caption = 'Itens (Produto/Servi'#231'o)'
      ImageIndex = 6
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 848
        Height = 629
        Align = alClient
        Color = clMoneyGreen
        TabOrder = 0
        object SMDBGrid1: TSMDBGrid
          Left = 1
          Top = 1
          Width = 846
          Height = 376
          Align = alTop
          DataSource = DMImportarXML.dsmItensNota
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Flat = False
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
          RegistryKey = 'Software\Scalabium'
          RegistrySection = 'SMDBGrid'
          WidthOfIndicator = 11
          DefaultRowHeight = 17
          ScrollBars = ssHorizontal
          ColCount = 48
          RowCount = 2
          Columns = <
            item
              Expanded = False
              FieldName = 'Item'
              ReadOnly = True
              Width = 28
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CFOP'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CFOPInterno'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CFOPOriginal'
              ReadOnly = True
              Title.Alignment = taCenter
              Width = 49
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CodProduto'
              ReadOnly = True
              Width = 92
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CodProdutoInterno'
              ReadOnly = True
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NomeProduto'
              ReadOnly = True
              Width = 433
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CodCor'
              ReadOnly = True
              Width = 39
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CodGrade'
              ReadOnly = True
              Width = 46
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Posicao'
              ReadOnly = True
              Width = 46
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CodBarra'
              ReadOnly = True
              Title.Alignment = taCenter
              Width = 101
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Tamanho'
              ReadOnly = True
              Width = 62
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NomeCor'
              ReadOnly = True
              Width = 121
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CodFornecedor'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NCM'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NumPedido'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ItemPedido'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Qtd'
              ReadOnly = True
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'QtdPacote'
              ReadOnly = True
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VlrUnitario'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Unidade'
              ReadOnly = True
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'UnidadeInterno'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Unid. Interno'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VlrTotal'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AliqIcms'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AliqIPI'
              ReadOnly = True
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Origem'
              ReadOnly = True
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CodSitTrib'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CodSitTribInterno'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CodCSTIPI'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VlrIcms'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VlrIPI'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BaseIcms'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GravarNovo'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PercRedIcms'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BaseCSTRet'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VlrIcmsCSTRet'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ModICMS'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Origem'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ModIcmsST'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PercMVAST'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PercRedBCST'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BaseCST'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PercIcmsST'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VlrIcmsST'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'InfAdicionais'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Informa'#231#245'es Adicionais'
              Width = 300
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'NumLote'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'N'#186' Lote'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Mercado'
              ReadOnly = True
              Title.Alignment = taCenter
              Width = 56
              Visible = True
            end>
        end
        object BitBtn2: TBitBtn
          Left = 9
          Top = 382
          Width = 123
          Height = 25
          Hint = 'Gravar cliente no sistema'
          Caption = 'Gravar Cliente'
          TabOrder = 1
          Visible = False
          OnClick = BitBtn2Click
        end
        object BitBtn4: TBitBtn
          Left = 593
          Top = 382
          Width = 123
          Height = 25
          Caption = 'Gravar Produtos'
          TabOrder = 2
          OnClick = BitBtn4Click
        end
      end
    end
    object tsDuplicatasDeducoes: TTabSheet
      BorderWidth = 5
      Caption = 'Duplicatas / Dedu'#231#245'es'
      ImageIndex = 3
      object dgDuplicatas: TDBGrid
        Left = 0
        Top = 0
        Width = 838
        Height = 620
        Align = alClient
        DataSource = DMImportarXML.dsParcelas
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object tsNFeRefProtocolo: TTabSheet
      BorderWidth = 5
      Caption = 'NFe Ref. / Nfe Protocolo'
      ImageIndex = 4
      object dgNFeRef: TDBGrid
        Left = 0
        Top = 0
        Width = 838
        Height = 417
        Align = alClient
        DataSource = DMImportarXML.dsNFeRef
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object dgNFeProtocolo: TDBGrid
        Left = 0
        Top = 417
        Width = 838
        Height = 203
        Align = alBottom
        DataSource = DMImportarXML.dsNFeProtocolo
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'versao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Id'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tpAmb'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'verAplic'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'chNFe'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dhRecbto'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nProt'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'digVal'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cStat'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'xMotivo'
            Width = 64
            Visible = True
          end>
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Total'
      ImageIndex = 7
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 848
        Height = 630
        Align = alClient
        Color = clMoneyGreen
        Enabled = False
        TabOrder = 0
        object Label80: TLabel
          Left = 1
          Top = 113
          Width = 110
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr. Total dos Produtos:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label88: TLabel
          Left = 27
          Top = 137
          Width = 84
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr. Tota da Nota:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label77: TLabel
          Left = 59
          Top = 41
          Width = 52
          Height = 13
          Alignment = taRightJustify
          Caption = 'Base Icms:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label78: TLabel
          Left = 203
          Top = 41
          Width = 52
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor Icms:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label81: TLabel
          Left = 51
          Top = 65
          Width = 60
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr. do Frete:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label82: TLabel
          Left = 314
          Top = 65
          Width = 67
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr. do Seguro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label83: TLabel
          Left = 44
          Top = 89
          Width = 67
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr. Desconto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label84: TLabel
          Left = 347
          Top = 41
          Width = 34
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr. IPI:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label85: TLabel
          Left = 484
          Top = 41
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr. PIS:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label86: TLabel
          Left = 619
          Top = 41
          Width = 50
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr. Cofins:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label87: TLabel
          Left = 585
          Top = 65
          Width = 84
          Height = 13
          Alignment = taRightJustify
          Caption = 'Outras Despesas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit57: TDBEdit
          Left = 113
          Top = 131
          Width = 82
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'vNF'
          DataSource = DMImportarXML.dsCabecalho
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
        object DBEdit46: TDBEdit
          Left = 113
          Top = 35
          Width = 82
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'ICMSTot_vBC'
          DataSource = DMImportarXML.dsCabecalho
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
        object DBEdit47: TDBEdit
          Left = 257
          Top = 35
          Width = 82
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'vICMS'
          DataSource = DMImportarXML.dsCabecalho
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
        object DBEdit48: TDBEdit
          Left = 113
          Top = 107
          Width = 82
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'vProd'
          DataSource = DMImportarXML.dsCabecalho
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
        object DBEdit50: TDBEdit
          Left = 113
          Top = 59
          Width = 82
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'vFrete'
          DataSource = DMImportarXML.dsCabecalho
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
        object DBEdit51: TDBEdit
          Left = 383
          Top = 59
          Width = 82
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'vSeg'
          DataSource = DMImportarXML.dsCabecalho
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
        object DBEdit52: TDBEdit
          Left = 113
          Top = 83
          Width = 82
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'ICMSTot_vDesc'
          DataSource = DMImportarXML.dsCabecalho
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
        object DBEdit53: TDBEdit
          Left = 383
          Top = 35
          Width = 82
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'vIPI'
          DataSource = DMImportarXML.dsCabecalho
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
        object DBEdit54: TDBEdit
          Left = 525
          Top = 35
          Width = 82
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'ICMSTot_vPIS'
          DataSource = DMImportarXML.dsCabecalho
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
        object DBEdit55: TDBEdit
          Left = 671
          Top = 35
          Width = 82
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'ICMSTot_vCOFINS'
          DataSource = DMImportarXML.dsCabecalho
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
        object DBEdit56: TDBEdit
          Left = 671
          Top = 59
          Width = 82
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'vOutro'
          DataSource = DMImportarXML.dsCabecalho
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
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Resumo'
      ImageIndex = 7
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 848
        Height = 630
        Align = alClient
        Color = clMoneyGreen
        TabOrder = 0
        object Label62: TLabel
          Left = 39
          Top = 32
          Width = 57
          Height = 13
          Caption = 'Fornecedor:'
        end
        object lbStatusForn: TLabel
          Left = 99
          Top = 32
          Width = 737
          Height = 13
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label63: TLabel
          Left = 60
          Top = 56
          Width = 36
          Height = 13
          Caption = 'Cidade:'
        end
        object lbStatusCidade: TLabel
          Left = 99
          Top = 56
          Width = 737
          Height = 13
          AutoSize = False
        end
        object Label66: TLabel
          Left = 73
          Top = 80
          Width = 23
          Height = 13
          Caption = 'Pais:'
        end
        object lbStatusPais: TLabel
          Left = 99
          Top = 80
          Width = 737
          Height = 13
          AutoSize = False
        end
        object lbStatusNotaEntrada: TLabel
          Left = 99
          Top = 112
          Width = 737
          Height = 13
          AutoSize = False
        end
        object Label69: TLabel
          Left = 30
          Top = 112
          Width = 66
          Height = 13
          Caption = 'Nota Entrada:'
        end
        object Label70: TLabel
          Left = 20
          Top = 144
          Width = 76
          Height = 13
          Caption = 'Contas a Pagar:'
        end
        object lbStatusContasPagar: TLabel
          Left = 99
          Top = 144
          Width = 737
          Height = 13
          AutoSize = False
        end
        object Label72: TLabel
          Left = 56
          Top = 176
          Width = 40
          Height = 13
          Caption = 'Material:'
        end
        object lbStatusMaterial: TLabel
          Left = 99
          Top = 176
          Width = 737
          Height = 13
          AutoSize = False
        end
        object Label74: TLabel
          Left = 54
          Top = 208
          Width = 42
          Height = 13
          Caption = 'Estoque:'
        end
        object lbStatusEstoque: TLabel
          Left = 99
          Top = 208
          Width = 737
          Height = 13
          AutoSize = False
        end
      end
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.xml'
    Left = 680
    Top = 243
  end
end
