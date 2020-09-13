object frmRelAulas: TfrmRelAulas
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Aulas'
  ClientHeight = 539
  ClientWidth = 538
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 538
    Height = 121
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 5
      Top = 4
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
      Left = 5
      Top = 74
      Width = 72
      Height = 16
      Caption = 'Data Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 101
      Top = 74
      Width = 63
      Height = 16
      Caption = 'Data Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cbAluno: TComboBox
      Left = 5
      Top = 21
      Width = 292
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'CBALUNO'
    end
    object btFiltrar: TBitBtn
      Left = 303
      Top = 91
      Width = 91
      Height = 25
      Caption = 'Filtrar'
      Glyph.Data = {
        4E010000424D4E01000000000000760000002800000014000000120000000100
        040000000000D8000000CE0E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888800008888888EE6688888888800008888888EE6688888888800008888
        888EE6688888888800008888888EE6688888888800008888888EE66888888888
        00008888888EE6688888888800008888888EEE66666888880000888888EEEE66
        66666888000088888EEEEEE66888688800008888EEEEEEEE668866880000888E
        EEEEEEEEE66866880000888EEEEEEEEEE6666688000088EEEEEEEEEEEE666688
        00008EEEEEEEEEEEEEE6668800008EEEEEEEEEEEEEEE666800008EEEEEEEEEEE
        EEEEE6680000888888888888888888880000}
      TabOrder = 1
      OnClick = btFiltrarClick
    end
    object btVisualizar: TBitBtn
      Left = 408
      Top = 91
      Width = 122
      Height = 25
      Caption = 'Visualizar Relat'#243'rio'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000CE0E0000C40E000000000000000000000000FF0000FF
        0000FF0000FF8080808080808080808080808080808080808080808080808080
        808080800000FF0000FF0000FF0000FF00000000000000000000000000000000
        00000000000000000000000000000000008080800000FF0000FF0000FF0000FF
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        008080800000FF0000FF0000FF0000FF000000FFFFFF808080800000FFFFFF80
        8080800000800000800000FFFFFF0000008080800000FF0000FF0000FF0000FF
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        008080800000FF0000FF0000FF0000FF000000FFFFFF800000FFFFFF80000080
        0000800000800000800000FFFFFF0000008080800000FF0000FF0000FF0000FF
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        008080800000FF0000FF0000FF0000FF000000FFFFFF800000FFFFFF80000080
        0000800000800000800000FFFFFF0000008080800000FF0000FF0000FF0000FF
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        008080800000FF0000FF0000FF0000FF000000FFFFFF800000FFFFFF80000080
        0000800000800000800000FFFFFF0000008080800000FF0000FF0000FF0000FF
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        008080800000FF0000FF0000FF0000FF000000FFFFFF808080808080FFFFFF80
        0000800000800000800000FFFFFF0000008080800000FF0000FF0000FF0000FF
        000000FFFFFF800000800000FFFFFFFFFFFFFFFFFF0000000000000000000000
        000000FF0000FF0000FF0000FF0000FF000000FFFFFF808080808080FFFFFF80
        0000800000000000C0C0C00000000000FF0000FF0000FF0000FF0000FF0000FF
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000FF0000
        FF0000FF0000FF0000FF0000FF0000FF00000000000000000000000000000000
        00000000000000000000FF0000FF0000FF0000FF0000FF0000FF}
      TabOrder = 2
      OnClick = btVisualizarClick
    end
    object edDataInicial: TDateTimePicker
      Left = 5
      Top = 91
      Width = 81
      Height = 24
      Date = 43848.801026863420000000
      Time = 43848.801026863420000000
      TabOrder = 3
    end
    object edDataFinal: TDateTimePicker
      Left = 101
      Top = 91
      Width = 81
      Height = 24
      Date = 43848.801038622690000000
      Time = 43848.801038622690000000
      TabOrder = 4
    end
    object cbData: TCheckBox
      Left = 5
      Top = 51
      Width = 97
      Height = 17
      Caption = 'Usar data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = cbDataClick
    end
    object btLimparFiltro: TBitBtn
      Left = 198
      Top = 91
      Width = 91
      Height = 25
      Caption = 'Limpar Filtro'
      Glyph.Data = {
        4E010000424D4E01000000000000760000002800000014000000120000000100
        040000000000D8000000CE0E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888800008888899999999998888800008888999999999999888800008889
        998EE6688899988800008899988EE6688999998800008999888EE66899989998
        00008998888EE6699988899800008998888EE999966889980000899888EE9999
        66666998000089988EE999E66888699800008998EE999EEE668869980000899E
        E999EEEEE668699800008999999EEEEEE66699980000889999EEEEEEEE699988
        00008EE999EEEEEEEE99968800008EEE999999999999666800008EEEE9999999
        999EE6680000888888888888888888880000}
      TabOrder = 6
      OnClick = btLimparFiltroClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 489
    Width = 538
    Height = 50
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    object lbTotal: TLabel
      Left = 5
      Top = 18
      Width = 43
      Height = 16
      Caption = 'lbTotal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btSair: TBitBtn
      Left = 449
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
  object Panel3: TPanel
    Left = 0
    Top = 121
    Width = 538
    Height = 368
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 2
    object Label4: TLabel
      Left = 2
      Top = 227
      Width = 70
      Height = 16
      Caption = 'Anota'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 534
      Height = 219
      Align = alTop
      DataSource = frmDM.dsRelAula
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'ANOTACOES'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'nome'
          Title.Caption = 'Nome do Aluno'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 242
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data_aula'
          Title.Caption = 'Data'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'observacao'
          Title.Caption = 'Observa'#231#245'es'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 145
          Visible = True
        end>
    end
    object DBMemo1: TDBMemo
      Left = 2
      Top = 244
      Width = 534
      Height = 122
      Align = alBottom
      DataField = 'ANOTACOES'
      DataSource = frmDM.dsRelAula
      Enabled = False
      TabOrder = 1
    end
  end
  object dsResultado: TDataSource
    DataSet = qResultado
    Left = 319
    Top = 56
  end
  object qResultado: TADOQuery
    Connection = frmDM.Conexao
    CursorType = ctStatic
    Parameters = <>
    Left = 319
    Top = 8
  end
  object frxRelAula: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43542.926672256900000000
    ReportOptions.LastChange = 43851.890350011580000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 406
    Top = 8
    Datasets = <
      item
        DataSet = frxDBRelAula
        DataSetName = 'RelAula'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'Nome'
        Value = Null
      end
      item
        Name = 'Imagem'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop]
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 27.779530000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baCenter
          Left = 165.039580000000000000
          Top = 4.000000000000000000
          Width = 388.031540000000000000
          Height = 19.779530000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RELAT'#211'RIO DE AULAS INDIVIDUAL')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 24.000000000000000000
        Top = 105.826840000000000000
        Width = 718.110700000000000000
        DataSet = frxDBRelAula
        DataSetName = 'RelAula'
        RowCount = 0
        object Nome: TfrxMemoView
          Left = 3.779530000000000000
          Width = 710.614410000000000000
          Height = 16.000000000000000000
          DataField = 'nome'
          DataSet = frxDBRelAula
          DataSetName = 'RelAula'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[RelAula."nome"]')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 186.330798980000000000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        DataSet = frxDBRelAula
        DataSetName = 'RelAula'
        RowCount = 0
        object RelFotoDATA1: TfrxMemoView
          Left = 4.000000000000000000
          Top = 1.000000000000000000
          Width = 216.063080000000000000
          Height = 16.000000000000000000
          DataSet = frxDBRelAula
          DataSetName = 'RelAula'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Data da Aula: [RelAula."data_aula"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 18.677180000000000000
          Width = 216.063080000000000000
          Height = 16.000000000000000000
          DataSet = frxDBRelAula
          DataSetName = 'RelAula'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Observa'#231#245'es: [RelAula."observacao"]')
          ParentFont = False
        end
        object RelAulaANOTACOES: TfrxMemoView
          Left = 3.779530000000000000
          Top = 37.795300000000000000
          Width = 710.551640000000000000
          Height = 147.401670000000000000
          DataField = 'ANOTACOES'
          DataSet = frxDBRelAula
          DataSetName = 'RelAula'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[RelAula."ANOTACOES"]')
          ParentFont = False
        end
        object Line: TfrxMemoView
          Align = baRight
          Left = 680.315400000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Line]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 359.055350000000000000
        Width = 718.110700000000000000
      end
    end
  end
  object frxDBRelAula: TfrxDBDataset
    UserName = 'RelAula'
    CloseDataSource = False
    FieldAliases.Strings = (
      'nome=nome'
      'data_aula=data_aula'
      'observacao=observacao'
      'ANOTACOES=ANOTACOES')
    DataSource = frmDM.dsRelAula
    BCDToCurrency = False
    Left = 470
    Top = 8
  end
end
