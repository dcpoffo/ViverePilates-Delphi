unit URelFoto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, frxClass, frxDBSet,
  IBX.IBCustomDataSet, IBX.IBQuery, System.UITypes, Data.Win.ADODB;

type
  TfrmRelFoto = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btSair: TBitBtn;
    DBGrid1: TDBGrid;
    btVisualizar: TBitBtn;
    lbTotal: TLabel;
    Label1: TLabel;
    btApagar: TSpeedButton;
    Panel3: TPanel;
    DBText1: TDBText;
    Panel4: TPanel;
    Image1: TImage;
    cbAluno: TComboBox;
    btFiltrar: TBitBtn;
    dsResultado: TDataSource;
    frxRelFoto: TfrxReport;
    frxDBRelFoto: TfrxDBDataset;
    lbFoto: TLabel;
    qResultado: TADOQuery;
    procedure btSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btVisualizarClick(Sender: TObject);
    procedure btApagarClick(Sender: TObject);
    Procedure procura_aluno;
    procedure btFiltrarClick(Sender: TObject);
    procedure frxRelFotoBeforePrint(Sender: TfrxReportComponent);
    procedure cbAlunoKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const [Ref] Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelFoto: TfrmRelFoto;

implementation

{$R *.dfm}

uses UDM, UAjuda;

procedure TfrmRelFoto.procura_aluno;
begin
  qResultado.Close;
  qResultado.SQL.Clear;
  //qResultado.SQL.Add('select distinct aluno from foto');
  qResultado.SQL.Add('select distinct c.nome as aluno from cad_alunos_principal as C');
  qResultado.SQL.Add('inner join foto as F on c.COD = f.CODALUNO order by aluno ');
  qResultado.Open;
  qResultado.First;
  while not qResultado.Eof do
  begin
    cbaluno.Items.Add(qResultado.FieldByName('aluno').AsString);
    qResultado.Next;
  end;
  //showmessage(intToStr(cbAluno.Items.Count));
  lbTotal.Caption:= 'Total de registros encontrados: 0';
end;

procedure TfrmRelFoto.btSairClick(Sender: TObject);
begin
  close;
end;

procedure TfrmRelFoto.btVisualizarClick(Sender: TObject);
begin
  if cbAluno.Text <> '' then
  begin
    Caminho:= ExtractFilePath(Application.ExeName);
    frxRelFoto.LoadFromFile(caminho+'RelFoto.fr3');
    frxRelFoto.Variables['Nome']:= QuotedStr(cbAluno.Text);
    //frxRelFoto.Variables['Imagem']:= QuotedStr(frmDM.qRelFoto.FieldByName('caminho').AsString);
    frxRelFoto.ShowReport();
  end
  else
  begin
    MessageDlg('O nome do aluno não foi informado.',mtError,[mbok],0);
  end;
end;

procedure TfrmRelFoto.cbAlunoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    btFiltrarClick(self);
end;

procedure TfrmRelFoto.DBGrid1DrawColumnCell(Sender: TObject;
  const [Ref] Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not odd(frmDM.qRelFoto.RecNo) then
    if not (gdSelected in State) then
      begin
      DBGrid1.Canvas.Brush.Color := clGradientInactiveCaption;
      DBGrid1.Canvas.FillRect(Rect);
      DBGrid1.DefaultDrawDataCell(rect,Column.Field,state);
    end;
end;

procedure TfrmRelFoto.btFiltrarClick(Sender: TObject);
begin
  if cbAluno.Text = '' then
  begin
    MessageDlg('O nome do aluno não foi informado.',mtError,[mbok],0);
    cbAluno.SetFocus;
    exit
  end else
  begin
    with frmDM.qRelFoto do
      begin
        close;
        sql.Clear;
        //SQL.Add('SELECT DATA_foto, CAMINHO FROM FOTO where aluno like ''%'+cbAluno.Text+'%'' order by data_foto desc');
        SQL.Add('select F.Data_Foto, c.nome, f.caminho from cad_alunos_principal as C');
        SQL.Add('inner join foto as F on f.CODALUNO = c.COD');
        SQL.Add('where c.nome like ''%'+cbAluno.Text+'%'' order by data_foto desc');
        Open;
      end;
    lbTotal.Caption:= 'Total de registros encontrados: '+inttostr(frmDM.qRelFoto.RecordCount);
  end;
end;

procedure TfrmRelFoto.FormShow(Sender: TObject);
begin
  Top := ( Screen.Height div 2 ) - ( height div 2 );
  left := ( Screen.Width div 2 ) - ( Width div 2 );
  btApagar.Click;
end;

procedure TfrmRelFoto.frxRelFotoBeforePrint(Sender: TfrxReportComponent);
begin
  if FileExists(frmDM.qRelFoto.FieldByName('caminho').AsString) then
      TfrxPictureView(frxRelFoto.FindObject('picture1')).Picture.LoadFromFile(frmDM.qRelFoto.FieldByName('caminho').AsString);
end;

procedure TfrmRelFoto.btApagarClick(Sender: TObject);
begin
  cbAluno.Clear;
  cbAluno.SetFocus;
  procura_aluno;
  frmDM.qRelFoto.Close;
  Image1.Picture:= nil;
  lbFoto.Caption:= '';
end;

end.
