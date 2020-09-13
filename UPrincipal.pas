unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Buttons, Vcl.StdCtrls, frxClass, frxDBSet, Vcl.DBCGrids, Vcl.Mask,
  Vcl.DBCtrls, frxExportPDF, system.zip, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, Vcl.Imaging.pngimage;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Sair1: TMenuItem;
    Cadastro1: TMenuItem;
    Cadastro2: TMenuItem;
    Relatrios1: TMenuItem;
    barra: TStatusBar;
    PopupMenu1: TPopupMenu;
    Panel2: TPanel;
    btSair: TSpeedButton;
    btCadastro: TSpeedButton;
    AlunosAtivosxInativos1: TMenuItem;
    AlunosxMensalidades1: TMenuItem;
    btRelAtivosInativos: TSpeedButton;
    btPesquisar: TSpeedButton;
    btRelMensalidade: TSpeedButton;
    btRelFoto: TSpeedButton;
    frxRelTotasFotos: TfrxReport;
    frxDBTodasFotos: TfrxDBDataset;
    Normal1: TMenuItem;
    ColunaPorAluno1: TMenuItem;
    frxPDFExport1: TfrxPDFExport;
    UltimafotodeacompanhamentoPoraluno1: TMenuItem;
    ControlePessoal1: TMenuItem;
    dADOS1: TMenuItem;
    Dados2: TMenuItem;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    Image1: TImage;
    AulasporAluno1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Cadastro2Click(Sender: TObject);
    procedure AlunosAtivosxInativos1Click(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure btRelMensalidadeClick(Sender: TObject);
    procedure btRelFotoClick(Sender: TObject);
    procedure Ultimafotodeacompanhamento2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Normal1Click(Sender: TObject);
    procedure ColunaPorAluno1Click(Sender: TObject);
    procedure UltimafotodeacompanhamentoPoraluno1Click(Sender: TObject);
    procedure ControlePessoal1Click(Sender: TObject);
    procedure Dados2Click(Sender: TObject);
    procedure AulasporAluno1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UCadAlunos_Principal, UDM, URelAtivosInativos, UPesquisaAluno,
  UValorMensalidade, URelMensalidade, URelFoto, UAjuda, Uteste,
  URelMensalidade_Coluna, UControleMensalidade, UDados, UBackup, URelAulas;


procedure TfrmPrincipal.AlunosAtivosxInativos1Click(Sender: TObject);
begin
  frmRelAtivosInativos.ShowModal;
end;

procedure TfrmPrincipal.AulasporAluno1Click(Sender: TObject);
begin
  frmRelAulas.ShowModal;
end;

procedure TfrmPrincipal.btPesquisarClick(Sender: TObject);
begin
  VemdoPrincipal:= true;
  //FrmCadAlunos.Show;
  frmPesquisarAluno.ShowModal;
  VemdoPrincipal:= false;
end;

procedure TfrmPrincipal.Cadastro2Click(Sender: TObject);
begin
  FrmCadAlunos.ShowModal;
end;

procedure TfrmPrincipal.ColunaPorAluno1Click(Sender: TObject);
begin
  frmRelMensalidade_Coluna.ShowModal;
end;

procedure TfrmPrincipal.ControlePessoal1Click(Sender: TObject);
begin
  frmControleMensalidade.ShowModal;
end;

procedure TfrmPrincipal.Dados2Click(Sender: TObject);
begin
  frmDados.ShowModal;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  frmDM.qDados.Close;
  frmDM.qDados.SQL.Clear;
  frmDM.qDados.SQL.Add('select * from dados');
  frmDM.qDados.Open;
  barra.Panels[0].Width:= Screen.Width div 2;
  barra.Panels[0].Text:= frmDM.qDados.FieldByName('nome').AsString + ' - Crefito: ' + frmDM.qDados.FieldByName('crefito').AsString;
  barra.Panels[1].Text:= 'Vivere Pilates';
end;

procedure TfrmPrincipal.Normal1Click(Sender: TObject);
begin

  frmRelMensalidade.ShowModal;
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
  Application.MessageBox('Não se esqueça de fazer Backup regularmente!', '<< ** LEMBRETE ** >>', MB_OK);
  Application.Terminate;
end;

procedure TfrmPrincipal.Ultimafotodeacompanhamento2Click(Sender: TObject);
begin
  frmRelFoto.ShowModal;
end;

procedure TfrmPrincipal.UltimafotodeacompanhamentoPoraluno1Click(
  Sender: TObject);
begin
  frmRelFoto.ShowModal;
end;

procedure TfrmPrincipal.btRelMensalidadeClick(Sender: TObject);
begin
  frmRelMensalidade.ShowModal
end;

procedure TfrmPrincipal.btRelFotoClick(Sender: TObject);
begin
  frmRelFoto.ShowModal;
end;

end.


