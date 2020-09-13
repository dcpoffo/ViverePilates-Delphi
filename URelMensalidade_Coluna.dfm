object frmRelMensalidade_Coluna: TfrmRelMensalidade_Coluna
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Mensalidade por Coluna'
  ClientHeight = 285
  ClientWidth = 1036
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1036
    Height = 89
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 9
      Width = 96
      Height = 16
      Caption = 'Nome do Aluno'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 262
      Top = 9
      Width = 26
      Height = 16
      Caption = 'Ano'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btVisualizarRelColuna: TBitBtn
      Left = 167
      Top = 58
      Width = 153
      Height = 25
      Caption = 'Visualizar Relat'#243'rio'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333FF3333333333333C0C333333333333F777F3333333333CC0F0C3
        333333333777377F33333333C30F0F0C333333337F737377F333333C00FFF0F0
        C33333F7773337377F333CC0FFFFFF0F0C3337773F33337377F3C30F0FFFFFF0
        F0C37F7373F33337377F00FFF0FFFFFF0F0C7733373F333373770FFFFF0FFFFF
        F0F073F33373F333373730FFFFF0FFFFFF03373F33373F333F73330FFFFF0FFF
        00333373F33373FF77333330FFFFF000333333373F333777333333330FFF0333
        3333333373FF7333333333333000333333333333377733333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btVisualizarRelColunaClick
    end
    object btRelColuna: TBitBtn
      Left = 5
      Top = 58
      Width = 156
      Height = 25
      Caption = 'Criar relat'#243'rio por coluna'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
        07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
        0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
      TabOrder = 1
      OnClick = btRelColunaClick
    end
    object cbaluno: TComboBox
      Left = 6
      Top = 28
      Width = 243
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnChange = cbalunoChange
    end
    object cbAno: TComboBox
      Left = 262
      Top = 28
      Width = 75
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 89
    Width = 1036
    Height = 146
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object DBGrid2: TDBGrid
      Left = 0
      Top = 0
      Width = 1036
      Height = 146
      Align = alClient
      DataSource = frmDM.dsRelMensalidade_Coluna
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 235
    Width = 1036
    Height = 50
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 2
    object btSair: TBitBtn
      Left = 768
      Top = 4
      Width = 81
      Height = 43
      Caption = 'Sair'
      Glyph.Data = {
        1A050000424D1A05000000000000760000002800000022000000210000000100
        080000000000A404000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00080808080808
        080808080808080808080808080808080808080808080808080808085C410808
        0808080707080808070708080807070808080000000808070708080808080808
        5C410808080708080807070808080707080808070708000E0E00080808070708
        080808085C410808080807070808080707080808070708080807000E0E060007
        08080807070808085C410807070808080707080808070708080807070808000E
        0E06060007070808080707085C41080808070708080807070808080707080808
        0707000E0E06060600000707080808085C410807080808070708080807070808
        080707080808000E0E06060606000000070708085C4108000000000000000000
        00000000080808070708000E0E06060606060000000000085C41080808080808
        0808080808080800070708080807000E0E06060606060007070808085C410808
        080808080808080808080800000007070808000E0E0606060606000707080808
        5C410808080808080808080808070800000000000000000E0E06060606060007
        070808085C410808080808080808080800070700070707070707000E0E060606
        06060007070808085C410808080808080808080800000700070707070707000E
        0E06060606060007070808085C41080808080808080808080006000007070707
        0707000E0E06060606060007070808085C410808080808080808080800060600
        070707070707000E0E06000006060007070808085C4108080808080707070707
        000E0606000707070707000E0E00070006060007070808085C41080808080707
        07070707000E0E06060007070707000E0E000F0006060007070808085C410808
        0800000000000000000E0E0E060600070707000E0E0600000606000707080808
        5C4108080006060606060606060E0E0E0E0606000707000E0E06060606060007
        070808085C410808000E0E0E0E0E0E0E0E0E0E0E0E0E06060007000E0E060606
        06060007070808085C410808000E0E0F0F0F0F0F0F0F0F0F0F0E0E060007000E
        0E06060606060007070808085C410808000E0E0E0E0E0E0E0E0E0E0F0E0E0600
        0707000E0E06060606060007070808085C4108080800000000000000000E0F0E
        0E0600070707000E0E06060606060007070808085C4108080808080808080808
        000E0E0E060007070707000E0E06060606060007070808085C41080808080808
        08080808000E0E06000707070707000E0E06060606060007070808085C410808
        0808080808080808000E0600070707070707000E0E0606060606000707080808
        5C41080808080808080808080006000007070707070707000E0E060606060007
        070808085C4108080808080808080808000008000707070707070707000E0E06
        06060007070808085C4108080808080808080808080808000707070707070707
        07000E0E06060007070808085C41080808080808080808080808080007070707
        070707070707000E0E060007070808085C410808080808080808080808080800
        0707070707070707070707000E0E0007080808085C4108080808080808080808
        0808080000000000000000000000000000000008080808085C41080808080808
        080808080808080808080808080808080808080808080808080808085C41}
      TabOrder = 0
      OnClick = btSairClick
    end
  end
  object frxMensalidade_coluna: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43490.438271979200000000
    ReportOptions.LastChange = 43490.454749618050000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 632
    Top = 16
    Datasets = <
      item
        DataSet = frxBdMensalidade_coluna
        DataSetName = 'Mensalidade_coluna'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.001250000000000000
      RightMargin = 10.001250000000000000
      TopMargin = 10.001250000000000000
      BottomMargin = 10.001250000000000000
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 20.000000000000000000
        Top = 16.000000000000000000
        Width = 1046.920361175000000000
        object Mensalidade_colunaJANEIRO1: TfrxMemoView
          Top = 4.000000000000000000
          Width = 124.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxBdMensalidade_coluna
          DataSetName = 'Mensalidade_coluna'
          Memo.UTF8W = (
            'Janeiro')
        end
        object Mensalidade_colunaFEVEREIRO1: TfrxMemoView
          Left = 124.000000000000000000
          Top = 4.000000000000000000
          Width = 116.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxBdMensalidade_coluna
          DataSetName = 'Mensalidade_coluna'
          Memo.UTF8W = (
            'Fevereiro')
        end
        object Mensalidade_colunaMARCO1: TfrxMemoView
          Left = 240.000000000000000000
          Top = 4.000000000000000000
          Width = 120.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxBdMensalidade_coluna
          DataSetName = 'Mensalidade_coluna'
          Memo.UTF8W = (
            'Mar'#231'o')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 32.000000000000000000
        Top = 56.000000000000000000
        Width = 1046.920361175000000000
        DataSet = frxBdMensalidade_coluna
        DataSetName = 'Mensalidade_coluna'
        RowCount = 0
        object Mensalidade_colunaJANEIRO: TfrxMemoView
          Width = 120.000000000000000000
          Height = 24.000000000000000000
          DataField = 'JANEIRO'
          DataSet = frxBdMensalidade_coluna
          DataSetName = 'Mensalidade_coluna'
          Memo.UTF8W = (
            '[Mensalidade_coluna."JANEIRO"]')
        end
        object Mensalidade_colunaFEVEREIRO: TfrxMemoView
          Left = 120.000000000000000000
          Width = 120.000000000000000000
          Height = 24.000000000000000000
          DataField = 'FEVEREIRO'
          DataSet = frxBdMensalidade_coluna
          DataSetName = 'Mensalidade_coluna'
          Memo.UTF8W = (
            '[Mensalidade_coluna."FEVEREIRO"]')
        end
        object Mensalidade_colunaMARCO: TfrxMemoView
          Left = 240.000000000000000000
          Width = 120.000000000000000000
          Height = 24.000000000000000000
          DataField = 'MARCO'
          DataSet = frxBdMensalidade_coluna
          DataSetName = 'Mensalidade_coluna'
          Memo.UTF8W = (
            '[Mensalidade_coluna."MARCO"]')
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 20.000000000000000000
        Top = 108.000000000000000000
        Width = 1046.920361175000000000
      end
    end
  end
  object frxBdMensalidade_coluna: TfrxDBDataset
    UserName = 'Mensalidade_coluna'
    CloseDataSource = False
    DataSet = frmDM.qRelMensalidade_Coluna
    BCDToCurrency = False
    Left = 512
    Top = 16
  end
  object qResultado: TIBQuery
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select NOME from CAD_ALUNOS_PRINCIPAL')
    Left = 808
    Top = 17
  end
  object dsResultado: TDataSource
    DataSet = qResultado
    Left = 744
    Top = 17
  end
end
