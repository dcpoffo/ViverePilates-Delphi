unit URelMensalidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, frxClass, frxDBSet, Vcl.Mask, Vcl.DBCtrls,
  Vcl.DBCGrids, IBX.IBCustomDataSet, IBX.IBQuery;

type
  TfrmRelMensalidade = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btSair: TBitBtn;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    edSitucao: TComboBox;
    btFiltrar: TBitBtn;
    btVisualizar: TBitBtn;
    frxMensalidade: TfrxReport;
    frxBdMensalidade: TfrxDBDataset;
    lbTotal: TLabel;
    Label2: TLabel;
    edPago: TEdit;
    Label4: TLabel;
    edNaoPago: TEdit;
    procedure btSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btFiltrarClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const [Ref] Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btVisualizarClick(Sender: TObject);
    //procedure Atualiza_tabela;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelMensalidade: TfrmRelMensalidade;

implementation

{$R *.dfm}

uses UDM, UAjuda;

procedure TfrmRelMensalidade.btFiltrarClick(Sender: TObject);
var
  ValorPago, ValorNaoPago: Real;
begin
  ValorPago:= 0;
  ValorNaoPago:= 0;
  //atualiza_tabela;
  frmDM.qRelMensalidade.Close;
  frmDM.qRelMensalidade.SQL.Clear;

  case edSitucao.ItemIndex of
    0:
    begin
      frmDM.qRelMensalidade.SQL.Add('select F.ANO, C.COD, C.CPF, C.NOME, C.SITUACAO, F.CODALUNO, '+
                             'F.MES, F.VALOR, F.PAGO '+
                             'from  MENSALIDADE F, CAD_ALUNOS_PRINCIPAL C '+
                             'where C.COD = F.CODALUNO');

      frmDM.qSomaMensalidade.Close;
      frmDM.qSomaMensalidade.SQL.Clear;
      frmDM.qSomaMensalidade.SQL.Add('select SUM(F.VALOR) as valor From  MENSALIDADE F, CAD_ALUNOS_PRINCIPAL C '+
                                     'where C.COD = F.CODALUNO and F.PAGO = ''sim''');
      frmDM.qSomaMensalidade.Open;
      ValorPago:= frmDM.qSomaMensalidade.FieldByName('valor').AsCurrency;

      frmDM.qSomaMensalidade.Close;
      frmDM.qSomaMensalidade.SQL.Clear;
      frmDM.qSomaMensalidade.SQL.Add('select SUM(F.VALOR) as valor From  MENSALIDADE F, CAD_ALUNOS_PRINCIPAL C '+
                                     'where C.COD = F.CODALUNO and F.PAGO <> ''sim''');
      frmDM.qSomaMensalidade.Open;
      ValorNaoPago:= frmDM.qSomaMensalidade.FieldByName('valor').AsCurrency;

    end;
    1:
    begin
      frmDM.qRelMensalidade.SQL.Add('select F.ANO, C.COD, C.CPF, C.NOME, C.SITUACAO, F.CODALUNO, '+
                             'F.MES, F.VALOR, F.PAGO '+
                             'from  MENSALIDADE F, CAD_ALUNOS_PRINCIPAL C '+
                             'where C.COD = F.CODALUNO AND C.SITUACAO = ''ATIVO''');

      frmDM.qSomaMensalidade.Close;
      frmDM.qSomaMensalidade.SQL.Clear;
      frmDM.qSomaMensalidade.SQL.Add('select SUM(F.VALOR) as valor From  MENSALIDADE F, CAD_ALUNOS_PRINCIPAL C '+
                                     'where C.COD = F.CODALUNO AND C.SITUACAO = ''ATIVO'' and F.PAGO = ''sim''');
      frmDM.qSomaMensalidade.Open;
      ValorPago:= frmDM.qSomaMensalidade.FieldByName('valor').AsCurrency;

      frmDM.qSomaMensalidade.Close;
      frmDM.qSomaMensalidade.SQL.Clear;
      frmDM.qSomaMensalidade.SQL.Add('select SUM(F.VALOR) AS VALOR From  MENSALIDADE F, CAD_ALUNOS_PRINCIPAL C '+
                                     'where C.COD = F.CODALUNO AND C.SITUACAO = ''ATIVO'' and F.PAGO <> ''sim''');
      frmDM.qSomaMensalidade.Open;
      ValorNaoPago:= frmDM.qSomaMensalidade.FieldByName('valor').AsCurrency;
    end;
    2:
    begin
      frmDM.qRelMensalidade.SQL.Add('select F.ANO, C.COD, C.CPF, C.NOME, C.SITUACAO, F.CODALUNO, '+
                             'F.MES, F.VALOR, F.PAGO '+
                             'from  MENSALIDADE F, CAD_ALUNOS_PRINCIPAL C '+
                             'where C.COD = F.CODALUNO AND C.SITUACAO = ''INATIVO''');

      frmDM.qSomaMensalidade.Close;
      frmDM.qSomaMensalidade.SQL.Clear;
      frmDM.qSomaMensalidade.SQL.Add('select SUM(F.VALOR) AS VALOR From  MENSALIDADE F, CAD_ALUNOS_PRINCIPAL C '+
                                     'where C.COD = F.CODALUNO AND C.SITUACAO = ''INATIVO'' and F.PAGO = ''sim''');
      frmDM.qSomaMensalidade.Open;
      ValorPago:= frmDM.qSomaMensalidade.FieldByName('valor').AsCurrency;

      frmDM.qSomaMensalidade.Close;
      frmDM.qSomaMensalidade.SQL.Clear;
      frmDM.qSomaMensalidade.SQL.Add('select SUM(F.VALOR) AS VALOR From  MENSALIDADE F, CAD_ALUNOS_PRINCIPAL C '+
                                     'where C.COD = F.CODALUNO AND C.SITUACAO = ''INATIVO'' and F.PAGO <> ''sim''');
      frmDM.qSomaMensalidade.Open;
      ValorNaoPago:= frmDM.qSomaMensalidade.FieldByName('valor').AsCurrency;
    end;
  end;
  frmDM.qRelMensalidade.Open;

  edPago.Text:= FloatToStrf(ValorPago,ffFixed,5,2);
  edNaoPago.Text:= FloatToStrf(ValorNaoPago,ffFixed,5,2);

  lbTotal.Caption:= 'Total de registros encontrados: '+IntToStr(frmDM.qRelMensalidade.RecordCount);
end;

procedure TfrmRelMensalidade.btSairClick(Sender: TObject);
begin
  close;
end;

procedure TfrmRelMensalidade.btVisualizarClick(Sender: TObject);
begin
    Caminho:= ExtractFilePath(Application.ExeName);
    frxMensalidade.LoadFromFile(caminho+'RelMensalidade.fr3');
    frxMensalidade.Variables['Pago']:= QuotedStr(edPago.Text);
    frxMensalidade.Variables['NaoPago']:= QuotedStr(edNaoPago.Text);
    frxMensalidade.ShowReport();
end;

procedure TfrmRelMensalidade.DBGrid1DrawColumnCell(Sender: TObject;
  const [Ref] Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not odd(frmDM.qRelMensalidade.RecNo) then
    if not (gdSelected in State) then
      begin
      DBGrid1.Canvas.Brush.Color := clGradientInactiveCaption;
      DBGrid1.Canvas.FillRect(Rect);
      DBGrid1.DefaultDrawDataCell(rect,Column.Field,state);
    end;
end;

procedure TfrmRelMensalidade.FormShow(Sender: TObject);
begin
  edPago.Text:= '';
  edNaoPago.Text:= '';
  edSitucao.ItemIndex:= 0;
  btFiltrar.Click;
  Top := ( Screen.Height div 2 ) - ( height div 2 );
  left := ( Screen.Width div 2 ) - ( Width div 2 );
end;

end.
