object frmImportar_IBSCBS_Excel: TfrmImportar_IBSCBS_Excel
  Left = 410
  Top = 274
  Width = 652
  Height = 301
  Caption = 'frmImportar_IBSCBS_Excel'
  Color = 16769734
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TAdvPanel
    Left = 0
    Top = 0
    Width = 636
    Height = 262
    Align = alClient
    BevelWidth = 10
    Color = 15325901
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    UseDockManager = True
    Version = '2.0.1.0'
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clHighlightText
    Caption.Font.Height = -11
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    CollapsColor = 16776176
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    FullHeight = 0
    object Label1: TLabel
      Left = 22
      Top = 32
      Width = 140
      Height = 13
      Alignment = taRightJustify
      Caption = 'Endere'#231'o do Arquivo (Excel):'
    end
    object Label2: TLabel
      Left = 377
      Top = 56
      Width = 134
      Height = 16
      Alignment = taRightJustify
      Caption = 'Total de Registros:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 515
      Top = 56
      Width = 71
      Height = 16
      AutoSize = False
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 428
      Top = 72
      Width = 83
      Height = 16
      Alignment = taRightJustify
      Caption = 'Total Lidos:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 515
      Top = 72
      Width = 71
      Height = 16
      AutoSize = False
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object FilenameEdit1: TFilenameEdit
      Left = 163
      Top = 25
      Width = 422
      Height = 21
      NumGlyphs = 1
      TabOrder = 0
    end
    object btnImportar: TNxButton
      Left = 170
      Top = 104
      Width = 209
      Height = 33
      Caption = 'Importar IBS CBS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnImportarClick
    end
  end
  object sdsCT: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select ID, CCLASSTRIB, DESCRICAO_CLASSTRIB, CST_IBS_CBS, FUNDAME' +
      'NTO_LEGAL, TIPO_ALIQUOTA, PERCENTUAL_REDUCAO_IBS,'#13#10'       PERCEN' +
      'TUAL_REDUCAO_CBS, IND_CREDITO_PERMITIDO, OBS, DESCRICAO_CSTIBSCB' +
      'S, NOME_CCLASTRIB, IND_REDUTORBC,'#13#10'       IND_GTRIBREGULAR, IND_' +
      'GCREDPRESOPER, IND_GMONOPADRAO, IND_GMONORETEN, IND_GMONORET, IN' +
      'D_GMONODIF,'#13#10'       IND_GESTORNOCRED, CREDITO_PARA, DINIVIG, DFI' +
      'MVIG, DATAATUALIZACAO, INDNFEABI, INDNFE, INDNFCE, INDCTE, INDCT' +
      'EOS,'#13#10'       INDBPE, INDBPETA, INDBPETM, INDNF3E, INDNFSE, INDNF' +
      'SE_VIA, INDNFCOM, INDNFAG, INDNFGAS, INDDERE, ANEXO'#13#10'from CT_IBS' +
      '_CBS  '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 304
    Top = 176
    object sdsCTID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCTCCLASSTRIB: TStringField
      FieldName = 'CCLASSTRIB'
      Required = True
      Size = 9
    end
    object sdsCTDESCRICAO_CLASSTRIB: TStringField
      FieldName = 'DESCRICAO_CLASSTRIB'
      Required = True
      Size = 255
    end
    object sdsCTCST_IBS_CBS: TStringField
      FieldName = 'CST_IBS_CBS'
      Required = True
      FixedChar = True
      Size = 3
    end
    object sdsCTFUNDAMENTO_LEGAL: TStringField
      FieldName = 'FUNDAMENTO_LEGAL'
      Size = 255
    end
    object sdsCTTIPO_ALIQUOTA: TStringField
      FieldName = 'TIPO_ALIQUOTA'
      Size = 40
    end
    object sdsCTPERCENTUAL_REDUCAO_IBS: TFMTBCDField
      FieldName = 'PERCENTUAL_REDUCAO_IBS'
      Precision = 15
      Size = 8
    end
    object sdsCTPERCENTUAL_REDUCAO_CBS: TFMTBCDField
      FieldName = 'PERCENTUAL_REDUCAO_CBS'
      Precision = 15
      Size = 8
    end
    object sdsCTIND_CREDITO_PERMITIDO: TStringField
      FieldName = 'IND_CREDITO_PERMITIDO'
      FixedChar = True
      Size = 1
    end
    object sdsCTOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsCTDESCRICAO_CSTIBSCBS: TStringField
      FieldName = 'DESCRICAO_CSTIBSCBS'
      Size = 100
    end
    object sdsCTNOME_CCLASTRIB: TStringField
      FieldName = 'NOME_CCLASTRIB'
      Size = 150
    end
    object sdsCTIND_REDUTORBC: TStringField
      FieldName = 'IND_REDUTORBC'
      Size = 30
    end
    object sdsCTIND_GTRIBREGULAR: TStringField
      FieldName = 'IND_GTRIBREGULAR'
      Size = 2
    end
    object sdsCTIND_GCREDPRESOPER: TStringField
      FieldName = 'IND_GCREDPRESOPER'
      Size = 2
    end
    object sdsCTIND_GMONOPADRAO: TStringField
      FieldName = 'IND_GMONOPADRAO'
      Size = 2
    end
    object sdsCTIND_GMONORETEN: TStringField
      FieldName = 'IND_GMONORETEN'
      Size = 2
    end
    object sdsCTIND_GMONORET: TStringField
      FieldName = 'IND_GMONORET'
      Size = 2
    end
    object sdsCTIND_GMONODIF: TStringField
      FieldName = 'IND_GMONODIF'
      Size = 2
    end
    object sdsCTIND_GESTORNOCRED: TStringField
      FieldName = 'IND_GESTORNOCRED'
      Size = 2
    end
    object sdsCTCREDITO_PARA: TStringField
      FieldName = 'CREDITO_PARA'
      Size = 70
    end
    object sdsCTDINIVIG: TDateField
      FieldName = 'DINIVIG'
    end
    object sdsCTDFIMVIG: TDateField
      FieldName = 'DFIMVIG'
    end
    object sdsCTDATAATUALIZACAO: TDateField
      FieldName = 'DATAATUALIZACAO'
    end
    object sdsCTINDNFEABI: TStringField
      FieldName = 'INDNFEABI'
      Size = 2
    end
    object sdsCTINDNFE: TStringField
      FieldName = 'INDNFE'
      Size = 2
    end
    object sdsCTINDNFCE: TStringField
      FieldName = 'INDNFCE'
      Size = 2
    end
    object sdsCTINDCTE: TStringField
      FieldName = 'INDCTE'
      Size = 2
    end
    object sdsCTINDCTEOS: TStringField
      FieldName = 'INDCTEOS'
      Size = 2
    end
    object sdsCTINDBPE: TStringField
      FieldName = 'INDBPE'
      Size = 2
    end
    object sdsCTINDBPETA: TStringField
      FieldName = 'INDBPETA'
      Size = 2
    end
    object sdsCTINDBPETM: TStringField
      FieldName = 'INDBPETM'
      Size = 2
    end
    object sdsCTINDNF3E: TStringField
      FieldName = 'INDNF3E'
      Size = 2
    end
    object sdsCTINDNFSE: TStringField
      FieldName = 'INDNFSE'
      Size = 2
    end
    object sdsCTINDNFSE_VIA: TStringField
      FieldName = 'INDNFSE_VIA'
      Size = 2
    end
    object sdsCTINDNFCOM: TStringField
      FieldName = 'INDNFCOM'
      Size = 2
    end
    object sdsCTINDNFAG: TStringField
      FieldName = 'INDNFAG'
      Size = 2
    end
    object sdsCTINDNFGAS: TStringField
      FieldName = 'INDNFGAS'
      Size = 2
    end
    object sdsCTINDDERE: TStringField
      FieldName = 'INDDERE'
      Size = 2
    end
    object sdsCTANEXO: TStringField
      FieldName = 'ANEXO'
      Size = 2
    end
  end
  object dspCT: TDataSetProvider
    DataSet = sdsCT
    UpdateMode = upWhereKeyOnly
    Left = 352
    Top = 176
  end
  object cdsCT: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCT'
    Left = 408
    Top = 176
    object cdsCTID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCTCCLASSTRIB: TStringField
      FieldName = 'CCLASSTRIB'
      Required = True
      Size = 9
    end
    object cdsCTDESCRICAO_CLASSTRIB: TStringField
      FieldName = 'DESCRICAO_CLASSTRIB'
      Required = True
      Size = 255
    end
    object cdsCTCST_IBS_CBS: TStringField
      FieldName = 'CST_IBS_CBS'
      Required = True
      FixedChar = True
      Size = 3
    end
    object cdsCTFUNDAMENTO_LEGAL: TStringField
      FieldName = 'FUNDAMENTO_LEGAL'
      Size = 255
    end
    object cdsCTTIPO_ALIQUOTA: TStringField
      FieldName = 'TIPO_ALIQUOTA'
      Size = 40
    end
    object cdsCTPERCENTUAL_REDUCAO_IBS: TFMTBCDField
      FieldName = 'PERCENTUAL_REDUCAO_IBS'
      Precision = 15
      Size = 8
    end
    object cdsCTPERCENTUAL_REDUCAO_CBS: TFMTBCDField
      FieldName = 'PERCENTUAL_REDUCAO_CBS'
      Precision = 15
      Size = 8
    end
    object cdsCTIND_CREDITO_PERMITIDO: TStringField
      FieldName = 'IND_CREDITO_PERMITIDO'
      FixedChar = True
      Size = 1
    end
    object cdsCTOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsCTDESCRICAO_CSTIBSCBS: TStringField
      FieldName = 'DESCRICAO_CSTIBSCBS'
      Size = 100
    end
    object cdsCTNOME_CCLASTRIB: TStringField
      FieldName = 'NOME_CCLASTRIB'
      Size = 150
    end
    object cdsCTIND_REDUTORBC: TStringField
      FieldName = 'IND_REDUTORBC'
      Size = 30
    end
    object cdsCTIND_GTRIBREGULAR: TStringField
      FieldName = 'IND_GTRIBREGULAR'
      Size = 2
    end
    object cdsCTIND_GCREDPRESOPER: TStringField
      FieldName = 'IND_GCREDPRESOPER'
      Size = 2
    end
    object cdsCTIND_GMONOPADRAO: TStringField
      FieldName = 'IND_GMONOPADRAO'
      Size = 2
    end
    object cdsCTIND_GMONORETEN: TStringField
      FieldName = 'IND_GMONORETEN'
      Size = 2
    end
    object cdsCTIND_GMONORET: TStringField
      FieldName = 'IND_GMONORET'
      Size = 2
    end
    object cdsCTIND_GMONODIF: TStringField
      FieldName = 'IND_GMONODIF'
      Size = 2
    end
    object cdsCTIND_GESTORNOCRED: TStringField
      FieldName = 'IND_GESTORNOCRED'
      Size = 2
    end
    object cdsCTCREDITO_PARA: TStringField
      FieldName = 'CREDITO_PARA'
      Size = 70
    end
    object cdsCTDINIVIG: TDateField
      FieldName = 'DINIVIG'
    end
    object cdsCTDFIMVIG: TDateField
      FieldName = 'DFIMVIG'
    end
    object cdsCTDATAATUALIZACAO: TDateField
      FieldName = 'DATAATUALIZACAO'
    end
    object cdsCTINDNFEABI: TStringField
      FieldName = 'INDNFEABI'
      Size = 2
    end
    object cdsCTINDNFE: TStringField
      FieldName = 'INDNFE'
      Size = 2
    end
    object cdsCTINDNFCE: TStringField
      FieldName = 'INDNFCE'
      Size = 2
    end
    object cdsCTINDCTE: TStringField
      FieldName = 'INDCTE'
      Size = 2
    end
    object cdsCTINDCTEOS: TStringField
      FieldName = 'INDCTEOS'
      Size = 2
    end
    object cdsCTINDBPE: TStringField
      FieldName = 'INDBPE'
      Size = 2
    end
    object cdsCTINDBPETA: TStringField
      FieldName = 'INDBPETA'
      Size = 2
    end
    object cdsCTINDBPETM: TStringField
      FieldName = 'INDBPETM'
      Size = 2
    end
    object cdsCTINDNF3E: TStringField
      FieldName = 'INDNF3E'
      Size = 2
    end
    object cdsCTINDNFSE: TStringField
      FieldName = 'INDNFSE'
      Size = 2
    end
    object cdsCTINDNFSE_VIA: TStringField
      FieldName = 'INDNFSE_VIA'
      Size = 2
    end
    object cdsCTINDNFCOM: TStringField
      FieldName = 'INDNFCOM'
      Size = 2
    end
    object cdsCTINDNFAG: TStringField
      FieldName = 'INDNFAG'
      Size = 2
    end
    object cdsCTINDNFGAS: TStringField
      FieldName = 'INDNFGAS'
      Size = 2
    end
    object cdsCTINDDERE: TStringField
      FieldName = 'INDDERE'
      Size = 2
    end
    object cdsCTANEXO: TStringField
      FieldName = 'ANEXO'
      Size = 2
    end
  end
end
