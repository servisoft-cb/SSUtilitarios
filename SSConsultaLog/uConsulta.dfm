object fConsulta: TfConsulta
  Left = 106
  Top = 3
  Width = 1056
  Height = 699
  Caption = 'Consulta de Log - SSFacil'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1040
    Height = 179
    Align = alTop
    Color = 12615680
    TabOrder = 0
    object Label1: TLabel
      Left = 56
      Top = 16
      Width = 50
      Height = 13
      Alignment = taRightJustify
      Caption = 'Opera'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 50
      Top = 40
      Width = 56
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 233
      Top = 40
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 70
      Top = 64
      Width = 36
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tabela:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 72
      Top = 88
      Width = 34
      Height = 13
      Alignment = taRightJustify
      Caption = 'Filtro 1:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 72
      Top = 112
      Width = 34
      Height = 13
      Alignment = taRightJustify
      Caption = 'Filtro 2:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 72
      Top = 136
      Width = 34
      Height = 13
      Alignment = taRightJustify
      Caption = 'Filtro 3:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 72
      Top = 160
      Width = 34
      Height = 13
      Alignment = taRightJustify
      Caption = 'Filtro 4:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ComboBox1: TComboBox
      Left = 112
      Top = 8
      Width = 241
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'Todas'
      Items.Strings = (
        'Todas'
        'Inclus'#227'o'
        'Altera'#231#227'o'
        'Exclus'#227'o')
    end
    object DateEdit1: TDateEdit
      Left = 112
      Top = 32
      Width = 90
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
    object DateEdit2: TDateEdit
      Left = 264
      Top = 32
      Width = 90
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 112
      Top = 56
      Width = 241
      Height = 21
      DropDownCount = 25
      LookupField = 'NOME_TABELA'
      LookupDisplay = 'NOME_TABELA'
      LookupSource = dsTabelas
      TabOrder = 3
    end
    object Edit1: TEdit
      Left = 112
      Top = 80
      Width = 241
      Height = 21
      TabOrder = 4
      Text = 'ID: '
    end
    object Edit2: TEdit
      Left = 112
      Top = 104
      Width = 241
      Height = 21
      TabOrder = 5
    end
    object Edit3: TEdit
      Left = 112
      Top = 128
      Width = 241
      Height = 21
      TabOrder = 6
    end
    object Edit4: TEdit
      Left = 112
      Top = 152
      Width = 241
      Height = 21
      TabOrder = 7
    end
    object Button1: TButton
      Left = 360
      Top = 148
      Width = 145
      Height = 25
      Caption = 'Efetuar pes&quisa'
      TabOrder = 8
      OnClick = Button1Click
    end
    object Memo1: TMemo
      Left = 584
      Top = 1
      Width = 455
      Height = 177
      Align = alRight
      Color = clGradientInactiveCaption
      TabOrder = 9
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 179
    Width = 583
    Height = 481
    Align = alLeft
    DataSource = dsLog
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
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
        FieldName = 'ID_LOG'
        Title.Caption = 'ID'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_TABELA'
        Title.Caption = 'Tabela'
        Width = 159
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPERACAO'
        Title.Caption = 'Opera'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USUARIO'
        Title.Caption = 'Usu'#225'rio'
        Width = 135
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_OPERACAO'
        Title.Caption = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HORA_OPERACAO'
        Title.Caption = 'Hota'
        Visible = True
      end>
  end
  object DBMemo1: TDBMemo
    Left = 583
    Top = 179
    Width = 457
    Height = 481
    Align = alClient
    Color = clMenuBar
    DataField = 'LOG'
    DataSource = dsLog
    TabOrder = 2
  end
  object scoLog: TSQLConnection
    ConnectionName = 'IBConnection'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    KeepConnection = False
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'Database=localhost:C:\Sistema\$Servisoft\Dados\LOGS.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'fbclient.dll'
    Left = 544
    Top = 32
  end
  object Decoder64: TIdDecoderMIME
    FillChar = '='
    Left = 576
    Top = 32
  end
  object sdsTabelas: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT NOME_TABELA FROM LOG_SISTEMA'#13#10'WHERE NOME_TABELA ' +
      'LIKE '#39'cds%'#39#13#10'ORDER BY NOME_TABELA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = scoLog
    Left = 544
    Top = 64
  end
  object dspTabelas: TDataSetProvider
    DataSet = sdsTabelas
    Left = 576
    Top = 64
  end
  object cdsTabelas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTabelas'
    Left = 608
    Top = 64
    object cdsTabelasNOME_TABELA: TStringField
      FieldName = 'NOME_TABELA'
      Required = True
      Size = 80
    end
  end
  object dsTabelas: TDataSource
    DataSet = cdsTabelas
    Left = 640
    Top = 64
  end
  object sdsLog: TSQLDataSet
    CommandText = 'SELECT * FROM LOG_SISTEMA'#13#10'WHERE NOME_TABELA = :TABELA'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'TABELA'
        ParamType = ptInput
      end>
    SQLConnection = scoLog
    Left = 544
    Top = 96
  end
  object dspLog: TDataSetProvider
    DataSet = sdsLog
    Left = 576
    Top = 96
  end
  object cdsLog: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLog'
    Left = 608
    Top = 96
    object cdsLogID_LOG: TIntegerField
      FieldName = 'ID_LOG'
      Required = True
    end
    object cdsLogNOME_TABELA: TStringField
      FieldName = 'NOME_TABELA'
      Required = True
      Size = 80
    end
    object cdsLogOPERACAO: TIntegerField
      FieldName = 'OPERACAO'
      Required = True
    end
    object cdsLogUSUARIO: TStringField
      FieldName = 'USUARIO'
      Required = True
      Size = 30
    end
    object cdsLogDATA_OPERACAO: TDateField
      FieldName = 'DATA_OPERACAO'
      Required = True
    end
    object cdsLogHORA_OPERACAO: TTimeField
      FieldName = 'HORA_OPERACAO'
      Required = True
    end
    object cdsLogLOG: TMemoField
      FieldName = 'LOG'
      Required = True
      BlobType = ftMemo
      Size = 1
    end
  end
  object dsLog: TDataSource
    DataSet = cdsLog
    Left = 640
    Top = 96
  end
end
