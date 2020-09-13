object frmDM: TfrmDM
  Left = 0
  Top = 0
  Caption = 'frmDM'
  ClientHeight = 510
  ClientWidth = 724
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dsQAula: TDataSource
    DataSet = qAula
    Left = 152
    Top = 229
  end
  object dsQPrincipal: TDataSource
    DataSet = QPrincipal
    Left = 152
    Top = 61
  end
  object dsPesquisaAlunos: TDataSource
    DataSet = qPesquisaAluno
    Left = 424
    Top = 8
  end
  object dsQMensalidade: TDataSource
    DataSet = QMensalidade
    Left = 152
    Top = 117
  end
  object dsQFoto: TDataSource
    DataSet = qFoto
    Left = 152
    Top = 453
  end
  object dsQRelFoto: TDataSource
    DataSet = qRelFoto
    Left = 304
    Top = 453
  end
  object dsQAlunos: TDataSource
    DataSet = qAlunos
    Left = 232
    Top = 8
  end
  object dsQRelMensalidade: TDataSource
    DataSet = qRelMensalidade
    Left = 344
    Top = 117
  end
  object dsRelMensalidade_Coluna: TDataSource
    DataSet = qRelMensalidade_Coluna
    Left = 536
    Top = 389
  end
  object dsRelControleMensalidade: TDataSource
    DataSet = qRelControleMensalidade
    Left = 536
    Top = 333
  end
  object dsQDados: TDataSource
    DataSet = qDados
    Left = 152
    Top = 173
  end
  object dsQaula1: TDataSource
    DataSet = Qaula1
    Left = 656
    Top = 229
  end
  object Conexao: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password="";Persist Security Info=True;User I' +
      'D=root;Data Source=vivere_pilates;Initial Catalog=vivere_pilates'
    IsolationLevel = ilReadCommitted
    LoginPrompt = False
    Left = 56
    Top = 8
  end
  object qFoto: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from foto')
    Left = 56
    Top = 453
  end
  object qRelFoto: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    AfterScroll = qRelFotoAfterScroll
    Parameters = <>
    SQL.Strings = (
      
        'select  F.Data_Foto, c.nome, f.caminho from cad_alunos_principal' +
        ' as C'
      'inner join foto as F on f.CODALUNO = c.COD;')
    Left = 232
    Top = 453
  end
  object qFotoExames: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select max(cod) as codigo from exames')
    Left = 56
    Top = 344
  end
  object qAula: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from aula')
    Left = 56
    Top = 229
  end
  object Qaula1: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select max(cod) as codigo from aula')
    Left = 576
    Top = 229
  end
  object qDados: TADOQuery
    Active = True
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from dados')
    Left = 56
    Top = 173
  end
  object QMensalidade: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select  f.codmensalidade, C.COD, C.NOME, F.CODALUNO, F.ANO, F.ME' +
        'S, F.DATA_MENSALIDADE, F.VALOR, F.PAGO, F.VISUALIZAR, C.SITUACAO'
      'from  MENSALIDADE F, CAD_ALUNOS_PRINCIPAL C'
      'where C.COD = F.CODALUNO AND  C.SITUACAO = '#39'ATIVO'#39)
    Left = 56
    Top = 117
    object QMensalidadeANO: TWideStringField
      FieldName = 'ANO'
      Size = 4
    end
    object QMensalidadeMES: TWideStringField
      FieldName = 'MES'
      Size = 9
    end
    object QMensalidadeDATA_MENSALIDADE: TDateField
      FieldName = 'DATA_MENSALIDADE'
    end
    object QMensalidadeVALOR: TBCDField
      FieldName = 'VALOR'
      DisplayFormat = '#.00'
      Precision = 5
      Size = 2
    end
    object QMensalidadePAGO: TWideStringField
      FieldName = 'PAGO'
      Size = 3
    end
    object QMensalidadeVISUALIZAR: TWideStringField
      FieldName = 'VISUALIZAR'
      Size = 3
    end
    object QMensalidadecodmensalidade: TAutoIncField
      FieldName = 'codmensalidade'
      ReadOnly = True
    end
  end
  object qRelMensalidade: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select F.ANO, C.COD, C.CPF, C.NOME, C.SITUACAO, F.CODALUNO, F.ME' +
        'S,'
      
        ' F.VALOR, F.PAGO from  MENSALIDADE F, CAD_ALUNOS_PRINCIPAL C whe' +
        're C.COD = F.CODALUNO')
    Left = 248
    Top = 117
    object qRelMensalidadeANO: TWideStringField
      FieldName = 'ANO'
      Size = 4
    end
    object qRelMensalidadeCOD: TAutoIncField
      FieldName = 'COD'
      ReadOnly = True
    end
    object qRelMensalidadeCPF: TWideStringField
      FieldName = 'CPF'
      Size = 14
    end
    object qRelMensalidadeNOME: TWideStringField
      FieldName = 'NOME'
      Size = 35
    end
    object qRelMensalidadeSITUACAO: TWideStringField
      FieldName = 'SITUACAO'
      Size = 7
    end
    object qRelMensalidadeCODALUNO: TIntegerField
      FieldName = 'CODALUNO'
    end
    object qRelMensalidadeMES: TWideStringField
      FieldName = 'MES'
      Size = 9
    end
    object qRelMensalidadeVALOR: TBCDField
      FieldName = 'VALOR'
      DisplayFormat = '#.00'
      Precision = 5
      Size = 2
    end
    object qRelMensalidadePAGO: TWideStringField
      FieldName = 'PAGO'
      Size = 3
    end
  end
  object QPrincipal: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Cad_Alunos_Principal')
    Left = 56
    Top = 61
  end
  object qAlunos: TADOQuery
    Connection = Conexao
    Parameters = <>
    Left = 152
    Top = 8
  end
  object qPesquisaAluno: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select cod, NOME, SITUACAO from CAD_ALUNOS_PRINCIPAL')
    Left = 328
    Top = 8
    object qPesquisaAlunocod: TAutoIncField
      DisplayLabel = 'COD'
      FieldName = 'cod'
      ReadOnly = True
    end
    object qPesquisaAlunoNOME: TWideStringField
      FieldName = 'NOME'
      Size = 35
    end
    object qPesquisaAlunoSITUACAO: TWideStringField
      FieldName = 'SITUACAO'
      Size = 7
    end
  end
  object qRelControleMensalidade: TADOQuery
    Active = True
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select  C.COD, C.CPF, C.NOME, F.CODALUNO,  F.MES, F.VALOR, F.PAG' +
        'O, F.VISUALIZAR, C.SITUACAO, F.ANO'
      'from  MENSALIDADE F, CAD_ALUNOS_PRINCIPAL C'
      'where C.COD = F.CODALUNO AND  C.SITUACAO = '#39'ATIVO'#39)
    Left = 400
    Top = 333
    object qRelControleMensalidadeCPF: TWideStringField
      FieldName = 'CPF'
      Size = 14
    end
    object qRelControleMensalidadeNOME: TWideStringField
      FieldName = 'NOME'
      Size = 35
    end
    object qRelControleMensalidadeSITUACAO: TWideStringField
      FieldName = 'SITUACAO'
      Size = 7
    end
    object qRelControleMensalidadeMES: TWideStringField
      FieldName = 'MES'
      Size = 9
    end
    object qRelControleMensalidadeANO: TWideStringField
      FieldName = 'ANO'
      Size = 4
    end
    object qRelControleMensalidadeVALOR: TBCDField
      FieldName = 'VALOR'
      DisplayFormat = '#.00'
      Precision = 5
      Size = 2
    end
    object qRelControleMensalidadePAGO: TWideStringField
      FieldName = 'PAGO'
      Size = 3
    end
    object qRelControleMensalidadeVISUALIZAR: TWideStringField
      FieldName = 'VISUALIZAR'
      Size = 3
    end
  end
  object qRelMensalidade_Coluna: TADOQuery
    Connection = Conexao
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM MES_COLUNA')
    Left = 400
    Top = 389
  end
  object dsQFotoExames: TDataSource
    DataSet = qFotoExames
    Left = 152
    Top = 344
  end
  object dsUltimasAulas: TDataSource
    DataSet = QUltimasAulas
    Left = 328
    Top = 229
  end
  object QUltimasAulas: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from aula')
    Left = 232
    Top = 229
    object QUltimasAulasCOD: TAutoIncField
      FieldName = 'COD'
      ReadOnly = True
    end
    object QUltimasAulasCODALUNO: TIntegerField
      FieldName = 'CODALUNO'
    end
    object QUltimasAulasDATA_AULA: TDateField
      FieldName = 'DATA_AULA'
    end
    object QUltimasAulasOBSERVACAO: TWideStringField
      FieldName = 'OBSERVACAO'
      Size = 17
    end
    object QUltimasAulasANOTACOES: TWideMemoField
      FieldName = 'ANOTACOES'
      BlobType = ftWideMemo
    end
  end
  object qExames: TADOQuery
    Connection = Conexao
    Parameters = <>
    Left = 56
    Top = 288
  end
  object dsQEXames: TDataSource
    DataSet = qExames
    Left = 152
    Top = 288
  end
  object qSomaMensalidade: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select  C.COD, C.CPF, C.NOME, F.CODALUNO,  F.MES, F.VALOR, F.PAG' +
        'O, F.VISUALIZAR, C.SITUACAO, F.ANO'
      'from  MENSALIDADE F, CAD_ALUNOS_PRINCIPAL C'
      'where C.COD = F.CODALUNO AND  C.SITUACAO = '#39'ATIVO'#39)
    Left = 456
    Top = 117
  end
  object dsRelAula: TDataSource
    DataSet = qRelAula
    Left = 496
    Top = 229
  end
  object qRelAula: TADOQuery
    Active = True
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select a.nome, b.data_aula, b.observacao, b.ANOTACOES '
      'from cad_alunos_principal a, aula b'
      'where a.cod = b.CODALUNO order by a.nome')
    Left = 416
    Top = 229
  end
  object qAvaliacao: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from avaliacao')
    Left = 56
    Top = 400
    object qAvaliacaoCOD: TAutoIncField
      FieldName = 'COD'
      ReadOnly = True
    end
    object qAvaliacaoCODALUNO: TIntegerField
      FieldName = 'CODALUNO'
    end
    object qAvaliacaoPROFISSAO: TWideStringField
      FieldName = 'PROFISSAO'
      Size = 30
    end
    object qAvaliacaoINDICACAO: TWideStringField
      FieldName = 'INDICACAO'
      Size = 30
    end
    object qAvaliacaoATIVIDADEFISICA: TWideStringField
      FieldName = 'ATIVIDADEFISICA'
      Size = 3
    end
    object qAvaliacaoQUALATIVIDADEFISICA: TWideStringField
      FieldName = 'QUALATIVIDADEFISICA'
      Size = 200
    end
    object qAvaliacaoMEDICACAO: TWideStringField
      FieldName = 'MEDICACAO'
      Size = 200
    end
    object qAvaliacaoTABAGISMO: TWideStringField
      FieldName = 'TABAGISMO'
      Size = 3
    end
    object qAvaliacaoETILISMO: TWideStringField
      FieldName = 'ETILISMO'
      Size = 3
    end
    object qAvaliacaoHIPERTENSAO: TWideStringField
      FieldName = 'HIPERTENSAO'
      Size = 3
    end
    object qAvaliacaoDOENCAS: TWideStringField
      FieldName = 'DOENCAS'
      Size = 200
    end
    object qAvaliacaoDORES: TWideStringField
      FieldName = 'DORES'
      Size = 200
    end
    object qAvaliacaoPOSICAODOR: TWideStringField
      FieldName = 'POSICAODOR'
      Size = 200
    end
    object qAvaliacaoOBJETIVOPRINCIPAL: TWideStringField
      FieldName = 'OBJETIVOPRINCIPAL'
      Size = 200
    end
    object qAvaliacaoQUEIXAPRINCIPAL: TWideStringField
      FieldName = 'QUEIXAPRINCIPAL'
      Size = 200
    end
    object qAvaliacaoHDA: TWideMemoField
      FieldName = 'HDA'
      BlobType = ftWideMemo
    end
    object qAvaliacaoHPP: TWideMemoField
      FieldName = 'HPP'
      BlobType = ftWideMemo
    end
    object qAvaliacaoPESO: TFloatField
      FieldName = 'PESO'
      DisplayFormat = '#.00'
    end
    object qAvaliacaoALTURA: TFloatField
      FieldName = 'ALTURA'
      DisplayFormat = '#.00'
    end
    object qAvaliacaoPA: TWideStringField
      FieldName = 'PA'
      Size = 8
    end
    object qAvaliacaoENCURTAMENTOS: TWideStringField
      FieldName = 'ENCURTAMENTOS'
      Size = 200
    end
    object qAvaliacaoFORCAMUSCULAR: TWideStringField
      FieldName = 'FORCAMUSCULAR'
      Size = 200
    end
    object qAvaliacaoPES: TWideStringField
      FieldName = 'PES'
      Size = 200
    end
    object qAvaliacaoJOELHOS: TWideStringField
      FieldName = 'JOELHOS'
      Size = 200
    end
    object qAvaliacaoPELVE: TWideStringField
      FieldName = 'PELVE'
      Size = 200
    end
    object qAvaliacaoCOLUNA: TWideStringField
      FieldName = 'COLUNA'
      Size = 200
    end
    object qAvaliacaoOMBROS: TWideStringField
      FieldName = 'OMBROS'
      Size = 200
    end
    object qAvaliacaoESCAPULAS: TWideStringField
      FieldName = 'ESCAPULAS'
      Size = 200
    end
    object qAvaliacaoCABECA: TWideStringField
      FieldName = 'CABECA'
      Size = 200
    end
  end
  object dsQAvaliacao: TDataSource
    DataSet = qAvaliacao
    Left = 152
    Top = 408
  end
end
