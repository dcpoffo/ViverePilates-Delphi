unit UControleMensalidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IBX.IBCustomDataSet,
  IBX.IBQuery, frxClass, frxDBSet, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, System.UITypes, Data.Win.ADODB;

type
  TfrmControleMensalidade = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    btFiltrar: TBitBtn;
    btVisualizar: TBitBtn;
    cbaluno: TComboBox;
    cbAno: TComboBox;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    lbTotal: TLabel;
    btSair: TBitBtn;
    frxMensalidade: TfrxReport;
    frxBdMensalidade: TfrxDBDataset;
    dsResultado: TDataSource;
    btRecibo: TBitBtn;
    frxDBRecibo: TfrxDBDataset;
    frxRecibo: TfrxReport;
    frxDBDados: TfrxDBDataset;
    rgControle: TRadioGroup;
    Label1: TLabel;
    Label4: TLabel;
    edPago: TEdit;
    edNaoPago: TEdit;
    rgTipo: TRadioGroup;
    frxDBMensalidade: TfrxDBDataset;
    _frxMensalidade_Geral: TfrxReport;
    qResultado: TADOQuery;
    frxMensalidade_Geral: TfrxReport;
    procedure btFiltrarClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbalunoChange(Sender: TObject);
    procedure procura_ano;
    procedure procura_aluno;
    procedure cbalunoExit(Sender: TObject);
    procedure btReciboClick(Sender: TObject);
    procedure btVisualizarClick(Sender: TObject);
    procedure rgTipoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmControleMensalidade: TfrmControleMensalidade;

implementation

{$R *.dfm}

uses UDM;
procedure TfrmControleMensalidade.procura_aluno;
begin
  qResultado.Close;
  qResultado.SQL.Clear;
  qResultado.SQL.Add('select distinct C.NOME from MENSALIDADE F, CAD_ALUNOS_PRINCIPAL C where C.COD = F.CODALUNO');
  qResultado.Open;
  qResultado.First;
  while not qResultado.Eof do
  begin
    cbaluno.Items.Add(qResultado.FieldByName('nome').AsString);
    qResultado.Next;
  end;
end;

procedure TfrmControleMensalidade.procura_ano;
begin
  cbAno.Items.Clear;
  cbAno.ItemIndex:= 1;
  qResultado.Close;
  qResultado.SQL.Clear;
  qResultado.SQL.Add('select distinct F.ANO From MENSALIDADE F, CAD_ALUNOS_PRINCIPAL C where C.COD = F.CODALUNO and C.NOME = '''+cbaluno.Text+'''');
  qResultado.Open;
  qResultado.First;
  while not qResultado.Eof do
  begin
    cbAno.Items.Add(qResultado.FieldByName('ano').AsString);
    qResultado.Next;
  end;
end;

procedure TfrmControleMensalidade.rgTipoClick(Sender: TObject);
begin
  frmDM.qRelControleMensalidade.Close;
  rgControle.ItemIndex:= 0;
  case rgTipo.ItemIndex of
  0: //por aluno
  begin
    cbaluno.Clear;
    cbAno.Clear;
    cbaluno.Enabled:= true;
    btRecibo.Enabled:= true;
    qResultado.Close;
    procura_aluno
  end;
  1: //geral
  begin
    cbaluno.Clear;
    cbaluno.Enabled:= false;
    btRecibo.Enabled:= false;
    cbAno.Items.Clear;
    cbAno.ItemIndex:= 1;
    qResultado.Close;
    qResultado.SQL.Clear;
    qResultado.SQL.Add('select distinct ANO From MENSALIDADE order by ano desc');
    qResultado.Open;
    qResultado.First;
    while not qResultado.Eof do
    begin
      cbAno.Items.Add(qResultado.FieldByName('ano').AsString);
      qResultado.Next;
    end;
  end;
  end; //case
end;

procedure TfrmControleMensalidade.btFiltrarClick(Sender: TObject);
var
  sql: string;
  ValorPago, ValorNaoPago: Real;
begin
  sql:= '';
  ValorPago:= 0;
  ValorNaoPago:= 0;
  frmDM.qRelControleMensalidade.Close;
  frmDM.qRelControleMensalidade.SQL.Clear;
  sql:= 'select F.ANO, C.COD, C.CPF, C.NOME, C.SITUACAO, F.CODALUNO, F.CODMENSALIDADE, F.MES, F.VALOR, F.PAGO, F.VISUALIZAR from MENSALIDADE F, CAD_ALUNOS_PRINCIPAL C where C.COD = F.CODALUNO ';

  //consulta por alno
  if rgTipo.ItemIndex = 0 then
  begin
    iF (cbaluno.Text = '') or (cbAno.Text = '') then
    begin
      MessageDlg('Faltou infomar o nome e/ou o ano.',mtError,[mbok],0);
      exit
    end
    else
    begin
      sql:= sql + 'and C.NOME = '''+cbaluno.Text+''' and F.ANO = '''+cbAno.Text+'''';
    end;
  end
  else
  //consulta geral
  if rgTipo.ItemIndex = 1 then
  begin
    iF (cbAno.Text = '') then
    begin
      MessageDlg('Faltou infomar o ano.',mtError,[mbok],0);
      exit
    end
    else
    begin
      sql:= sql + ' and F.ANO = '''+cbAno.Text+'''';
    end;
  end;

  case rgControle.ItemIndex of
    0:
    begin
      sql:= sql + ' and VISUALIZAR is not null';
    end;
    1:
    begin
      sql:= sql + ' and VISUALIZAR = ''sim''';
    end;
  end;

  sql:= sql + ' order by C.NOME, F.CODMENSALIDADE';

  frmDM.qRelControleMensalidade.SQL.Text:= sql;

  frmDM.qRelControleMensalidade.Open;
  /////////
  frmDM.qRelControleMensalidade.First;
  while not frmDM.qRelControleMensalidade.Eof do
  begin
    if frmDM.qRelControleMensalidade.FieldByName('pago').AsBoolean = true then
      ValorPago:= ValorPago + frmDM.qRelControleMensalidade.FieldByName('valor').AsCurrency
    else
      ValorNaoPago:= ValorNaoPago + frmDM.qRelControleMensalidade.FieldByName('valor').AsCurrency;
    frmDM.qRelControleMensalidade.Next;
  end;
  edPago.Text:= FloatToStrf(ValorPago,ffFixed,5,2);
  edNaoPago.Text:= FloatToStrf(ValorNaoPago,ffFixed,5,2);
  frmDM.qRelControleMensalidade.Last;
  frmDM.qRelControleMensalidade.First;
  lbTotal.Caption:= 'Total de registros encontrados: '+IntToStr(frmDM.qRelControleMensalidade.RecordCount);
end;

procedure TfrmControleMensalidade.btReciboClick(Sender: TObject);
var
  caminho: string;
begin
  if (cbaluno.Text <> '') and (cbAno.Text <> '') then
  begin
    Caminho:= ExtractFilePath(Application.ExeName);
    frxRecibo.LoadFromFile(caminho+'recibo.fr3');
    frxRecibo.ShowReport();
  end
  else
    MessageDlg('Recibo não pôde ser gerado, pois falta informar algum filtro.',mtError,[mbOK],0)
end;

procedure TfrmControleMensalidade.btSairClick(Sender: TObject);
begin
  close;
end;

procedure TfrmControleMensalidade.btVisualizarClick(Sender: TObject);
var
  caminho: string;
begin
  if (rgTipo.ItemIndex = 0) and ((cbaluno.Text = '') OR (cbAno.Text = '')) then
  begin
      MessageDlg('Relatório não pôde ser gerado, pois falta informar o nome e/ou o ano.',mtError,[mbOK],0);
      exit
  end
  else
  if (rgTipo.ItemIndex = 1) and (cbAno.Text = '') then
  begin
      MessageDlg('Relatório não pôde ser gerado, pois falta informar o ano.',mtError,[mbOK],0);
      exit
  end;

  Caminho:= ExtractFilePath(Application.ExeName);

  if (rgTipo.ItemIndex = 0) then
  begin
    frxMensalidade.LoadFromFile(caminho+'relmensalidade.fr3');
    frxMensalidade.Variables['Pago']:= QuotedStr(edPago.Text);
    frxMensalidade.Variables['NaoPago']:= QuotedStr(edNaoPago.Text);
    frxMensalidade.ShowReport();
  end
  else
  if (rgTipo.ItemIndex = 1) then
  begin
        frxMensalidade_Geral.LoadFromFile(caminho+'RelGeralContabilidade_teste.fr3');
        frxMensalidade_Geral.Variables['Pago']:= QuotedStr(edPago.Text);
        frxMensalidade_Geral.Variables['NaoPago']:= QuotedStr(edNaoPago.Text);
        frxMensalidade_Geral.ShowReport();
  end;

  end;

procedure TfrmControleMensalidade.cbalunoChange(Sender: TObject);
begin
  procura_ano;
end;

procedure TfrmControleMensalidade.cbalunoExit(Sender: TObject);
begin
  if cbaluno.Text <> '' then
    procura_ano;
end;

procedure TfrmControleMensalidade.FormShow(Sender: TObject);
begin
  rgTipo.ItemIndex:=1;
  rgTipo.ItemIndex:=0;
  Top := ( Screen.Height div 2 ) - ( height div 2 );
  left := ( Screen.Width div 2 ) - ( Width div 2 );
  edPago.Text:= '';
  edNaoPago.Text:= '';
  cbaluno.Items.Clear;
  cbaluno.ItemIndex:= 0;
  procura_aluno;
  cbaluno.SetFocus;
  frmDM.qDados.Active:= true;
  cbAno.Clear;
  frmDM.qRelControleMensalidade.Close;
end;

end.
