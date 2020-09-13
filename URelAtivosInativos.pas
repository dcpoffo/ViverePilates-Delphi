unit URelAtivosInativos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, frxClass, frxDBSet;

type
  TfrmRelAtivosInativos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btSair: TBitBtn;
    edSitucao: TComboBox;
    Label1: TLabel;
    btFiltrar: TBitBtn;
    btVisualizar: TBitBtn;
    frxSitucao: TfrxReport;
    bdSitucao: TfrxDBDataset;
    lbTotal: TLabel;
    DBGrid1: TDBGrid;
    procedure btFiltrarClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const [Ref] Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btVisualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelAtivosInativos: TfrmRelAtivosInativos;

implementation

{$R *.dfm}

uses UDM;

procedure TfrmRelAtivosInativos.btFiltrarClick(Sender: TObject);
begin
  frmDM.QPrincipal.Close;
  frmDM.QPrincipal.SQL.Clear;
  case edSitucao.ItemIndex of
    0:
    begin
      frmDM.QPrincipal.SQL.Add('select NOME, DATA_NASCIMENTO, SITUACAO, TELEFONE, TELEFONE2 from CAD_ALUNOS_PRINCIPAL where nome is not null order by nome');
    end;
    1:
    begin
      frmDM.QPrincipal.SQL.Add('select NOME, DATA_NASCIMENTO, SITUACAO, TELEFONE, TELEFONE2 from CAD_ALUNOS_PRINCIPAL where situacao = ''ATIVO'' and nome is not null order by nome');
    end;
    2:
    begin
      frmDM.QPrincipal.SQL.Add('select NOME, DATA_NASCIMENTO, SITUACAO, TELEFONE, TELEFONE2 from CAD_ALUNOS_PRINCIPAL where situacao = ''INATIVO'' and nome is not null order by nome');
    end;
  end;
  frmDM.QPrincipal.Open;

  lbTotal.Caption:= 'Total de registros encontrados: '+IntToStr(frmDM.QPrincipal.RecordCount);

end;

procedure TfrmRelAtivosInativos.btSairClick(Sender: TObject);
begin
  frmRelAtivosInativos.Close;
end;

procedure TfrmRelAtivosInativos.btVisualizarClick(Sender: TObject);
var
  caminho: string;
begin
  Caminho:= ExtractFilePath(Application.ExeName);
  frxSitucao.LoadFromFile(caminho+'RelAtivosInativos.fr3');
  frxSitucao.ShowReport();
end;

procedure TfrmRelAtivosInativos.DBGrid1DrawColumnCell(Sender: TObject;
  const [Ref] Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not odd(frmDM.qPrincipal.RecNo) then
  if not (gdSelected in State) then
    begin
    DBGrid1.Canvas.Brush.Color := clGradientInactiveCaption;
    DBGrid1.Canvas.FillRect(Rect);
    DBGrid1.DefaultDrawDataCell(rect,Column.Field,state);
  end;
end;

procedure TfrmRelAtivosInativos.FormShow(Sender: TObject);
begin
  edSitucao.ItemIndex:= 0;
  btFiltrar.Click;

  Top := ( Screen.Height div 2 ) - ( height div 2 );
  left := ( Screen.Width div 2 ) - ( Width div 2 );
end;

end.
