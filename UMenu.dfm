object fMenu: TfMenu
  Left = 258
  Top = 43
  Width = 801
  Height = 650
  Caption = 'Menu    (02/07/2024  1.1.33)'
  Color = clSilver
  Constraints.MinHeight = 650
  Constraints.MinWidth = 780
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PrintScale = poNone
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TAdvPanel
    Left = 0
    Top = 0
    Width = 785
    Height = 611
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
    Version = '1.6.0.3'
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
    object btnLocalizar: TNxButton
      Left = 36
      Top = 32
      Width = 302
      Height = 33
      Caption = 'Importar XML NFe'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnLocalizarClick
    end
    object NxButton1: TNxButton
      Left = 36
      Top = 65
      Width = 302
      Height = 33
      Caption = 'Importar XML NFSe'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = NxButton1Click
    end
    object NxButton2: TNxButton
      Left = 36
      Top = 98
      Width = 302
      Height = 33
      Caption = 'Importar Paradox'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = NxButton2Click
    end
    object NxButton3: TNxButton
      Left = 37
      Top = 131
      Width = 302
      Height = 33
      Caption = 'Importar Texto (CSV)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = NxButton3Click
    end
    object btnImportar_PlanoSped: TNxButton
      Left = 36
      Top = 164
      Width = 302
      Height = 33
      Caption = 'Importar Plano Contas SPED/Plano Cont'#225'bil'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btnImportar_PlanoSpedClick
    end
    object btnImportar_ContasOrcamento: TNxButton
      Left = 36
      Top = 197
      Width = 302
      Height = 33
      Caption = 'Importar/Exportar Contas Or'#231'amento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = btnImportar_ContasOrcamentoClick
    end
    object NxButton4: TNxButton
      Left = 36
      Top = 230
      Width = 302
      Height = 33
      Caption = 'Importar Impostos/CFOP Paradox'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = NxButton4Click
    end
    object NxButton5: TNxButton
      Left = 428
      Top = 32
      Width = 281
      Height = 33
      Caption = 'Importar Impostos/CFOP Paradox'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = NxButton4Click
    end
    object NxButton6: TNxButton
      Left = 36
      Top = 262
      Width = 302
      Height = 33
      Caption = 'Importar Regras Empresa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = NxButton3Click
    end
    object NxButton7: TNxButton
      Left = 36
      Top = 294
      Width = 302
      Height = 33
      Caption = 'Le o cdsEstoque_Mov para montar o Estoque'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = NxButton7Click
    end
    object NxButton8: TNxButton
      Left = 428
      Top = 64
      Width = 281
      Height = 33
      Caption = 'Gerar Setor nos Tal'#245'es (Calcado)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = NxButton4Click
    end
    object NxButton9: TNxButton
      Left = 428
      Top = 97
      Width = 281
      Height = 33
      Caption = 'Ajusta Contas de Orc. nas Duplicatas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnClick = NxButton9Click
    end
    object NxButton10: TNxButton
      Left = 36
      Top = 326
      Width = 302
      Height = 33
      Caption = 'Gerar Invent'#225'rio pelo arquivo (CSV)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnClick = NxButton10Click
    end
    object btnCBenef: TNxButton
      Left = 36
      Top = 358
      Width = 302
      Height = 33
      Caption = 'Carregar Tabela C'#243'd. Benef'#237'cio Fiscal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      OnClick = btnCBenefClick
    end
    object NxButton11: TNxButton
      Left = 428
      Top = 129
      Width = 281
      Height = 33
      Caption = 'Ajusta Produto_Processo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      OnClick = NxButton11Click
    end
    object btnAtualizarNCMUnidTrib: TNxButton
      Left = 428
      Top = 162
      Width = 281
      Height = 33
      Caption = 'Atualizar NCM Unidade Tribut'#225'vel (Servidor)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
    end
    object btnGravarProdutosWeb: TNxButton
      Left = 428
      Top = 195
      Width = 281
      Height = 33
      Caption = 'Gravar Produtos na WEB / APP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
      OnClick = btnGravarProdutosWebClick
    end
    object btnAjustarCCusto: TNxButton
      Left = 428
      Top = 227
      Width = 281
      Height = 33
      Caption = 'Ajustar Centro de Custo nos itens da NFe'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
      OnClick = btnAjustarCCustoClick
    end
    object btnAjustaNCM_CFOP: TNxButton
      Left = 428
      Top = 260
      Width = 281
      Height = 33
      Caption = 'Ajustar NCM / CFOP 01/10/2022'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
      OnClick = btnAjustaNCM_CFOPClick
    end
    object btnGerarPlanoNovoSitema: TNxButton
      Left = 36
      Top = 391
      Width = 302
      Height = 33
      Caption = 'Importar Plano Cont'#225'bil (Novo Sistema)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 19
      OnClick = btnGerarPlanoNovoSitemaClick
    end
    object btnGravarPrecoMedio: TNxButton
      Left = 36
      Top = 426
      Width = 302
      Height = 33
      Caption = 'Gravar Pre'#231'o M'#233'dio (Produto_CMedio)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 20
      OnClick = btnGravarPrecoMedioClick
    end
    object btnGravarGruposWEB: TNxButton
      Left = 429
      Top = 293
      Width = 281
      Height = 33
      Caption = 'Gravar Grupos na WEB / APP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 21
      OnClick = btnGravarGruposWEBClick
    end
    object btnImportarCTN: TNxButton
      Left = 428
      Top = 325
      Width = 281
      Height = 33
      Caption = 'Importar CTN (Servi'#231'o Trib. Nacional)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 22
      OnClick = btnImportarCTNClick
    end
    object btnAjusteNomeClienteCupom: TNxButton
      Left = 428
      Top = 358
      Width = 281
      Height = 33
      Caption = 'Ajustar Nome Cliente Cupom (Est.Mov)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 23
      OnClick = btnAjusteNomeClienteCupomClick
    end
    object btnGerarPlanoDominio: TNxButton
      Left = 428
      Top = 391
      Width = 281
      Height = 33
      Caption = 'Importar Plano Cont'#225'bil (Dominio)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 24
      OnClick = btnGerarPlanoDominioClick
    end
    object btnGerarPlanoSage: TNxButton
      Left = 428
      Top = 425
      Width = 281
      Height = 33
      Caption = 'Importar Plano Cont'#225'bil (Sage OA3)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 25
      OnClick = btnGerarPlanoSageClick
    end
    object NxButton13: TNxButton
      Left = 428
      Top = 460
      Width = 281
      Height = 33
      Caption = 'Importar As Notas pelo XML (Sa'#237'da)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 26
      OnClick = NxButton13Click
    end
  end
  object NxButton12: TNxButton
    Left = 36
    Top = 461
    Width = 302
    Height = 33
    Caption = 'Importar Plano Contas Excel (Novo Sistema)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = NxButton12Click
  end
end
