object frmAjusteNomeClienteCF: TfrmAjusteNomeClienteCF
  Left = 355
  Top = 188
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmAjusteNomeClienteCF'
  ClientHeight = 225
  ClientWidth = 698
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 88
    Top = 32
    Width = 69
    Height = 16
    Alignment = taRightJustify
    Caption = 'Dt. Inicial:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 288
    Top = 32
    Width = 61
    Height = 16
    Alignment = taRightJustify
    Caption = 'Dt. Final:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 320
    Top = 88
    Width = 104
    Height = 16
    Alignment = taRightJustify
    Caption = 'Total Registros:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 427
    Top = 88
    Width = 8
    Height = 16
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 347
    Top = 105
    Width = 77
    Height = 16
    Alignment = taRightJustify
    Caption = 'Total Lidos:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 427
    Top = 105
    Width = 8
    Height = 16
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object NxButton1: TNxButton
    Left = 160
    Top = 64
    Width = 137
    Height = 41
    Caption = 'Gerar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = NxButton1Click
  end
  object DateEdit1: TDateEdit
    Left = 158
    Top = 26
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 1
  end
  object DateEdit2: TDateEdit
    Left = 352
    Top = 26
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 2
  end
  object sdsCupom: TSQLDataSet
    CommandText = 
      'select I.ID_MOVESTOQUE, I.ID, I.ID_ITEM, C.CLIENTE_NOME'#13#10'from CU' +
      'POMFISCAL_ITENS I'#13#10'inner join CUPOMFISCAL C on I.ID = C.ID'#13#10'wher' +
      'e I.ID_MOVESTOQUE > 0 and'#13#10'      C.DTEMISSAO between :DATA1 and ' +
      ':DATA2   '#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA2'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 456
    Top = 152
  end
  object dspCupom: TDataSetProvider
    DataSet = sdsCupom
    Left = 488
    Top = 152
  end
  object cdsCupom: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCupom'
    Left = 520
    Top = 152
    object cdsCupomID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object cdsCupomID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCupomID_ITEM: TIntegerField
      FieldName = 'ID_ITEM'
    end
    object cdsCupomCLIENTE_NOME: TStringField
      FieldName = 'CLIENTE_NOME'
      Size = 30
    end
  end
end
