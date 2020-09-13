unit UDM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IBX.IBCustomDataSet,
  IBX.IBDatabase, IBX.IBTable, IBX.IBQuery, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls, DateUtils, frxClass, frxDBSet,
  Data.DBXMySQL, Data.SqlExpr, Data.Win.ADODB;

type
  TfrmDM = class(TForm)
    dsQAula: TDataSource;
    dsQPrincipal: TDataSource;
    dsPesquisaAlunos: TDataSource;
    dsQMensalidade: TDataSource;
    dsQFoto: TDataSource;
    dsQRelFoto: TDataSource;
    dsQAlunos: TDataSource;
    dsQRelMensalidade: TDataSource;
    dsRelMensalidade_Coluna: TDataSource;
    dsRelControleMensalidade: TDataSource;
    dsQDados: TDataSource;
    dsQaula1: TDataSource;
    Conexao: TADOConnection;
    qFoto: TADOQuery;
    qRelFoto: TADOQuery;
    qFotoExames: TADOQuery;
    qAula: TADOQuery;
    Qaula1: TADOQuery;
    qDados: TADOQuery;
    QMensalidade: TADOQuery;
    qRelMensalidade: TADOQuery;
    QPrincipal: TADOQuery;
    qAlunos: TADOQuery;
    qPesquisaAluno: TADOQuery;
    qRelControleMensalidade: TADOQuery;
    qRelMensalidade_Coluna: TADOQuery;
    qRelControleMensalidadeCPF: TWideStringField;
    qRelControleMensalidadeNOME: TWideStringField;
    qRelControleMensalidadeMES: TWideStringField;
    qRelControleMensalidadeSITUACAO: TWideStringField;
    qRelControleMensalidadeANO: TWideStringField;
    qPesquisaAlunocod: TAutoIncField;
    qPesquisaAlunoNOME: TWideStringField;
    qPesquisaAlunoSITUACAO: TWideStringField;
    dsQFotoExames: TDataSource;
    QMensalidadeANO: TWideStringField;
    QMensalidadeMES: TWideStringField;
    QMensalidadeDATA_MENSALIDADE: TDateField;
    QMensalidadeVALOR: TBCDField;
    QMensalidadePAGO: TWideStringField;
    QMensalidadeVISUALIZAR: TWideStringField;
    QMensalidadecodmensalidade: TAutoIncField;
    dsUltimasAulas: TDataSource;
    QUltimasAulas: TADOQuery;
    QUltimasAulasCOD: TAutoIncField;
    QUltimasAulasCODALUNO: TIntegerField;
    QUltimasAulasDATA_AULA: TDateField;
    QUltimasAulasOBSERVACAO: TWideStringField;
    QUltimasAulasANOTACOES: TWideMemoField;
    qExames: TADOQuery;
    dsQEXames: TDataSource;
    qSomaMensalidade: TADOQuery;
    qRelMensalidadeANO: TWideStringField;
    qRelMensalidadeCOD: TAutoIncField;
    qRelMensalidadeCPF: TWideStringField;
    qRelMensalidadeNOME: TWideStringField;
    qRelMensalidadeSITUACAO: TWideStringField;
    qRelMensalidadeCODALUNO: TIntegerField;
    qRelMensalidadeMES: TWideStringField;
    qRelMensalidadeVALOR: TBCDField;
    qRelMensalidadePAGO: TWideStringField;
    qRelControleMensalidadeVALOR: TBCDField;
    qRelControleMensalidadePAGO: TWideStringField;
    qRelControleMensalidadeVISUALIZAR: TWideStringField;
    dsRelAula: TDataSource;
    qRelAula: TADOQuery;
    qAvaliacao: TADOQuery;
    dsQAvaliacao: TDataSource;
    qAvaliacaoCOD: TAutoIncField;
    qAvaliacaoCODALUNO: TIntegerField;
    qAvaliacaoPROFISSAO: TWideStringField;
    qAvaliacaoINDICACAO: TWideStringField;
    qAvaliacaoATIVIDADEFISICA: TWideStringField;
    qAvaliacaoQUALATIVIDADEFISICA: TWideStringField;
    qAvaliacaoMEDICACAO: TWideStringField;
    qAvaliacaoTABAGISMO: TWideStringField;
    qAvaliacaoETILISMO: TWideStringField;
    qAvaliacaoHIPERTENSAO: TWideStringField;
    qAvaliacaoDOENCAS: TWideStringField;
    qAvaliacaoDORES: TWideStringField;
    qAvaliacaoPOSICAODOR: TWideStringField;
    qAvaliacaoOBJETIVOPRINCIPAL: TWideStringField;
    qAvaliacaoQUEIXAPRINCIPAL: TWideStringField;
    qAvaliacaoHDA: TWideMemoField;
    qAvaliacaoHPP: TWideMemoField;
    qAvaliacaoPESO: TFloatField;
    qAvaliacaoALTURA: TFloatField;
    qAvaliacaoPA: TWideStringField;
    qAvaliacaoENCURTAMENTOS: TWideStringField;
    qAvaliacaoFORCAMUSCULAR: TWideStringField;
    qAvaliacaoPES: TWideStringField;
    qAvaliacaoJOELHOS: TWideStringField;
    qAvaliacaoPELVE: TWideStringField;
    qAvaliacaoCOLUNA: TWideStringField;
    qAvaliacaoOMBROS: TWideStringField;
    qAvaliacaoESCAPULAS: TWideStringField;
    qAvaliacaoCABECA: TWideStringField;
    procedure _TbAulaAfterCancel(DataSet: TDataSet);
    procedure _TbAulaAfterDelete(DataSet: TDataSet);
    procedure _qRelFotoAfterScroll(DataSet: TDataSet);
    procedure qRelFotoAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDM: TfrmDM;
  codigonovo, codigoDeletado: integer;

implementation

{$R *.dfm}

uses UCadAlunos_Principal, UAjuda, URelFoto;

procedure TfrmDM.qRelFotoAfterScroll(DataSet: TDataSet);
begin
  // quando rolar o BDgrig, procura pela nova foto
  if FileExists(qRelFoto.FieldByName('caminho').AsString) then
  begin
    //mostra a fota caso tenha encotrado
    frmRelFoto.Image1.Picture.LoadFromFile(qRelFoto.FieldByName('caminho').AsString);
  end
  ELSE
  begin
    //caso nao encontre, deixa em branco
    FrmCadAlunos.Image1.Picture:= nil;
    frmRelFoto.lbFoto.Caption:= '<Imagem não encontrada>';
  end;
end;

procedure TfrmDM._qRelFotoAfterScroll(DataSet: TDataSet);
begin
  // quando rolar o BDgrig, procura pela nova foto
  if FileExists(qRelFoto.FieldByName('caminho').AsString) then
  begin
    //mostra a fota caso tenha encotrado
    frmRelFoto.Image1.Picture.LoadFromFile(qRelFoto.FieldByName('caminho').AsString);
  end
  ELSE
  begin
    //caso nao encontre, deixa em branco
    FrmCadAlunos.Image1.Picture:= nil;
    frmRelFoto.lbFoto.Caption:= '<Imagem não encontrada>';
  end;
end;

procedure TfrmDM._TbAulaAfterCancel(DataSet: TDataSet);
begin
  FrmCadAlunos.Atualiza_aula;
end;

procedure TfrmDM._TbAulaAfterDelete(DataSet: TDataSet);
begin
  FrmCadAlunos.Atualiza_aula;
end;

end.
