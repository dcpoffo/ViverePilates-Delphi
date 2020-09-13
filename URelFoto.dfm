object frmRelFoto: TfrmRelFoto
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de fotos'
  ClientHeight = 668
  ClientWidth = 1019
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel4: TPanel
    Left = 121
    Top = 57
    Width = 898
    Height = 538
    Align = alClient
    BevelInner = bvRaised
    TabOrder = 4
    object Image1: TImage
      Left = 2
      Top = 2
      Width = 894
      Height = 534
      Align = alClient
      Proportional = True
      ExplicitLeft = -14
      ExplicitTop = -142
    end
    object lbFoto: TLabel
      Left = 392
      Top = 262
      Width = 158
      Height = 13
      Caption = '<Imagem n'#227'o encontrada>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1019
    Height = 57
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 5
      Top = 8
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
    object btApagar: TSpeedButton
      Left = 303
      Top = 25
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
      OnClick = btApagarClick
    end
    object btVisualizar: TBitBtn
      Left = 513
      Top = 25
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
      TabOrder = 0
      OnClick = btVisualizarClick
    end
    object cbAluno: TComboBox
      Left = 5
      Top = 25
      Width = 292
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'CBALUNO'
      OnKeyPress = cbAlunoKeyPress
    end
    object btFiltrar: TBitBtn
      Left = 407
      Top = 25
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
      TabOrder = 2
      OnClick = btFiltrarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 618
    Width = 1019
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
      Left = 931
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 121
    Height = 538
    Align = alLeft
    DataSource = frmDM.dsQRelFoto
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'Data_Foto'
        Title.Caption = 'DATA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object Panel3: TPanel
    Left = 0
    Top = 595
    Width = 1019
    Height = 23
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 3
    object DBText1: TDBText
      Left = 5
      Top = 4
      Width = 53
      Height = 16
      AutoSize = True
      DataField = 'CAMINHO'
      DataSource = frmDM.dsQRelFoto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object dsResultado: TDataSource
    DataSet = qResultado
    Left = 792
    Top = 8
  end
  object frxRelFoto: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43542.926672256900000000
    ReportOptions.LastChange = 43883.873324988420000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnBeforePrint = frxRelFotoBeforePrint
    Left = 560
    Top = 8
    Datasets = <
      item
        DataSet = frxDBRelFoto
        DataSetName = 'RelFoto'
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
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 24.000000000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baCenter
          Left = 199.055350000000000000
          Top = 4.000000000000000000
          Width = 320.000000000000000000
          Height = 19.779530000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RELAT'#211'RIO DE ACOMPANHAMENTO INDIVIDUAL')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 24.000000000000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        DataSet = frxDBRelFoto
        DataSetName = 'RelFoto'
        RowCount = 0
        object Nome: TfrxMemoView
          Left = 4.000000000000000000
          Top = 4.000000000000000000
          Width = 344.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Aluno: [Nome]')
          ParentFont = False
        end
        object COUNT: TfrxMemoView
          Left = 623.622450000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'Data_Foto'
          DataSet = frxDBRelFoto
          DataSetName = 'RelFoto'
          Memo.UTF8W = (
            '[RelFoto."Data_Foto"]')
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 444.000000000000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        DataSet = frxDBRelFoto
        DataSetName = 'RelFoto'
        RowCount = 0
        object RelFotoDATA1: TfrxMemoView
          Left = 4.000000000000000000
          Width = 80.000000000000000000
          Height = 16.000000000000000000
          DataField = 'DATA_foto'
          DataSet = frxDBRelFoto
          DataSetName = 'RelFoto'
          Memo.UTF8W = (
            '[RelFoto."DATA_foto"]')
        end
        object Picture1: TfrxPictureView
          Left = 4.000000000000000000
          Top = 20.000000000000000000
          Width = 648.000000000000000000
          Height = 412.000000000000000000
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
    end
  end
  object frxDBRelFoto: TfrxDBDataset
    UserName = 'RelFoto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Data_Foto=Data_Foto'
      'nome=nome'
      'caminho=caminho')
    DataSource = frmDM.dsQRelFoto
    BCDToCurrency = False
    Left = 648
    Top = 8
  end
  object qResultado: TADOQuery
    Connection = frmDM.Conexao
    Parameters = <>
    Left = 728
    Top = 8
  end
end
