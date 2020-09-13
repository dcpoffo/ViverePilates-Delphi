object frmPesquisarAluno: TfrmPesquisarAluno
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Pesquisa Aluno'
  ClientHeight = 319
  ClientWidth = 397
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 397
    Height = 53
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 5
      Top = 5
      Width = 94
      Height = 16
      Caption = 'Nome do aluno'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edNome: TEdit
      Left = 5
      Top = 23
      Width = 284
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = edNomeChange
      OnKeyPress = edNomeKeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 53
    Width = 397
    Height = 213
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 393
      Height = 209
      Align = alClient
      DataSource = frmDM.dsPesquisaAlunos
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
      OnDblClick = DBGrid1DblClick
      OnTitleClick = DBGrid1TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'cod'
          Title.Caption = 'C'#211'DIGO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Width = 226
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SITUACAO'
          Title.Caption = 'SITUA'#199#195'O'
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 266
    Width = 397
    Height = 53
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
      Left = 307
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
end
