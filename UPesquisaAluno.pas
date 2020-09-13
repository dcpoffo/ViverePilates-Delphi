unit UPesquisaAluno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmPesquisarAluno = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btSair: TBitBtn;
    Label1: TLabel;
    edNome: TEdit;
    DBGrid1: TDBGrid;
    lbTotal: TLabel;
    procedure btSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edNomeChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure edNomeKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const [Ref] Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure LocalizarDados;
  end;

var
  frmPesquisarAluno: TfrmPesquisarAluno;
  ClicouNoTitulo: boolean;
  coluna: string;
implementation

{$R *.dfm}

uses UDM, UCadAlunos_Principal;



Procedure TfrmPesquisarAluno.LocalizarDados;
begin
  //busca o aluno do cadastro principal
  FrmCadAlunos.Atualizar_CadastroPrincipal;
  frmDM.QPrincipal.Locate('cod',frmDM.qPesquisaAluno.FieldByName('cod').AsInteger,[]);
  FrmCadAlunos.tabela_PrincipalEnter(self);

  case FrmCadAlunos.PageControl1.ActivePageIndex of
    0://cadastro principal
    begin
      exit;
    end;
    1://ficha de avaliacao
    begin
      FrmCadAlunos.Atualiza_Avaliacao;

      if frmDM.qAvaliacao.RecordCount > 0 then
        FrmCadAlunos.Preencher_Tabela_Avaliacao
      ELSE
        FrmCadAlunos.Limpa_Campos_Avaliacao;
    end;
    2://fotos de acompanhamento
    begin
      FrmCadAlunos.Atualiza_Foto;
      if frmDM.qFoto.RecordCount > 0 then
        FrmCadAlunos.TabelaFotosEnter(self)
      ELSE
      begin
        FrmCadAlunos.Limpa_Campos_Foto;
        FrmCadAlunos.lbFoto.Caption:= '<Nenhum imagem cadastrada>';
        FrmCadAlunos.Image1.Picture:= nil;
      end;
    end;
    3://mensalidade
    begin
      FrmCadAlunos.Atualiza_Mensalidade;
      if frmDM.QMensalidade.RecordCount > 0 then
        FrmCadAlunos.tabela_mensalidadeEnter(self)
      else
        FrmCadAlunos.Limpa_Campos_Mensalidade;
    end;
    4://exames complementares
    begin
      FrmCadAlunos.Atualiza_Exame;

      if frmDM.qExames.RecordCount > 0 then
      begin
        FrmCadAlunos.Preencher_Tabela_Exame;
        FrmCadAlunos.Atualiza_Foto_Exame;
        if frmDM.qFotoExames.RecordCount > 0 then
          FrmCadAlunos.Preencher_Tabela_FotoExame
        ELSE
        begin
          FrmCadAlunos.Limpa_campos_FotoExame;
          FrmCadAlunos.lbFotoExame.Caption:= '<Nenhum imagem cadastrada>';
        end;
      end
      else
      begin
        FrmCadAlunos.Limpa_Campos_Exame;
        FrmCadAlunos.Limpa_campos_FotoExame;
        FrmCadAlunos.lbFotoExame.Caption:= '<Nenhum imagem cadastrada>';
      end;
      FrmCadAlunos.Habilita_Desabilita_Botoes_Foto_Exame;
    end;
    5://aula
    begin
      FrmCadAlunos.Atualiza_aula;
      if frmDM.qAula.RecordCount > 0 then
        FrmCadAlunos.tabela_AulaEnter(self)
      else
        FrmCadAlunos.Limpa_Campos_Aula;

      FrmCadAlunos.Atualiza_UltimasAula;
    end;
  end;
end;

procedure TfrmPesquisarAluno.btSairClick(Sender: TObject);
begin
  frmPesquisarAluno.Close;
end;

procedure TfrmPesquisarAluno.DBGrid1DblClick(Sender: TObject);
begin
  LocalizarDados;
  if not FrmCadAlunos.Visible then
    FrmCadAlunos.ShowModal;
  close;
end;

procedure TfrmPesquisarAluno.DBGrid1DrawColumnCell(Sender: TObject;
  const [Ref] Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not odd(frmDM.qPesquisaAluno.RecNo) then
    if not (gdSelected in State) then
      begin
      DBGrid1.Canvas.Brush.Color := clGradientInactiveCaption;
      DBGrid1.Canvas.FillRect(Rect);
      DBGrid1.DefaultDrawDataCell(rect,Column.Field,state);
    end;
end;

procedure TfrmPesquisarAluno.DBGrid1TitleClick(Column: TColumn);
begin
  coluna:= '';
  ClicouNoTitulo:= true;
  coluna:= Column.FieldName;
  edNomeChange(self);
end;

procedure TfrmPesquisarAluno.edNomeChange(Sender: TObject);
begin
  frmDM.qPesquisaAluno.Close;
  frmDM.qPesquisaAluno.SQL.Clear;
  if ClicouNoTitulo then
    frmDM.qPesquisaAluno.SQL.Add('select COD, NOME, SITUACAO from CAD_ALUNOS_PRINCIPAL where nome like ''%'+edNome.Text+'%'' order by '+coluna+' asc')
  else
    frmDM.qPesquisaAluno.SQL.Add('select COD, NOME, SITUACAO from CAD_ALUNOS_PRINCIPAL where nome like ''%'+edNome.Text+'%'' order by nome asc');
  frmDM.qPesquisaAluno.Open;

  lbTotal.Caption:= 'Total de registros encontrados: '+IntToStr(frmDM.qPesquisaAluno.RecNo);
  ClicouNoTitulo:= false;
end;

procedure TfrmPesquisarAluno.edNomeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if edNome.Text = '' then
    begin
      MessageDlg('Nenhum aluno foi selecionado!',mtError,[mbOK],0);
      exit;
    end else
    begin
      LocalizarDados;
      {
      frmDM.QPrincipal.Locate('cod',frmDM.qPesquisaAluno.FieldByName('cod').AsInteger,[]);
      FrmCadAlunos.Preencher_Tabela;
      FrmCadAlunos.tabela_PrincipalEnter(self);

      //frmDM.QMensalidade.Locate('codAluno',frmDM.qPesquisaAluno.FieldByName('cod').AsInteger,[]);
      FrmCadAlunos.Preencher_Tabela_Mensalidade;
      FrmCadAlunos.tabela_mensalidadeEnter(self);

      //frmDM.qAula.Locate('codAluno',frmDM.qPesquisaAluno.FieldByName('cod').AsInteger,[]);
      FrmCadAlunos.Preencher_Tabela_Aula;
      FrmCadAlunos.tabela_AulaEnter(self); }

      FrmCadAlunos.Show;
      close;
    end;
  end;
end;

procedure TfrmPesquisarAluno.FormResize(Sender: TObject);
begin
  Top := ( Screen.Height div 2 ) - ( height div 2 );
  left := ( Screen.Width div 2 ) - ( Width div 2 );
end;

procedure TfrmPesquisarAluno.FormShow(Sender: TObject);
begin
  edNome.Clear;
  edNome.SetFocus;
  frmDM.qPesquisaAluno.Close;
  frmDM.qPesquisaAluno.SQL.Clear;
  frmDM.qPesquisaAluno.SQL.Add('select COD, NOME, SITUACAO from CAD_ALUNOS_PRINCIPAL where nome like ''%'+edNome.Text+'%'' order by nome asc');
  frmDM.qPesquisaAluno.Open;
  //frmDM.qPesquisaAluno.First;
end;

end.
