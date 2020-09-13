object frmRelAtivosInativos: TfrmRelAtivosInativos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de alunos ativos e inativos'
  ClientHeight = 411
  ClientWidth = 618
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 618
    Height = 81
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 5
      Top = 4
      Width = 56
      Height = 16
      Caption = 'Situa'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edSitucao: TComboBox
      Left = 5
      Top = 21
      Width = 100
      Height = 24
      Style = csDropDownList
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Items.Strings = (
        'TODOS'
        'ATIVOS'
        'INATIVOS')
    end
    object btFiltrar: TBitBtn
      Left = 5
      Top = 51
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
      TabOrder = 1
      OnClick = btFiltrarClick
    end
    object btVisualizar: TBitBtn
      Left = 93
      Top = 51
      Width = 153
      Height = 25
      Caption = 'Visualizar Relat'#243'rio'
      TabOrder = 2
      OnClick = btVisualizarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 81
    Width = 618
    Height = 275
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 614
      Height = 271
      Align = alClient
      DataSource = frmDM.dsQPrincipal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'NOME'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_NASCIMENTO'
          Title.Caption = 'DT NASCIMENTO'
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SITUACAO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TELEFONE'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TELEFONE2'
          Width = 100
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 356
    Width = 618
    Height = 55
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 2
    object lbTotal: TLabel
      Left = 5
      Top = 19
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
      Left = 526
      Top = 6
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
  object frxSitucao: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43455.429822094900000000
    ReportOptions.LastChange = 43840.803124976840000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 360
    Top = 24
    Datasets = <
      item
        DataSet = bdSitucao
        DataSetName = 'AtivosInativos'
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
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          Align = baCenter
          Left = 173.858380000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RELAT'#211'RIO DE ALUNOS ATIVOS X INATIVOS')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 0.779530000000000000
          Top = 3.779529999999994000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          DataSet = bdSitucao
          DataSetName = 'AtivosInativos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Nome do Aluno')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 403.582870000000000000
          Top = 3.779529999999994000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataSet = bdSitucao
          DataSetName = 'AtivosInativos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Situa'#231#227'o')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 475.393940000000000000
          Top = 3.779529999999994000
          Width = 241.133858270000000000
          Height = 18.897650000000000000
          DataSet = bdSitucao
          DataSetName = 'AtivosInativos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Contatos')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 296.700990000000000000
          Top = 3.779529999999994000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataSet = bdSitucao
          DataSetName = 'AtivosInativos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Dt. Nascim.')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        DataSet = bdSitucao
        DataSetName = 'AtivosInativos'
        RowCount = 0
        object AtivosInativosNOME: TfrxMemoView
          Left = 0.779530000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = bdSitucao
          DataSetName = 'AtivosInativos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[AtivosInativos."NOME"]')
          ParentFont = False
        end
        object AtivosInativosSITUACAO: TfrxMemoView
          Left = 403.582870000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'SITUACAO'
          DataSet = bdSitucao
          DataSetName = 'AtivosInativos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[AtivosInativos."SITUACAO"]')
          ParentFont = False
        end
        object AtivosInativosTELEFONE: TfrxMemoView
          Left = 475.393940000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'CELULAR'
          DataSet = bdSitucao
          DataSetName = 'AtivosInativos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            '[AtivosInativos."CELULAR"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo5: TfrxMemoView
          Left = 595.472790000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONE'
          DataSet = bdSitucao
          DataSetName = 'AtivosInativos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[AtivosInativos."TELEFONE"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo7: TfrxMemoView
          Left = 296.692913390000000000
          Width = 105.826771650000000000
          Height = 18.897650000000000000
          DataField = 'DATA_NASCIMENTO'
          DataSet = bdSitucao
          DataSetName = 'AtivosInativos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[AtivosInativos."DATA_NASCIMENTO"]')
          ParentFont = False
        end
      end
      object ColumnFooter1: TfrxColumnFooter
        FillType = ftBrush
        Height = 22.677165354330700000
        Top = 272.126160000000000000
        Width = 718.110700000000000000
        object Date: TfrxMemoView
          Align = baRight
          Left = 555.590910000000000000
          Top = 4.000000000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Gerado em [Date]')
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 188.976500000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          Top = 5.000000000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Total de registros: [Line#]')
        end
      end
    end
  end
  object bdSitucao: TfrxDBDataset
    UserName = 'AtivosInativos'
    CloseDataSource = False
    FieldAliases.Strings = (
      '-COD=COD'
      'NOME=NOME'
      'TELEFONE=CELULAR'
      'DATA_NASCIMENTO=DATA_NASCIMENTO'
      '-CPF=CPF'
      '-ENDERECO=ENDERECO'
      '-EMAIL=EMAIL'
      'SITUACAO=SITUACAO'
      'TELEFONE2=TELEFONE')
    DataSource = frmDM.dsQPrincipal
    BCDToCurrency = False
    Left = 288
    Top = 24
  end
end
