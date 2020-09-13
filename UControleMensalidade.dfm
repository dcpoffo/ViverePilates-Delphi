object frmControleMensalidade: TfrmControleMensalidade
  Left = 104
  Top = 31
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Controle de Mensalidades'
  ClientHeight = 613
  ClientWidth = 705
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
    Width = 705
    Height = 129
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label2: TLabel
      Left = 7
      Top = 52
      Width = 96
      Height = 16
      Caption = 'Nome do Aluno'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label3: TLabel
      Left = 263
      Top = 52
      Width = 26
      Height = 16
      Caption = 'Ano'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object btFiltrar: TBitBtn
      Left = 5
      Top = 98
      Width = 75
      Height = 25
      Caption = 'Filtrar'
      Glyph.Data = {
        36050000424D360500000000000036040000280000000E000000100000000100
        08000000000000010000CA0E0000C30E00000001000000000000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000ACACACACACAC
        ACACACAC0000ACAC0000ACACACACACACACACAC02230500AC0000ACAC00000000
        00000223050500000000ACAC56ACACACAC02230505ACAC000000ACAC56D7D7D7
        02230505ACD7AC000000ACAC56000056AC0505ACD7D7AC000000AC56AC23AC00
        5656ACD7D7D7AC00000056D723AC23AC00ACD7D7D7D7AC0000005623D723AC23
        00ACD7D7D7D7AC00000056D723D723AC00ACD7D7D7D7AC000000AC56D723D700
        ACD7D7D7D7D7AC000000ACAC565600ACD7D7D7D7D7D7AC000000ACAC56D7D7D7
        D7D7D7D700000000FFFFACAC56D7D7D7D7D7D7D7ACD756AC0000ACAC56D7D7D7
        D7D7D7D7AC56ACAC0000ACAC565656565656565656ACACAC0000}
      TabOrder = 0
      OnClick = btFiltrarClick
    end
    object btVisualizar: TBitBtn
      Left = 86
      Top = 98
      Width = 118
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
      TabOrder = 1
      OnClick = btVisualizarClick
    end
    object cbaluno: TComboBox
      Left = 7
      Top = 68
      Width = 243
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnChange = cbalunoChange
      OnExit = cbalunoExit
    end
    object cbAno: TComboBox
      Left = 263
      Top = 68
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
    object btRecibo: TBitBtn
      Left = 210
      Top = 97
      Width = 118
      Height = 25
      Caption = 'Visualizar Recibo'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADA000000000000ADAD0FFFFFFFFFF0DADA0F00F00000F0ADAD0FFFFFFFFFF0
        DADA0F00F00000F0ADAD0FFFFFFFFFF0DADA0FFFFFFF0FF0ADAD0F00FFF080F0
        DAD40F080F0808000D440FF08080808880440000080808888844DADAD0808888
        8844ADADAD0888888044DADADAD000000A44ADADADADADADADAD}
      TabOrder = 4
      OnClick = btReciboClick
    end
    object rgControle: TRadioGroup
      Left = 344
      Top = 52
      Width = 113
      Height = 70
      Caption = 'Controle Pessoal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Sim'
        'N'#227'o')
      ParentFont = False
      TabOrder = 5
    end
    object rgTipo: TRadioGroup
      Left = 7
      Top = 2
      Width = 170
      Height = 49
      Caption = 'Tipo de consulta'
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Por Aluno'
        'Geral')
      ParentFont = False
      TabOrder = 6
      OnClick = rgTipoClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 129
    Width = 705
    Height = 422
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 705
      Height = 422
      Align = alClient
      DataSource = frmDM.dsRelControleMensalidade
      DrawingStyle = gdsClassic
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODALUNO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'ANO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPF'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 213
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SITUACAO'
          Title.Caption = 'SITUA'#199#195'O'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MES'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAGO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VISUALIZAR'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 86
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 551
    Width = 705
    Height = 62
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 2
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
    object Label1: TLabel
      Left = 344
      Top = 14
      Width = 77
      Height = 16
      Caption = 'Total Pago: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 316
      Top = 41
      Width = 105
      Height = 16
      Caption = 'Total N'#227'o Pago: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btSair: TBitBtn
      Left = 616
      Top = 9
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
    object edPago: TEdit
      Left = 417
      Top = 6
      Width = 89
      Height = 24
      Align = alCustom
      Alignment = taRightJustify
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Text = 'edPago'
    end
    object edNaoPago: TEdit
      Left = 417
      Top = 33
      Width = 89
      Height = 24
      Align = alCustom
      Alignment = taRightJustify
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Text = 'edNaoPago'
    end
  end
  object frxMensalidade: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43453.808238981500000000
    ReportOptions.LastChange = 43511.459533356480000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 584
    Top = 64
    Datasets = <
      item
        DataSet = frxBdMensalidade
        DataSetName = 'Mensalidade'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'Pago'
        Value = '<pago>'
      end
      item
        Name = 'NaoPago'
        Value = '<naopago>'
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          Left = 228.661565000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RELATORIO DE MENSALIDADES')
          ParentFont = False
        end
        object Page: TfrxMemoView
          Left = 500.000000000000000000
          Width = 216.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [Page] de [TotalPages#]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object mdMensalidade: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        DataSet = frxBdMensalidade
        DataSetName = 'Mensalidade'
        RowCount = 0
        object MensalidadeNOME: TfrxMemoView
          Left = 183.370130000000000000
          Top = 0.779529999999994100
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = frxBdMensalidade
          DataSetName = 'Mensalidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Mensalidade."NOME"]')
          ParentFont = False
        end
        object MensalidadeMES: TfrxMemoView
          Left = 414.173470000000000000
          Top = 0.779529999999994100
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'MES'
          DataSet = frxBdMensalidade
          DataSetName = 'Mensalidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Mensalidade."MES"]')
          ParentFont = False
        end
        object MensalidadeVALOR: TfrxMemoView
          Left = 527.559370000000000000
          Top = 0.779529999999994100
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR'
          DataSet = frxBdMensalidade
          DataSetName = 'Mensalidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Mensalidade."VALOR"]')
          ParentFont = False
        end
        object MensalidadeANO: TfrxMemoView
          Left = 43.000000000000000000
          Top = 0.780000000000001200
          Width = 40.000000000000000000
          Height = 18.900000000000000000
          DataField = 'ANO'
          DataSet = frxBdMensalidade
          DataSetName = 'Mensalidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Mensalidade."ANO"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 83.000000000000000000
          Top = 0.780000000000001200
          Width = 100.000000000000000000
          Height = 18.900000000000000000
          DataField = 'CPF'
          DataSet = frxBdMensalidade
          DataSetName = 'Mensalidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Mensalidade."CPF"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 22.677180000000000000
        ParentFont = False
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo3: TfrxMemoView
          Left = 183.370130000000000000
          Top = 3.779529999999994000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          DataSet = frxBdMensalidade
          DataSetName = 'Mensalidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 414.173470000000000000
          Top = 3.779529999999994000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataSet = frxBdMensalidade
          DataSetName = 'Mensalidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'M'#234's')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 527.559370000000000000
          Top = 3.779529999999994000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataSet = frxBdMensalidade
          DataSetName = 'Mensalidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 43.000000000000000000
          Top = 4.000000000000000000
          Width = 40.000000000000000000
          Height = 18.897650000000000000
          DataSet = frxBdMensalidade
          DataSetName = 'Mensalidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Ano')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 83.000000000000000000
          Top = 4.000000000000000000
          Width = 100.000000000000000000
          Height = 18.897650000000000000
          DataSet = frxBdMensalidade
          DataSetName = 'Mensalidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'C.P.F.')
          ParentFont = False
        end
      end
      object ColumnFooter1: TfrxColumnFooter
        FillType = ftBrush
        Height = 58.236240000000000000
        Top = 226.771800000000000000
        Width = 718.110700000000000000
        object Date: TfrxMemoView
          Align = baRight
          Left = 564.724799999999900000
          Top = 7.559059999999988000
          Width = 153.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Gerado em: [Date]')
          ParentFont = False
        end
        object Line: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 110.299320000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Total de registros:')
        end
        object SysMemo2: TfrxSysMemoView
          Left = 116.000000000000000000
          Top = 8.000000000000000000
          Width = 52.000000000000000000
          Height = 16.000000000000000000
          Memo.UTF8W = (
            '[COUNT(mdMensalidade)]')
        end
        object Memo8: TfrxMemoView
          Left = 284.000000000000000000
          Top = 8.000000000000000000
          Width = 244.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total Valores Pago: [Pago]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 284.000000000000000000
          Top = 31.999999999999970000
          Width = 244.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total Valores N'#227'o Pago: [NaoPago]')
          ParentFont = False
        end
      end
    end
  end
  object frxBdMensalidade: TfrxDBDataset
    UserName = 'Mensalidade'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CPF=CPF'
      'NOME=NOME'
      'SITUACAO=SITUACAO'
      'MES=MES'
      'VALOR=VALOR'
      'PAGO=PAGO'
      'ANO=ANO'
      'VISUALIZAR=VISUALIZAR')
    DataSet = frmDM.qRelControleMensalidade
    BCDToCurrency = False
    Left = 496
    Top = 64
  end
  object dsResultado: TDataSource
    Left = 635
    Top = 9
  end
  object frxDBRecibo: TfrxDBDataset
    UserName = 'Recibo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CPF=CPF'
      'NOME=NOME'
      'SITUACAO=SITUACAO'
      'MES=MES'
      'VALOR=VALOR'
      'PAGO=PAGO'
      'ANO=ANO'
      'VISUALIZAR=VISUALIZAR')
    DataSet = frmDM.qRelControleMensalidade
    BCDToCurrency = False
    Left = 496
    Top = 112
  end
  object frxRecibo: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43501.417591770800000000
    ReportOptions.LastChange = 43507.451408437500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 584
    Top = 112
    Datasets = <
      item
        DataSet = frxDBDados
        DataSetName = 'Dados'
      end
      item
        DataSet = frxDBRecibo
        DataSetName = 'Recibo'
      end>
    Variables = <>
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 28.000000000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          Left = 131.055350000000000000
          Top = 3.000000000000000000
          Width = 456.000000000000000000
          Height = 28.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DECLARA'#199#195'O DE QUITA'#199#195'O DE MENSALIDADES')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 64.000000000000000000
        Top = 68.031540000000010000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 12.000000000000000000
          Top = 8.000000000000000000
          Width = 688.000000000000000000
          Height = 48.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            
              'Eu, [Dados."NOME"], Fisioterapeuta - CREFITO n'#186' [Dados."CREFITO"' +
              '], inscrita no C.P.F. n'#186' [Dados."CPF"], declaro ter recebido de ' +
              '[Recibo."NOME"], inscrito no C.P.F. n'#186' [Recibo."CPF"], os valore' +
              's abaixo relacionados, referente ao pagamento das mensalidade do' +
              ' ano [Recibo."ANO"]. ')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end>
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 16.000000000000000000
        Top = 230.551330000000000000
        Width = 718.110700000000000000
        DataSet = frxDBRecibo
        DataSetName = 'Recibo'
        RowCount = 0
        object ReciboANO: TfrxMemoView
          Left = 148.000000000000000000
          Width = 116.000000000000000000
          Height = 16.000000000000000000
          DataField = 'ANO'
          DataSet = frxDBRecibo
          DataSetName = 'Recibo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Recibo."ANO"]')
          ParentFont = False
        end
        object ReciboMES: TfrxMemoView
          Left = 264.000000000000000000
          Width = 196.000000000000000000
          Height = 16.000000000000000000
          DataField = 'MES'
          DataSet = frxDBRecibo
          DataSetName = 'Recibo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Recibo."MES"]')
          ParentFont = False
        end
        object ReciboVALOR: TfrxMemoView
          Left = 460.000000000000000000
          Width = 68.000000000000000000
          Height = 16.000000000000000000
          DataField = 'VALOR'
          DataSet = frxDBRecibo
          DataSetName = 'Recibo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Recibo."VALOR"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 136.000000000000000000
        Top = 306.141930000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          Left = 233.055350000000000000
          Top = 52.000000000000000000
          Width = 260.000000000000000000
          Height = 60.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'Fisioterapeuta [Dados."NOME"]'
            'CREFITO: [Dados."CREFITO"]'
            'C.P.F.: [Dados."CPF"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo4: TfrxMemoView
          Left = 8.000000000000000000
          Top = 114.000000000000000000
          Width = 360.000000000000000000
          Height = 16.000000000000000000
          DisplayFormat.FormatStr = 'dd mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Ascurra, [Date]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 16.000000000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Left = 148.000000000000000000
          Width = 116.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Ano')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 264.000000000000000000
          Width = 196.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'M'#234's')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 460.000000000000000000
          Width = 68.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDados: TfrxDBDataset
    UserName = 'Dados'
    CloseDataSource = False
    FieldAliases.Strings = (
      'COD=COD'
      'NOME=NOME'
      'CPF=CPF'
      'CREFITO=CREFITO')
    DataSet = frmDM.qDados
    BCDToCurrency = False
    Left = 496
    Top = 8
  end
  object frxDBMensalidade: TfrxDBDataset
    UserName = 'Mensalidade_Geral'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CPF=CPF'
      'NOME=NOME'
      'SITUACAO=SITUACAO'
      'MES=MES'
      'ANO=ANO'
      'VALOR=VALOR'
      'PAGO=PAGO'
      'VISUALIZAR=VISUALIZAR')
    DataSet = frmDM.qRelControleMensalidade
    BCDToCurrency = False
    Left = 496
    Top = 177
  end
  object _frxMensalidade_Geral: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44083.952978391200000000
    ReportOptions.LastChange = 44083.952978391200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 608
    Top = 257
    Datasets = <>
    Variables = <>
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        RowCount = 0
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 185.196970000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
    end
  end
  object qResultado: TADOQuery
    Connection = frmDM.Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select NOME from CAD_ALUNOS_PRINCIPAL')
    Left = 568
    Top = 8
  end
  object frxMensalidade_Geral: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44083.953264652800000000
    ReportOptions.LastChange = 44083.992582719900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 608
    Top = 177
    Datasets = <
      item
        DataSet = frxDBMensalidade
        DataSetName = 'Mensalidade_Geral'
      end>
    Variables = <>
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
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 37.000000000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          Align = baCenter
          Left = 245.055350000000000000
          Top = 9.000000000000000000
          Width = 228.000000000000000000
          Height = 24.000000000000000000
          DataSet = frxDBMensalidade
          DataSetName = 'Mensalidade_Geral'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO CONT'#193'BIL')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 24.000000000000000000
        Top = 294.803340000000000000
        Width = 718.110700000000000000
        object Page: TfrxMemoView
          Left = 485.000000000000000000
          Top = 1.000000000000000000
          Width = 232.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [Page] de [TotalPages#]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Date: TfrxMemoView
          Width = 240.000000000000000000
          Height = 20.000000000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Impresso em [Date], '#224's [time]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 117.165430000000000000
        Width = 718.110700000000000000
        DataSet = frxDBMensalidade
        DataSetName = 'Mensalidade_Geral'
        RowCount = 0
        object Mensalidade_GeralMES: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          DataField = 'MES'
          DataSet = frxDBMensalidade
          DataSetName = 'Mensalidade_Geral'
          Memo.UTF8W = (
            '[Mensalidade_Geral."MES"]')
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 166.299320000000000000
        Width = 718.110700000000000000
        DataSet = frxDBMensalidade
        DataSetName = 'Mensalidade_Geral'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          DataField = 'MES'
          DataSet = frxDBMensalidade
          DataSetName = 'Mensalidade_Geral'
          Memo.UTF8W = (
            '[Mensalidade_Geral."MES"]')
        end
      end
      object SubdetailData1: TfrxSubdetailData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        DataSet = frxDBMensalidade
        DataSetName = 'Mensalidade_Geral'
        RowCount = 0
        object Mensalidade_GeralCPF: TfrxMemoView
          Left = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'CPF'
          DataSet = frxDBMensalidade
          DataSetName = 'Mensalidade_Geral'
          Memo.UTF8W = (
            '[Mensalidade_Geral."CPF"]')
        end
      end
    end
  end
end
