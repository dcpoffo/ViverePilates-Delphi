unit URelAulas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, Data.DB, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls,
  frxClass, frxDBSet;

type
  TfrmRelAulas = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    cbAluno: TComboBox;
    btFiltrar: TBitBtn;
    btVisualizar: TBitBtn;
    Panel2: TPanel;
    lbTotal: TLabel;
    btSair: TBitBtn;
    edDataInicial: TDateTimePicker;
    edDataFinal: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    cbData: TCheckBox;
    btLimparFiltro: TBitBtn;
    dsResultado: TDataSource;
    qResultado: TADOQuery;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Label4: TLabel;
    DBMemo1: TDBMemo;
    frxRelAula: TfrxReport;
    frxDBRelAula: TfrxDBDataset;
    procedure cbDataClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btLimparFiltroClick(Sender: TObject);
    procedure btFiltrarClick(Sender: TObject);
    procedure btVisualizarClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const [Ref] Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure procura_aluno;
  end;

var
  frmRelAulas: TfrmRelAulas;
  filtrou: boolean;

implementation

{$R *.dfm}

uses UDM, UAjuda;

procedure TfrmRelAulas.procura_aluno;
begin
  qResultado.Close;
  qResultado.SQL.Clear;
  qResultado.SQL.Add('select distinct nome from cad_alunos_Principal order by nome');
  qResultado.Open;
  qResultado.First;
  while not qResultado.Eof do
  begin
    cbaluno.Items.Add(qResultado.FieldByName('nome').AsString);
    qResultado.Next;
  end;
end;

procedure TfrmRelAulas.btFiltrarClick(Sender: TObject);
begin
  if cbAluno.Text = '' then
  begin
    MessageDlg('O nome do aluno não foi informado.',mtError,[mbok],0);
    cbAluno.SetFocus;
    filtrou:= false;
    exit
  end;
  if edDataInicial.DateTime > edDataFinal.DateTime then
  begin
    MessageDlg('A data inicial não deve ser maior que a data final.',mtError,[mbok],0);
    cbAluno.SetFocus;
    filtrou:= false;
    exit
  end;

  frmDM.qRelAula.Close;
  frmDM.qRelAula.SQL.Clear;
  frmdm.qRelAula.SQL.Add('select a.nome, b.data_aula, b.observacao, b.ANOTACOES ');
  frmdm.qRelAula.SQL.Add('from cad_alunos_principal a, aula b ');
  frmdm.qRelAula.SQL.Add('where (a.cod = b.CODALUNO) ');
  frmdm.qRelAula.SQL.Add('and (a.nome = '''+cbAluno.Text+''') ');

  if cbData.Checked then
  begin
    frmdm.qRelAula.SQL.Add('and b.data_aula between '''+FormatDateTime('yyyy-mm-dd',edDataInicial.Date)+''' and '''+FormatDateTime('yyyy-mm-dd',edDataFinal.Date)+'''');
  end;

  frmdm.qRelAula.SQL.Add('order by data_aula desc');

  frmDM.qRelAula.Open;

  lbTotal.Caption:= 'Total de registro encontrados: '+IntToStr(frmDM.qRelAula.RecordCount);

  if frmDM.qRelAula.RecordCount = 0 then
    filtrou:= false
  else
    filtrou:= true;
end;

procedure TfrmRelAulas.btLimparFiltroClick(Sender: TObject);
begin
  cbAluno.Clear;
  cbAluno.SetFocus;
  procura_aluno;
  cbData.Checked:= false;
  edDataInicial.Enabled:= false;
  edDataFinal.Enabled:= false;
  edDataInicial.Date:= Now;
  edDataFinal.Date:= Now;
  frmDM.qRelAula.Close;
  filtrou:= false;
  lbTotal.Caption:= 'Total de registro encontrados: 0';
end;

procedure TfrmRelAulas.btSairClick(Sender: TObject);
begin
  close;
end;

procedure TfrmRelAulas.btVisualizarClick(Sender: TObject);
begin
  if filtrou then
  begin
    Caminho:= ExtractFilePath(Application.ExeName);
    frxRelAula.LoadFromFile(caminho+'RelAulas.fr3');
    //frxRelAula.Variables['Nome']:= QuotedStr(cbAluno.Text);
    //frxRelFoto.Variables['Imagem']:= QuotedStr(frmDM.qRelFoto.FieldByName('caminho').AsString);
    frxRelAula.ShowReport();
  end
  else
  begin
    MessageDlg('Nenhuma informação para visualizar',mtError,[mbok],0);
    cbAluno.SetFocus;
    exit
  end;
end;

procedure TfrmRelAulas.cbDataClick(Sender: TObject);
begin
  if cbData.Checked then
  begin
    edDataInicial.Enabled:= true;
    edDataFinal.Enabled:= true;
  end
  else
  begin
    edDataInicial.Enabled:= false;
    edDataFinal.Enabled:= false;
    edDataInicial.Date:= now;
    edDataFinal.Date:= now;
  end;
end;

procedure TfrmRelAulas.DBGrid1DrawColumnCell(Sender: TObject;
  const [Ref] Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not odd(frmDM.qRelAula.RecNo) then
    if not (gdSelected in State) then
      begin
      DBGrid1.Canvas.Brush.Color := clGradientInactiveCaption;
      DBGrid1.Canvas.FillRect(Rect);
      DBGrid1.DefaultDrawDataCell(rect,Column.Field,state);
    end;
end;

procedure TfrmRelAulas.FormShow(Sender: TObject);
begin
  Top := ( Screen.Height div 2 ) - ( height div 2 );
  left := ( Screen.Width div 2 ) - ( Width div 2 );
  btLimparFiltroClick(self);
end;

end.
