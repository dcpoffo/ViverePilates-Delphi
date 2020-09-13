unit UCadAlunos_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ComCtrls, Data.DB, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  IBX.IBCustomDataSet, IBX.IBQuery, Vcl.ExtDlgs, JPEG, Clipbrd, Vcl.Menus,
  Data.Win.ADODB;

type
 NewTypeNav = class( TDbNavigator );

type
  TFrmCadAlunos = class(TForm)
    Cabecalho: TPanel;
    Label1: TLabel;
    Label8: TLabel;
    Label2: TLabel;
    PageControl1: TPageControl;
    tsPrincipal: TTabSheet;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    tsFichaAvaliacao: TTabSheet;
    tsMensalidade: TTabSheet;
    tabela_mensalidade: TDBGrid;
    Aula: TTabSheet;
    tsFotos: TTabSheet;
    tsExames: TTabSheet;
    Label14: TLabel;
    Label15: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    gbUltimasAulas: TGroupBox;
    DBGrid2: TDBGrid;
    GroupBox5: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    btPesquisar: TSpeedButton;
    PopupMenu1: TPopupMenu;
    GerarMensalidade: TMenuItem;
    Panel3: TPanel;
    Label34: TLabel;
    TabelaFotoExames: TDBGrid;
    btCarregaFoto: TBitBtn;
    Abre2: TOpenPictureDialog;
    Image1: TImage;
    Abre: TOpenDialog;
    Image2: TImage;
    lbFotoExame: TLabel;
    lbFoto: TLabel;
    DBMemo21: TDBMemo;
    cbSituacao: TComboBox;
    edNome: TEdit;
    edCPF: TMaskEdit;
    edCelular: TMaskEdit;
    edTelefone: TMaskEdit;
    edEmail: TEdit;
    edEndereco: TMemo;
    Barra: TPanel;
    btPrimeiro: TSpeedButton;
    btAnterior: TSpeedButton;
    btProximo: TSpeedButton;
    btUltimo: TSpeedButton;
    btNovo: TSpeedButton;
    btApagar: TSpeedButton;
    btEditar: TSpeedButton;
    btGravar: TSpeedButton;
    btCancelar: TSpeedButton;
    btFechar: TSpeedButton;
    EdCodigo: TEdit;
    Panel1: TPanel;
    tabela_Principal: TDBGrid;
    Label49: TLabel;
    Label50: TLabel;
    btCancelarMens: TSpeedButton;
    btGravarMens: TSpeedButton;
    btEditarMens: TSpeedButton;
    btApagarMens: TSpeedButton;
    btNovoMens: TSpeedButton;
    btUltimoMens: TSpeedButton;
    btProximoMens: TSpeedButton;
    btAnteriorMens: TSpeedButton;
    btPrimeiroMens: TSpeedButton;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    edAno: TEdit;
    cbMes: TComboBox;
    edValor: TEdit;
    cbPago: TComboBox;
    cbVisualizar: TComboBox;
    edCodMensalidade: TEdit;
    edDataMensalidade: TDateTimePicker;
    edData_nascimento: TDateTimePicker;
    BtCancelarAula: TSpeedButton;
    btGravarAula: TSpeedButton;
    btEditarAula: TSpeedButton;
    btApagarAula: TSpeedButton;
    btNovoAula: TSpeedButton;
    btUltimoAula: TSpeedButton;
    btProximoAula: TSpeedButton;
    btAnteriorAula: TSpeedButton;
    btPrimeiroAula: TSpeedButton;
    edCodigoAula: TEdit;
    cbObservacao: TComboBox;
    EdDataAula: TDateTimePicker;
    edAnotacoes: TMemo;
    tabela_Aula: TDBGrid;
    Label12: TLabel;
    btCancelarExame: TSpeedButton;
    btGravarExame: TSpeedButton;
    btEditarExame: TSpeedButton;
    btApagarExame: TSpeedButton;
    btNovoExame: TSpeedButton;
    btUltimoExame: TSpeedButton;
    btProximoExame: TSpeedButton;
    btAnteriorExame: TSpeedButton;
    btPrimeiroExame: TSpeedButton;
    edExame: TMemo;
    edObservacao: TMemo;
    edCodigoExame: TEdit;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Panel2: TPanel;
    TabelaFotos: TDBGrid;
    Panel4: TPanel;
    Label13: TLabel;
    edDataFoto: TDateTimePicker;
    Label16: TLabel;
    edNomeArquivo: TEdit;
    Label17: TLabel;
    edCaminho: TEdit;
    Panel5: TPanel;
    btCarregar: TBitBtn;
    btCancelarFoto: TSpeedButton;
    btGravarFoto: TSpeedButton;
    btEditarFoto: TSpeedButton;
    btApagarFoto: TSpeedButton;
    btNovoFoto: TSpeedButton;
    btUltimoFoto: TSpeedButton;
    btProximoFoto: TSpeedButton;
    btAnteriorFoto: TSpeedButton;
    btPrimeiroFoto: TSpeedButton;
    edCodigoFoto: TEdit;
    btCancelarAval: TSpeedButton;
    btGravarAval: TSpeedButton;
    btEditarAval: TSpeedButton;
    btApagarAval: TSpeedButton;
    btNovoAval: TSpeedButton;
    btUltimoAval: TSpeedButton;
    btProximoAval: TSpeedButton;
    btAnteriorAval: TSpeedButton;
    btPrimeiroAval: TSpeedButton;
    GroupBox1: TGroupBox;
    Label43: TLabel;
    Label44: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    edProfissao: TEdit;
    edIndicacao: TEdit;
    cbAtividadeFisica: TComboBox;
    edPeso: TEdit;
    edAltura: TEdit;
    edPA: TEdit;
    edQualAtividadeFisica: TMemo;
    edMedicacao: TMemo;
    edDoencas: TMemo;
    edDores: TMemo;
    edPosicaoDor: TMemo;
    edObjetivoPrincipal: TMemo;
    edQueixaPrincipal: TMemo;
    edHDA: TMemo;
    edHPP: TMemo;
    edEncurtamentos: TMemo;
    edForcaMuscular: TMemo;
    edPes: TMemo;
    edPelve: TMemo;
    edOmbro: TMemo;
    edCabeca: TMemo;
    edJoelhos: TMemo;
    edColuna: TMemo;
    edEscapulas: TMemo;
    edCodAvaliacao: TEdit;
    Label18: TLabel;
    cbTabagismo: TComboBox;
    Label19: TLabel;
    cbEtilismo: TComboBox;
    Label48: TLabel;
    cbHipertensao: TComboBox;
    edCaminhoFotoExame: TEdit;
    btCancelarFotoEXame: TSpeedButton;
    btGravarFotoExame: TSpeedButton;
    btEditarFotoExame: TSpeedButton;
    btApagarFotoExame: TSpeedButton;
    btNovoFotoExame: TSpeedButton;
    btUltimoFotoExame: TSpeedButton;
    btProximoFotoExame: TSpeedButton;
    btAnteriorFotoExame: TSpeedButton;
    btPrimeiroFotoExame: TSpeedButton;
    edCodImagemExame: TEdit;
    Label58: TLabel;
    edDataFotoExame: TDateTimePicker;
    Label59: TLabel;
    Label60: TLabel;
    edNomeFotoExame: TEdit;
    procedure PageControl1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);

    procedure DBGrid2DrawColumnCell(Sender: TObject; const [Ref] Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btCarregarClick(Sender: TObject);
    procedure edNomeExit(Sender: TObject);
    procedure tabela_mensalidadeDrawColumnCell(Sender: TObject; const [Ref] Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure GerarMensalidadeClick(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure btCarregaFotoClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure btUltimoClick(Sender: TObject);
    procedure btPrimeiroClick(Sender: TObject);
    procedure btAnteriorClick(Sender: TObject);
    procedure btProximoClick(Sender: TObject);
    procedure btApagarClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure tabela_PrincipalCellClick(Column: TColumn);
    procedure tabela_PrincipalMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure tabela_PrincipalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edCPFKeyPress(Sender: TObject; var Key: Char);
    procedure edCelularKeyPress(Sender: TObject; var Key: Char);
    procedure edTelefoneKeyPress(Sender: TObject; var Key: Char);
    procedure edData_nascimentoKeyPress(Sender: TObject; var Key: Char);
    procedure tabela_PrincipalEnter(Sender: TObject);
    procedure btPrimeiroMensClick(Sender: TObject);
    procedure btUltimoMensClick(Sender: TObject);
    procedure btAnteriorMensClick(Sender: TObject);
    procedure btProximoMensClick(Sender: TObject);
    procedure tabela_mensalidadeCellClick(Column: TColumn);
    procedure tabela_mensalidadeEnter(Sender: TObject);
    procedure tabela_mensalidadeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tabela_mensalidadeMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure btEditarMensClick(Sender: TObject);
    procedure btCancelarMensClick(Sender: TObject);
    procedure btGravarMensClick(Sender: TObject);
    procedure btNovoMensClick(Sender: TObject);
    procedure btApagarMensClick(Sender: TObject);
    procedure edAnoKeyPress(Sender: TObject; var Key: Char);
    procedure edDataMensalidadeKeyPress(Sender: TObject; var Key: Char);
    procedure edValorKeyPress(Sender: TObject; var Key: Char);
    procedure BtCancelarAulaClick(Sender: TObject);
    procedure tabela_AulaCellClick(Column: TColumn);
    procedure tabela_AulaEnter(Sender: TObject);
    procedure tabela_AulaMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure tabela_AulaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btEditarAulaClick(Sender: TObject);
    procedure btNovoAulaClick(Sender: TObject);
    procedure btApagarAulaClick(Sender: TObject);
    procedure btGravarAulaClick(Sender: TObject);
    procedure btPrimeiroAulaClick(Sender: TObject);
    procedure btAnteriorAulaClick(Sender: TObject);
    procedure btProximoAulaClick(Sender: TObject);
    procedure btUltimoAulaClick(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure btCancelarExameClick(Sender: TObject);
    procedure btUltimoExameClick(Sender: TObject);
    procedure btProximoExameClick(Sender: TObject);
    procedure btAnteriorExameClick(Sender: TObject);
    procedure TabelaExameCellClick(Column: TColumn);
    procedure TabelaExameEnter(Sender: TObject);
    procedure TabelaExameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TabelaExameMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure TabelaFotosCellClick(Column: TColumn);
    procedure TabelaFotosEnter(Sender: TObject);
    procedure TabelaFotosMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure TabelaFotosKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btNovoFotoClick(Sender: TObject);
    procedure btCancelarFotoClick(Sender: TObject);
    procedure btEditarFotoClick(Sender: TObject);
    procedure btPrimeiroFotoClick(Sender: TObject);
    procedure btAnteriorFotoClick(Sender: TObject);
    procedure btProximoFotoClick(Sender: TObject);
    procedure btUltimoFotoClick(Sender: TObject);
    procedure btApagarFotoClick(Sender: TObject);
    procedure btGravarFotoClick(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure btPrimeiroAvalClick(Sender: TObject);
    procedure btUltimoAvalClick(Sender: TObject);
    procedure btAnteriorAvalClick(Sender: TObject);
    procedure btProximoAvalClick(Sender: TObject);
    procedure btCancelarAvalClick(Sender: TObject);
    procedure btNovoAvalClick(Sender: TObject);
    procedure btEditarAvalClick(Sender: TObject);
    procedure btApagarAvalClick(Sender: TObject);
    procedure btGravarAvalClick(Sender: TObject);
    procedure edPesoKeyPress(Sender: TObject; var Key: Char);
    procedure edAlturaKeyPress(Sender: TObject; var Key: Char);
    procedure btPrimeiroExameClick(Sender: TObject);
    procedure btNovoExameClick(Sender: TObject);
    procedure btEditarExameClick(Sender: TObject);
    procedure btApagarExameClick(Sender: TObject);
    procedure btGravarExameClick(Sender: TObject);
    procedure btCancelarFotoEXameClick(Sender: TObject);
    procedure btPrimeiroFotoExameClick(Sender: TObject);
    procedure btAnteriorFotoExameClick(Sender: TObject);
    procedure btProximoFotoExameClick(Sender: TObject);
    procedure btUltimoFotoExameClick(Sender: TObject);
    procedure TabelaFotoExamesCellClick(Column: TColumn);
    procedure TabelaFotoExamesKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TabelaFotoExamesMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure TabelaFotoExamesEnter(Sender: TObject);
    procedure btNovoFotoExameClick(Sender: TObject);
    procedure btEditarFotoExameClick(Sender: TObject);
    procedure btApagarFotoExameClick(Sender: TObject);
    procedure btGravarFotoExameClick(Sender: TObject);
    procedure edForcaMuscularExit(Sender: TObject);
    procedure TabelaFotosDrawColumnCell(Sender: TObject;
      const [Ref] Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure TabelaFotoExamesDrawColumnCell(Sender: TObject;
      const [Ref] Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure tabela_AulaDrawColumnCell(Sender: TObject;
      const [Ref] Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure tabela_PrincipalDrawColumnCell(Sender: TObject;
      const [Ref] Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Atualiza_aula;
    procedure Atualiza_UltimasAula;
    Procedure Habilita_Campos;
    Procedure Desabilita_Campos;
    Procedure Habilita_Campos_Mensalidade;
    Procedure Desabilita_Campos_Mensalidade;
    Procedure Limpa_Campos;
    Procedure Atualizar_CadastroPrincipal;
    procedure Habilita_Desabilita_Botoes;
    Procedure Preencher_Tabela;
    Procedure Preencher_Tabela_Mensalidade;
    Procedure Atualiza_Mensalidade;
    procedure Desabilita_PaginaControle;
    procedure Habilita_PaginaControle;
    Procedure Verifica_aba;
    procedure Habilita_Desabilita_Botoes_Mensalidade;
    procedure Limpa_Campos_Mensalidade;
    Procedure Desabilita_Campos_Aula;
    Procedure Habilita_Desabilita_Botoes_Aula;
    Procedure Preencher_Tabela_Aula;
    Procedure Habilita_Campos_Aula;
    procedure Limpa_Campos_Aula;
    Procedure Atualiza_Exame;
    Procedure Atualizar_Tudo;
    Procedure Preencher_Tabela_Exame;
    procedure Limpa_Campos_Exame;
    Procedure Habilita_Campos_Exame;
    Procedure Desabilita_Campos_Exame;
    procedure Habilita_Desabilita_Botoes_Exame;
    procedure Preencher_Tabela_Foto;
    Procedure Atualiza_Foto;
    procedure Limpa_Campos_Foto;
    Procedure Habilita_Campos_Foto;
    Procedure Desabilita_Campos_Foto;
    Procedure Habilita_Desabilita_Botoes_Foto;
    Procedure Preencher_Tabela_Avaliacao;
    Procedure Limpa_Campos_Avaliacao;
    Procedure Atualiza_Avaliacao;
    Procedure Habilita_Desabilita_Botoes_Avaliacao;
    Procedure Desabilita_Campos_Avaliacao;
    Procedure Habilita_Campos_Avaliacao;
    Procedure Atualiza_Foto_Exame;
    Procedure Habilita_Desabilita_Botoes_Foto_Exame;
    procedure Preencher_Tabela_FotoExame;
    procedure Limpa_Campos_FotoExame;
    procedure Desabilita_BotoesExame;
    Procedure Desabilita_Botoes_FotoExame;
    Procedure Habilita_Desabilita_Botoes_Principal;
  end;

var
  FrmCadAlunos: TFrmCadAlunos;
  Salvo: TBookmark;

implementation

{$R *.dfm}

uses UDM, UPesquisaAluno, UValorMensalidade, UAjuda;

Procedure TFrmCadAlunos.Habilita_Desabilita_Botoes_Principal;
begin
  if frmDM.QPrincipal.RecordCount = 0 then
  begin
    btApagar.Enabled:= false;
    btEditar.Enabled:= false;
    btGravar.Enabled:= false;
    btCancelar.Enabled:= false;
    btPrimeiro.Enabled:= false;
    btAnterior.Enabled:= false;
    btProximo.Enabled:= false;
    btUltimo.Enabled:= false;
  end else
  if frmDM.QPrincipal.RecNo = 1 then
  begin
    btPrimeiro.Enabled:= false;
    btAnterior.Enabled:= false;
    btProximo.Enabled:= true;
    btUltimo.Enabled:= true;
    btApagar.Enabled:= true;
    btEditar.Enabled:= true;
  end else
  if frmDM.QPrincipal.RecordCount = frmDM.QPrincipal.RecNo then
  begin
    btProximo.Enabled:= false;
    btUltimo.Enabled:= false;
    btPrimeiro.Enabled:= true;
    btAnterior.Enabled:= true;
    btApagar.Enabled:= true;
    btEditar.Enabled:= true;
  end;
  btGravar.Enabled:= false;
  btCancelar.Enabled:= false;
  btNovo.Enabled:= true;
end;

Procedure TFrmCadAlunos.Desabilita_Botoes_FotoExame;
begin
  btPrimeiroFotoExame.Enabled:= false;
  btAnteriorFotoExame.Enabled:= false;
  btProximoFotoExame.Enabled:= false;
  btUltimoFotoExame.Enabled:= false;
  btNovoFotoExame.Enabled:= false;
  btApagarFotoExame.Enabled:= false;
  btEditarFotoExame.Enabled:= false;
  btGravarFotoExame.Enabled:= false;
  btCancelarFotoExame.Enabled:= false;
  TabelaFotoExames.Enabled:= false;
  btCarregaFoto.Enabled:= false;
end;

Procedure TFrmCadAlunos.Desabilita_BotoesExame;
begin
  btPrimeiroExame.Enabled:= false;
  btAnteriorExame.Enabled:= false;
  btProximoExame.Enabled:= false;
  btUltimoExame.Enabled:= false;
  btNovoExame.Enabled:= false;
  btApagarExame.Enabled:= false;
  btEditarExame.Enabled:= false;
  btGravarExame.Enabled:= false;
  btCancelarExame.Enabled:= false;
end;

procedure TFrmCadAlunos.Limpa_Campos_FotoExame;
begin
  edDataFotoExame.Date:= now;
  edNomeFotoExame.Text:= '';
  edCaminhoFotoExame.Text:= '';
  edCodImagemExame.Text:= '';
end;

procedure TFrmCadAlunos.Preencher_Tabela_FotoExame;
begin
  edCodImagemExame.Text:= IntToStr(frmDM.qFotoExames.FieldByName('cod').AsInteger);
  edDataFotoExame.Date:= frmDM.qFotoExames.FieldByName('data_foto_Exame').AsDateTime;
  edNomeFotoExame.Text:= frmDM.qFotoExames.FieldByName('nomefoto').AsString;
  edCaminhoFotoExame.Text:= frmDM.qFotoExames.FieldByName('caminho').AsString;

  if FileExists(edCaminhoFotoExame.Text) then
  begin
    //mostra a fota caso tenha encotrado
    Image2.Picture.LoadFromFile(edCaminhoFotoExame.Text);
    lbFotoExame.Caption:= '';
  end
  ELSE
  begin
    //caso nao encontre, deixa em branco
    Image2.Picture:= nil;
    lbFotoExame.Caption:= '<Imagem não encontrada>';
  end;
end;

Procedure TFrmCadAlunos.Habilita_Desabilita_Botoes_Foto_Exame;
begin
  if frmDM.qFotoExames.RecordCount = 0 then
  begin
    btApagarFotoExame.Enabled:= false;
    btEditarFotoExame.Enabled:= false;
    btGravarFotoExame.Enabled:= false;
    btCancelarFotoExame.Enabled:= false;
    btPrimeiroFotoExame.Enabled:= false;
    btAnteriorFotoExame.Enabled:= false;
    btProximoFotoExame.Enabled:= false;
    btUltimoFotoExame.Enabled:= false;
  end else
  if frmDM.qFotoExames.RecNo = 1 then
  begin
    btPrimeiroFotoExame.Enabled:= false;
    btAnteriorFotoExame.Enabled:= false;
    btProximoFotoExame.Enabled:= true;
    btUltimoFotoExame.Enabled:= true;
    btApagarFotoExame.Enabled:= true;
    btEditarFotoExame.Enabled:= true;
  end else
  if frmDM.qFotoExames.RecordCount = frmDM.qFotoExames.RecNo then
  begin
    btProximoFotoExame.Enabled:= false;
    btUltimoFotoExame.Enabled:= false;
    btPrimeiroFotoExame.Enabled:= true;
    btAnteriorFotoExame.Enabled:= true;
    btApagarFotoExame.Enabled:= true;
    btEditarFotoExame.Enabled:= true;
  end;
  btGravarFotoExame.Enabled:= false;
  btCancelarFotoExame.Enabled:= false;
  btNovoFotoExame.Enabled:= true;
  //Preencher_Tabela;
end;

Procedure TFrmCadAlunos.Atualiza_Foto_Exame;
begin
  frmDM.qFotoExames.Close;
  frmDM.qFotoExames.SQL.Clear;
  frmDM.qFotoExames.SQL.Add('select * from foto_exame where codExame = '+EdCodigo.Text+' order by data_foto_exame desc');
  //frmDM.qFotoExames.Parameters.ParamByName('codExame').Value:= edCodigoExame.Text;
  frmDM.qFotoExames.Open;
  if frmDM.qFotoExames.RecordCount > 0 then
  begin
    Preencher_Tabela_FotoExame;
  end
  ELSE
  begin
    Limpa_campos_FotoExame;
    lbFotoExame.Caption:= '<Nenhum imagem cadastrada>';
    Image2.Picture:= nil;
  end;
  Habilita_Desabilita_Botoes_Foto_Exame;
end;

Procedure TFrmCadAlunos.Habilita_Campos_Avaliacao;
begin
  edCodAvaliacao.Enabled:= true;
  edProfissao.Enabled:= true;
  edIndicacao.Enabled:= true;
  cbAtividadeFisica.Enabled:= true;
  edPeso.Enabled:= true;
  edAltura.Enabled:= true;
  edPA.Enabled:= true;
  cbTabagismo.Enabled:= true;
  cbEtilismo.Enabled:= true;
  cbHipertensao.Enabled:= true;
  edQualAtividadeFisica.Enabled:= true;
  edMedicacao.Enabled:= true;
  edDoencas.Enabled:= true;
  edDores.Enabled:= true;
  edPosicaoDor.Enabled:= true;
  edObjetivoPrincipal.Enabled:= true;
  edQueixaPrincipal.Enabled:= true;
  edHDA.Enabled:= true;
  edHPP.Enabled:= true;
  edEncurtamentos.Enabled:= true;
  edForcaMuscular.Enabled:= true;
  edPes.Enabled:= true;
  edPelve.Enabled:= true;
  edOmbro.Enabled:= true;
  edCabeca.Enabled:= true;
  edJoelhos.Enabled:= true;
  edColuna.Enabled:= true;
  edEscapulas.Enabled:= true;
end;

Procedure TFrmCadAlunos.Desabilita_Campos_Avaliacao;
begin
  edCodAvaliacao.Enabled:= false;
  edProfissao.Enabled:= false;
  edIndicacao.Enabled:= false;
  cbAtividadeFisica.Enabled:= false;
  edPeso.Enabled:= false;
  edAltura.Enabled:= false;
  edPA.Enabled:= false;
  cbTabagismo.Enabled:= false;
  cbEtilismo.Enabled:= false;
  cbHipertensao.Enabled:= false;
  edQualAtividadeFisica.Enabled:= false;
  edMedicacao.Enabled:= false;
  edDoencas.Enabled:= false;
  edDores.Enabled:= false;
  edPosicaoDor.Enabled:= false;
  edObjetivoPrincipal.Enabled:= false;
  edQueixaPrincipal.Enabled:= false;
  edHDA.Enabled:= false;
  edHPP.Enabled:= false;
  edEncurtamentos.Enabled:= false;
  edForcaMuscular.Enabled:= false;
  edPes.Enabled:= false;
  edPelve.Enabled:= false;
  edOmbro.Enabled:= false;
  edCabeca.Enabled:= false;
  edJoelhos.Enabled:= false;
  edColuna.Enabled:= false;
  edEscapulas.Enabled:= false;
end;

Procedure TFrmCadAlunos.Habilita_Desabilita_Botoes_Avaliacao;
begin
  if frmDM.qAvaliacao.RecordCount = 0 then
  begin
    btApagarAval.Enabled:= false;
    btEditarAval.Enabled:= false;
    btGravarAval.Enabled:= false;
    btCancelarAval.Enabled:= false;
    btPrimeiroAval.Enabled:= false;
    btAnteriorAval.Enabled:= false;
    btProximoAval.Enabled:= false;
    btUltimoAval.Enabled:= false;
  end else
  if frmDM.qAvaliacao.RecNo = 1 then
  begin
    btPrimeiroAval.Enabled:= false;
    btAnteriorAval.Enabled:= false;
    btProximoAval.Enabled:= true;
    btUltimoAval.Enabled:= true;
    btApagarAval.Enabled:= true;
    btEditarAval.Enabled:= true;
  end else
  if frmDM.qAvaliacao.RecordCount = frmDM.qAvaliacao.RecNo then
  begin
    btProximoAval.Enabled:= false;
    btUltimoAval.Enabled:= false;
    btPrimeiroAval.Enabled:= true;
    btAnteriorAval.Enabled:= true;
    btApagarAval.Enabled:= true;
    btEditarAval.Enabled:= true;
  end;
  btGravarAval.Enabled:= false;
  btCancelarAval.Enabled:= false;
  btNovoAval.Enabled:= true;
end;

Procedure TFrmCadAlunos.Atualiza_Avaliacao;
begin
    if (EdCodigo.Text <> '') then
    begin
    frmDM.qAvaliacao.Close;
    frmDM.qAvaliacao.SQL.Clear;
    frmDM.qAvaliacao.SQL.Add('select * from avaliacao where codaluno = '+EdCodigo.Text+'');
    frmDM.qAvaliacao.Open;
    if frmDM.qAvaliacao.RecordCount > 0 then
      Preencher_Tabela_Avaliacao
    ELSE
    begin
      Limpa_Campos_Avaliacao;
    end;
  end;
end;

Procedure TFrmCadAlunos.Limpa_Campos_Avaliacao;
begin
  edCodAvaliacao.Text:= '';
  edProfissao.Text:= '';
  edIndicacao.Text:= '';
  cbAtividadeFisica.ItemIndex:= 0;
  edPeso.Text:= '';
  edAltura.Text:= '';
  edPA.Text:= '';
  cbTabagismo.ItemIndex:= 0;
  cbEtilismo.ItemIndex:= 0;
  cbHipertensao.ItemIndex:= 0;
  edQualAtividadeFisica.Text:= '';
  edMedicacao.Text:= '';
  edDoencas.Text:= '';
  edDores.Text:= '';
  edPosicaoDor.Text:= '';
  edObjetivoPrincipal.Text:= '';
  edQueixaPrincipal.Text:= '';
  edHDA.Text:= '';
  edHPP.Text:= '';
  edEncurtamentos.Text:= '';
  edForcaMuscular.Text:= '';
  edPes.Text:= '';
  edPelve.Text:= '';
  edOmbro.Text:= '';
  edCabeca.Text:= '';
  edJoelhos.Text:= '';
  edColuna.Text:= '';
  edEscapulas.Text:= '';
end;

Procedure TFrmCadAlunos.Preencher_Tabela_Avaliacao;
begin
  edCodAvaliacao.Text:= IntToStr(frmDM.qAvaliacao.FieldByName('cod').AsInteger);
  edProfissao.Text:= frmDM.qAvaliacao.FieldByName('Profissao').AsString;
  edIndicacao.Text:= frmDM.qAvaliacao.FieldByName('Indicacao').AsString;
  cbAtividadeFisica.Text:= frmDM.qAvaliacao.FieldByName('AtividadeFisica').AsString;

  edPeso.Text:= FloatTostrf(frmDM.qAvaliacao.FieldByName('peso').AsFloat,ffFixed,5,2);
  //edpeso.Text:= StringReplace(edPeso.Text, ',', '.', []);

  edAltura.Text:= FloatToStrF(frmDM.qAvaliacao.FieldByName('Altura').AsFloat,ffFixed,5,2);
  //edAltura.Text:= StringReplace(edAltura.Text, ',', '.', []);

  edPA.Text:= frmDM.qAvaliacao.FieldByName('pa').AsString;
  cbTabagismo.Text:= frmDM.qAvaliacao.FieldByName('tabagismo').AsString;;
  cbEtilismo.Text:= frmDM.qAvaliacao.FieldByName('etilismo').AsString;
  cbHipertensao.Text:= frmDM.qAvaliacao.FieldByName('hipertensao').AsString;;
  edQualAtividadeFisica.Text:= frmDM.qAvaliacao.FieldByName('QualAtividadeFisica').AsString;
  edMedicacao.Text:= frmDM.qAvaliacao.FieldByName('Medicacao').AsString;
  edDoencas.Text:= frmDM.qAvaliacao.FieldByName('doencas').AsString;
  edDores.Text:= frmDM.qAvaliacao.FieldByName('dores').AsString;
  edPosicaoDor.Text:= frmDM.qAvaliacao.FieldByName('PosicaoDor').AsString;
  edObjetivoPrincipal.Text:= frmDM.qAvaliacao.FieldByName('ObjetivoPrincipal').AsString;;
  edQueixaPrincipal.Text:= frmDM.qAvaliacao.FieldByName('QueixaPrincipal').AsString;;
  edHDA.Text:= frmDM.qAvaliacao.FieldByName('HDA').AsString;;
  edHPP.Text:= frmDM.qAvaliacao.FieldByName('HPP').AsString;;
  edEncurtamentos.Text:= frmDM.qAvaliacao.FieldByName('Encurtamentos').AsString;;
  edForcaMuscular.Text:= frmDM.qAvaliacao.FieldByName('ForcaMuscular').AsString;;
  edPes.Text:= frmDM.qAvaliacao.FieldByName('Pes').AsString;;
  edPelve.Text:= frmDM.qAvaliacao.FieldByName('Pelve').AsString;;
  edOmbro.Text:= frmDM.qAvaliacao.FieldByName('Ombros').AsString;;
  edCabeca.Text:= frmDM.qAvaliacao.FieldByName('Cabeca').AsString;;
  edJoelhos.Text:= frmDM.qAvaliacao.FieldByName('Joelhos').AsString;;
  edColuna.Text:= frmDM.qAvaliacao.FieldByName('Coluna').AsString;;
  edEscapulas.Text:= frmDM.qAvaliacao.FieldByName('Escapulas').AsString;;
end;

Procedure TFrmCadAlunos.Habilita_Desabilita_Botoes_Foto;
begin
  if frmDM.qFoto.RecordCount = 0 then
  begin
    btApagarFoto.Enabled:= false;
    btEditarFoto.Enabled:= false;
    btGravarFoto.Enabled:= false;
    btCancelarFoto.Enabled:= false;
    btPrimeiroFoto.Enabled:= false;
    btAnteriorFoto.Enabled:= false;
    btProximoFoto.Enabled:= false;
    btUltimoFoto.Enabled:= false;
  end else
  if frmDM.qFoto.RecNo = 1 then
  begin
    btPrimeiroFoto.Enabled:= false;
    btAnteriorFoto.Enabled:= false;
    btProximoFoto.Enabled:= true;
    btUltimoFoto.Enabled:= true;
    btApagarFoto.Enabled:= true;
    btEditarFoto.Enabled:= true;
  end else
  if frmDM.qFoto.RecordCount = frmDM.qFoto.RecNo then
  begin
    btProximoFoto.Enabled:= false;
    btUltimoFoto.Enabled:= false;
    btPrimeiroFoto.Enabled:= true;
    btAnteriorFoto.Enabled:= true;
    btApagarFoto.Enabled:= true;
    btEditarFoto.Enabled:= true;
  end;
  btGravarFoto.Enabled:= false;
  btCancelarFoto.Enabled:= false;
  btNovoFoto.Enabled:= true;
  //Preencher_Tabela;
end;

Procedure TFrmCadAlunos.Habilita_Campos_Foto;
begin
  edDataFoto.Enabled:= true;
  btCarregar.Enabled:= true;
end;

Procedure TFrmCadAlunos.Desabilita_Campos_Foto;
begin
  edDataFoto.Enabled:= False;
end;

procedure TFrmCadAlunos.Limpa_Campos_Foto;
begin
  edDataFoto.Date:= now;
  edNomeArquivo.Text:= '';
  edCaminho.Text:= '';
  edCodigoFoto.Text:= '';
end;

Procedure TFrmCadAlunos.Atualiza_Foto;
begin
  frmDM.qFoto.Close;
  frmDM.qFoto.SQL.Clear;
  frmDM.qFoto.SQL.Add('select * from foto where codaluno = '+EdCodigo.Text+' order by data_foto desc');
  //frmDM.qFoto.SQL.Add('select * from foto where codaluno = :codaluno order by data_foto desc');
  //frmDM.qFoto.Parameters.ParamByName('codaluno').Value:= EdCodigo.Text;
  frmDM.qFoto.Open;
  if frmDM.qFoto.RecordCount > 0 then
    TabelaFotosEnter(self)
  ELSE
  begin
    Limpa_Campos_Foto;
    lbFoto.Caption:= '<Nenhum imagem cadastrada>';
    image1.Picture:= nil;
  end;
end;

procedure TFrmCadAlunos.Preencher_Tabela_Foto;
begin
  edCodigoFoto.Text:= IntToStr(frmDM.qFoto.FieldByName('cod').AsInteger);
  edDataFoto.Date:= frmDM.qFoto.FieldByName('data_foto').AsDateTime;
  edNomeArquivo.Text:= frmDM.qFoto.FieldByName('nomefoto').AsString;
  edCaminho.Text:= frmDM.qFoto.FieldByName('caminho').AsString;

  if FileExists(edCaminho.Text) then
  begin
    //mostra a fota caso tenha encotrado
    Image1.Picture.LoadFromFile(edCaminho.Text);
    lbFoto.Caption:= '';
  end
  ELSE
  begin
    //caso nao encontre, deixa em branco
    Image1.Picture:= nil;
    lbFoto.Caption:= '<Imagem não encontrada>';
  end;

end;

Procedure TFrmCadAlunos.Habilita_Desabilita_Botoes_Exame;
begin
  if frmDM.QExames.RecordCount = 0 then
  begin
    btApagarExame.Enabled:= false;
    btEditarExame.Enabled:= false;
    btGravarMens.Enabled:= false;
    btCancelarExame.Enabled:= false;
    btPrimeiroExame.Enabled:= false;
    btAnteriorExame.Enabled:= false;
    btProximoExame.Enabled:= false;
    btUltimoExame.Enabled:= false;
  end else
  if frmDM.QExames.RecNo = 1 then
  begin
    btPrimeiroExame.Enabled:= false;
    btAnteriorExame.Enabled:= false;
    btProximoExame.Enabled:= true;
    btUltimoExame.Enabled:= true;
    btApagarExame.Enabled:= true;
    btEditarExame.Enabled:= true;
  end else
  if frmDM.QExames.RecordCount = frmDM.QExames.RecNo then
  begin
    btProximoExame.Enabled:= false;
    btUltimoExame.Enabled:= false;
    btPrimeiroExame.Enabled:= true;
    btAnteriorExame.Enabled:= true;
    btApagarExame.Enabled:= true;
    btEditarExame.Enabled:= true;
  end;
  btGravarExame.Enabled:= false;
  btCancelarExame.Enabled:= false;
  btNovoExame.Enabled:= true;
end;

Procedure TFrmCadAlunos.Desabilita_Campos_Exame;
begin
  edExame.Enabled:= false;
  edObservacao.Enabled:= false;
end;

Procedure TFrmCadAlunos.Habilita_Campos_Exame;
begin
  edExame.Enabled:= true;
  edObservacao.Enabled:= true;
end;

procedure TFrmCadAlunos.Limpa_Campos_Exame;
begin
  edExame.Text:= '';
  edObservacao.Text:= '';
end;

Procedure TFrmCadAlunos.Preencher_Tabela_Exame;
begin
  edCodigoExame.Text:= IntToStr(frmDM.QExames.FieldByName('codExame').AsInteger);
  edExame.Text:= frmDM.QExames.FieldByName('exames').AsString;
  edObservacao.Text:= frmDM.QExames.FieldByName('observacoes').AsString;
end;

Procedure TFrmCadAlunos.Atualiza_Exame;
begin
  frmDM.QExames.Close;
  frmDM.QExames.SQL.Clear;
  frmDM.QExames.SQL.Add('select * from exames where codaluno = '+EdCodigo.Text+'');
  frmDM.QExames.Open;
  if frmDM.QExames.RecordCount > 0 then
  begin
    Preencher_Tabela_Exame;
    Atualiza_Foto_Exame;
  end
  else
  begin
    Atualiza_Foto_Exame;
    Limpa_Campos_Exame;
    Limpa_campos_FotoExame;
    lbFotoExame.Caption:= '<Nenhum imagem cadastrada>';
    image2.Picture:= nil;
  end;
end;

Procedure TFrmCadAlunos.Atualizar_Tudo;
begin
  case FrmCadAlunos.PageControl1.ActivePageIndex of
    0://cadastro principal
    begin
      exit;
    end;
    1://ficha de avaliacao
    begin
      Atualiza_Avaliacao;
      Habilita_Desabilita_Botoes_Avaliacao;
    end;
    2://fotos de acompanhamento
    begin
      Atualiza_Foto;
      Habilita_Desabilita_Botoes_Foto;
    end;
    3://mensalidade
    begin
      Atualiza_Mensalidade;
      Habilita_Desabilita_Botoes_Mensalidade;
    end;
    4://exames complementares
    begin
      Atualiza_Exame;
      Habilita_Desabilita_Botoes_Exame;
    end;
    5://aula
    begin
      Atualiza_aula;
      Atualiza_UltimasAula;
      Habilita_Desabilita_Botoes_Aula;
    end;
  end;
end;

procedure TFrmCadAlunos.Limpa_Campos_Mensalidade;
begin
  edAno.Text:= '';
  edDataMensalidade.DateTime:= now;
  edValor.Text:= '';
  cbPago.Text:= '';
  cbVisualizar.Text:= '';
  cbMes.Text:= '';
end;

procedure TFrmCadAlunos.Limpa_Campos_Aula;
begin
  EdDataAula.Date:= now;
  cbObservacao.Text:= '';
  edAnotacoes.Text:= '';
end;

Procedure TFrmCadAlunos.Habilita_Campos_Mensalidade;
begin
  edAno.Enabled:= true;
  cbMes.Enabled:= true;
  edDataMensalidade.Enabled:= true;
  edValor.Enabled:= true;
  cbPago.Enabled:= true;
  cbVisualizar.Enabled:= true;
end;

Procedure TFrmCadAlunos.Habilita_Campos_Aula;
begin
  EdDataAula.Enabled:= true;
  cbObservacao.Enabled:= true;
  edAnotacoes.Enabled:= true;
end;

Procedure TFrmCadAlunos.Desabilita_Campos_Aula;
begin
  EdDataAula.Enabled:= false;
  cbObservacao.Enabled:= false;
  edAnotacoes.Enabled:= false;
end;

Procedure TFrmCadAlunos.Desabilita_Campos_Mensalidade;
begin
  edAno.Enabled:= false;
  cbMes.Enabled:= false;
  edDataMensalidade.Enabled:= false;
  edValor.Enabled:= false;
  cbPago.Enabled:= false;
  cbVisualizar.Enabled:= false;
end;

Procedure TFrmCadAlunos.Preencher_Tabela_Aula;
begin
  edCodigoAula.Text:= IntToStr(frmDM.qAula.FieldByName('cod').AsInteger);
  EdDataAula.Date:= frmDM.qAula.FieldByName('data_Aula').AsDateTime;
  cbObservacao.Text:= frmDM.qAula.FieldByName('observacao').AsString;
  edAnotacoes.Text:= frmDM.qAula.FieldByName('anotacoes').AsString;
end;

Procedure TFrmCadAlunos.Preencher_Tabela_Mensalidade;
begin
  edCodMensalidade.Text:= IntToStr(frmDM.QMensalidade.FieldByName('codmensalidade').AsInteger);
  edAno.Text:= frmDM.QMensalidade.FieldByName('ano').AsString;
  cbMes.Text:= frmDM.QMensalidade.FieldByName('mes').AsString;
  edDataMensalidade.Date:= frmDM.QMensalidade.FieldByName('data_mensalidade').AsDateTime;
  edValor.Text:= FloatToStrF(frmDM.QMensalidade.FieldByName('valor').AsFloat,ffFixed,5,2);
  cbPago.Text:= frmDM.QMensalidade.FieldByName('pago').AsString;
  cbVisualizar.Text:= FrmDM.QMensalidade.FieldByName('visualizar').AsString;
end;

procedure TFrmCadAlunos.btCancelarFotoEXameClick(Sender: TObject);
begin
  Cabecalho.Enabled:= true;
  frmDM.Conexao.RollbackTrans;
  Atualiza_Foto_Exame;
  btCarregaFoto.Enabled:= false;
  Habilita_Desabilita_Botoes_Exame;
  Habilita_Desabilita_Botoes_Foto_Exame;
  btFechar.Enabled:= true;

  btCarregaFoto.Enabled:= false;
  edDataFotoExame.Enabled:= false;
  TabelaFotoExames.Enabled:= true;

  novo:= false;
  Habilita_PaginaControle;
  Verifica_aba;
  frmDM.qFotoExames.GotoBookmark(Salvo);
  Preencher_Tabela_FotoExame;
end;

procedure TFrmCadAlunos.btCancelarExameClick(Sender: TObject);
begin
  Cabecalho.Enabled:= true;
  frmDM.Conexao.RollbackTrans;
  Atualiza_Exame;
  Desabilita_Campos_Exame;
  Habilita_Desabilita_Botoes_Exame;
  Habilita_Desabilita_Botoes_Foto_Exame;
  btFechar.Enabled:= true;
  novo:= false;
  Habilita_PaginaControle;
  Verifica_aba;
  frmDM.qExames.GotoBookmark(Salvo);
  Preencher_Tabela_Exame;
end;

procedure TFrmCadAlunos.btCancelarFotoClick(Sender: TObject);
begin
  Cabecalho.Enabled:= true;
  frmDM.Conexao.RollbackTrans;
  Atualiza_Foto;
  Desabilita_Campos_Foto;
  Habilita_Desabilita_Botoes_Foto;
  btFechar.Enabled:= true;
  btCarregar.Enabled:= false;
  TabelaFotos.Enabled:= true;
  novo:= false;
  Habilita_PaginaControle;
  Verifica_aba;
  frmDM.qFoto.GotoBookmark(Salvo);
  Preencher_Tabela_Foto;
end;

Procedure TFrmCadAlunos.Habilita_Desabilita_Botoes_Aula;
begin
  if frmDM.qAula.RecordCount = 0 then
  begin
    btApagarAula.Enabled:= false;
    btEditarAula.Enabled:= false;
    btGravarMens.Enabled:= false;
    btCancelarAula.Enabled:= false;
    btPrimeiroAula.Enabled:= false;
    btAnteriorAula.Enabled:= false;
    btProximoAula.Enabled:= false;
    btUltimoAula.Enabled:= false;
  end else
  if frmDM.qAula.RecNo = 1 then
  begin
    btPrimeiroAula.Enabled:= false;
    btAnteriorAula.Enabled:= false;
    btProximoAula.Enabled:= true;
    btUltimoAula.Enabled:= true;
    btApagarAula.Enabled:= true;
    btEditarAula.Enabled:= true;
  end else
  if frmDM.qAula.RecordCount = frmDM.qAula.RecNo then
  begin
    btProximoAula.Enabled:= false;
    btUltimoAula.Enabled:= false;
    btPrimeiroAula.Enabled:= true;
    btAnteriorAula.Enabled:= true;
    btApagarAula.Enabled:= true;
    btEditarAula.Enabled:= true;
  end;
  btGravarAula.Enabled:= false;
  btCancelarAula.Enabled:= false;
  btNovoAula.Enabled:= true;
end;

Procedure TFrmCadAlunos.Habilita_Desabilita_Botoes_Mensalidade;
begin
  if frmDM.QMensalidade.RecordCount = 0 then
  begin
    btApagarMens.Enabled:= false;
    btEditarMens.Enabled:= false;
    btGravarMens.Enabled:= false;
    btCancelarMens.Enabled:= false;
    btPrimeiroMens.Enabled:= false;
    btAnteriorMens.Enabled:= false;
    btProximoMens.Enabled:= false;
    btUltimoMens.Enabled:= false;
  end else
  if frmDM.QMensalidade.RecNo = 1 then
  begin
    btPrimeiroMens.Enabled:= false;
    btAnteriorMens.Enabled:= false;
    btProximoMens.Enabled:= true;
    btUltimoMens.Enabled:= true;
    btApagarMens.Enabled:= true;
    btEditarMens.Enabled:= true;
  end else
  if frmDM.QMensalidade.RecordCount = frmDM.QMensalidade.RecNo then
  begin
    btProximoMens.Enabled:= false;
    btUltimoMens.Enabled:= false;
    btPrimeiroMens.Enabled:= true;
    btAnteriorMens.Enabled:= true;
    btApagarMens.Enabled:= true;
    btEditarMens.Enabled:= true;
  end;
  btGravarMens.Enabled:= false;
  btCancelarMens.Enabled:= false;
  btNovoMens.Enabled:= true;
  //Preencher_Tabela;
end;

procedure TFrmCadAlunos.Verifica_aba;
begin
  case FrmCadAlunos.PageControl1.ActivePageIndex of
    0://cadastro principal
    begin
      exit;
    end;
    1://ficha de avaliacao
    begin
      Atualiza_Avaliacao;
      if frmDM.qAvaliacao.RecordCount > 0 then
        Preencher_Tabela_Avaliacao
      else
         Limpa_Campos_Avaliacao;
    end;
    2://fotos de acompanhamento
    begin
      Atualiza_Foto;
      if frmDM.qFoto.RecordCount > 0 then
        TabelaFotosEnter(self)
      else
        Limpa_Campos_Foto;;
    end;
    3://mensalidade
    begin
      Atualiza_Mensalidade;
      if frmDM.QMensalidade.RecordCount > 0 then
        tabela_mensalidadeEnter(self)
      else
        Limpa_Campos_Mensalidade;
    end;
    4://exames complementares
    begin
      Atualiza_Exame;
      if frmDM.QExames.RecordCount > 0 then
      begin
        Preencher_Tabela_Exame;
        Atualiza_Foto_Exame;
        if frmDM.qFotoExames.RecordCount > 0 then
          Preencher_Tabela_FotoExame
        ELSE
        begin
          Limpa_campos_FotoExame;
          lbFotoExame.Caption:= '<Nenhum imagem cadastrada>';
        end;
      end
      else
      begin
        Limpa_Campos_Exame;
        Limpa_Campos_FotoExame;
        lbFotoExame.Caption:= '<Nenhum imagem cadastrada>';
      end;

    end;
    5://aula
    begin
      Atualiza_aula;
      Atualiza_UltimasAula;
      if frmDM.qAula.RecordCount > 0 then
        tabela_AulaEnter(self)
      else
        Limpa_Campos_Aula;
    end;
  end;
end;

Procedure TFrmCadAlunos.Atualiza_Mensalidade;
begin
  frmDM.QMensalidade.Close;
  frmDM.QMensalidade.SQL.Clear;
  frmDM.QMensalidade.SQL.Add('select * from mensalidade where codaluno = '+EdCodigo.Text+' order by ano desc');
  //frmDM.QMensalidade.Parameters.ParamByName('codaluno').Value:= EdCodigo.Text;
  frmDM.QMensalidade.Open;
  if frmDM.QMensalidade.RecordCount > 0 then
    tabela_mensalidadeEnter(self)
  ELSE
    Limpa_Campos_Mensalidade;
end;

Procedure TFrmCadAlunos.Habilita_PaginaControle;
begin
  PageControl1.Pages[0].TabVisible:= true;
  PageControl1.Pages[1].TabVisible:= true;
  PageControl1.Pages[2].TabVisible:= true;
  PageControl1.Pages[3].TabVisible:= true;
  PageControl1.Pages[4].TabVisible:= true;
  PageControl1.Pages[5].TabVisible:= true;
end;

Procedure TFrmCadAlunos.Desabilita_PaginaControle;
begin
  PageControl1.Pages[0].TabVisible:= false;
  PageControl1.Pages[1].TabVisible:= false;
  PageControl1.Pages[2].TabVisible:= false;
  PageControl1.Pages[3].TabVisible:= false;
  PageControl1.Pages[4].TabVisible:= false;
  PageControl1.Pages[5].TabVisible:= false;
end;

Procedure TFrmCadAlunos.Preencher_Tabela;
begin
  EdCodigo.Text:= IntToStr(frmDM.QPrincipal.FieldByName('cod').AsInteger);
  cbSituacao.Text:= frmDM.QPrincipal.FieldByName('situacao').AsString;
  edNome.Text:= frmDM.QPrincipal.FieldByName('nome').AsString;
  edCPF.Text:= frmDM.QPrincipal.FieldByName('cpf').AsString;
  edCelular.Text:= frmDM.QPrincipal.FieldByName('telefone').AsString;
  edTelefone.Text:= frmDM.QPrincipal.FieldByName('telefone2').AsString;
  edData_nascimento.Date:= frmDM.QPrincipal.FieldByName('data_nascimento').AsDateTime;
  edEndereco.Text:= frmDM.QPrincipal.FieldByName('endereco').AsString;
  edEmail.Text:= frmDM.QPrincipal.FieldByName('email').AsString;
end;

Procedure TFrmCadAlunos.Habilita_Desabilita_Botoes;
begin
  if frmDM.QPrincipal.RecordCount = 0 then
  begin
    btApagar.Enabled:= false;
    btEditar.Enabled:= false;
    btGravar.Enabled:= false;
    btCancelar.Enabled:= false;
    btProximo.Enabled:= false;
    btUltimo.Enabled:= false;
    btPrimeiro.Enabled:= false;
    btAnterior.Enabled:= false;
  end else
  if frmDM.QPrincipal.RecNo = 1 then
  begin
    btPrimeiro.Enabled:= false;
    btAnterior.Enabled:= false;
    btProximo.Enabled:= true;
    btUltimo.Enabled:= true;
    btApagar.Enabled:= true;
    btEditar.Enabled:= true;
  end else
  if frmDM.QPrincipal.RecordCount = frmDM.QPrincipal.RecNo then
  begin
    btProximo.Enabled:= false;
    btUltimo.Enabled:= false;
    btPrimeiro.Enabled:= true;
    btAnterior.Enabled:= true;
    btApagar.Enabled:= true;
    btEditar.Enabled:= true;
  end;
  btGravar.Enabled:= false;
  btCancelar.Enabled:= false;
  btNovo.Enabled:= true;
  Preencher_Tabela;
end;

Procedure TFrmCadAlunos.Atualizar_CadastroPrincipal;
begin
  frmDM.QPrincipal.Close;
  frmDM.QPrincipal.SQL.Clear;
  frmDM.QPrincipal.SQL.Add('select * from Cad_Alunos_Principal');
  frmDM.QPrincipal.Open;
  if frmDM.QPrincipal.RecordCount > 0 then
    Preencher_Tabela
  ELSE
    Limpa_Campos;
end;

Procedure TFrmCadAlunos.Habilita_Campos;
begin
  cbSituacao.Enabled:= true;
  edNome.Enabled:= true;;
  edCPF.Enabled:= true;
  edCelular.Enabled:= true;
  edTelefone.Enabled:= true;
  edData_nascimento.Enabled:= true;
  edEndereco.Enabled:= true;
  edEmail.Enabled:= true;
end;

Procedure TFrmCadAlunos.Desabilita_Campos;
begin
  cbSituacao.Enabled:= false;
  edNome.Enabled:= false;;
  edCPF.Enabled:= false;
  edCelular.Enabled:= false;
  edTelefone.Enabled:= false;
  edData_nascimento.Enabled:= false;
  edEndereco.Enabled:= false;
  edEmail.Enabled:= false;
end;

procedure TFrmCadAlunos.edAlturaKeyPress(Sender: TObject; var Key: Char);
begin
  if ((Key in ['0'..'9',','] = False) and (Word(Key) <> VK_BACK)) then
    Key := #0;
end;

procedure TFrmCadAlunos.edAnoKeyPress(Sender: TObject; var Key: Char);
begin
  if ((Key in ['0'..'9'] = False) and (Word(Key) <> VK_BACK)) then
        Key := #0;
end;

procedure TFrmCadAlunos.edCelularKeyPress(Sender: TObject; var Key: Char);
begin
  if ((Key in ['0'..'9'] = False) and (Word(Key) <> VK_BACK)) then
        Key := #0;
end;

procedure TFrmCadAlunos.edCPFKeyPress(Sender: TObject; var Key: Char);
begin
  //if ((Key in ['0'..'9','-','.','/'] = False) and (Word(Key) <> VK_BACK)) then
  if ((Key in ['0'..'9'] = False) and (Word(Key) <> VK_BACK)) then
        Key := #0;
end;

procedure TFrmCadAlunos.edDataMensalidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if ((Key in ['0'..'9'] = False) and (Word(Key) <> VK_BACK)) then
        Key := #0;
end;

procedure TFrmCadAlunos.edData_nascimentoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if ((Key in ['0'..'9'] = False) and (Word(Key) <> VK_BACK)) then
        Key := #0;
end;

procedure TFrmCadAlunos.edForcaMuscularExit(Sender: TObject);
begin
  edPes.SetFocus;
end;

Procedure TFrmCadAlunos.Limpa_Campos;
begin
  EdCodigo.Text:= '';
  cbSituacao.ItemIndex:= -2;
  edNome.Text:= '';
  edCPF.Text:= '';
  edCelular.Text:= '';
  edTelefone.Text:= '';
  edData_nascimento.Date:= now;
  edEndereco.Text:= '';
  edEmail.Text:= '';
end;

procedure TFrmCadAlunos.Atualiza_Aula;
begin
  frmDM.qAula.Close;
  frmDM.qAula.SQL.Clear;
  frmDM.qAula.SQL.Add('select * from aula where codaluno = '+EdCodigo.Text+' order by data_aula');
  frmDM.qAula.Open;
  if frmDM.qAula.RecordCount > 0 then
    tabela_AulaEnter(self)
  else
    Limpa_Campos_Aula;

  Desabilita_Campos_Aula;
end;


procedure TFrmCadAlunos.Atualiza_UltimasAula;
begin
  frmDM.QUltimasAulas.Close;
  frmDM.QUltimasAulas.SQL.Clear;
  frmDM.QUltimasAulas.SQL.Add('select * from aula where codaluno = '+EdCodigo.Text+' order by data_aula desc limit 3');
  frmDM.QUltimasAulas.Open;
end;

procedure TFrmCadAlunos.btAnteriorAulaClick(Sender: TObject);
begin
  frmDM.qAula.Prior;
  if frmDM.qAula.RecNo = 1 then
  begin
    btPrimeiroAula.Enabled:= false;
    btAnteriorAula.Enabled:= false;
  end;
  btProximoAula.Enabled:= true;
  btUltimoAula.Enabled:= true;
  Preencher_Tabela_Aula;
end;

procedure TFrmCadAlunos.btAnteriorAvalClick(Sender: TObject);
begin
  frmDM.qAvaliacao.Prior;
  if frmDM.qAvaliacao.RecNo = 1 then
  begin
    btPrimeiroAval.Enabled:= false;
    btAnteriorAval.Enabled:= false;
  end;
  btProximoAval.Enabled:= true;
  btUltimoAval.Enabled:= true;
  Preencher_Tabela_Avaliacao;
end;

procedure TFrmCadAlunos.btAnteriorClick(Sender: TObject);
begin
  frmDM.QPrincipal.Prior;
  if frmDM.QPrincipal.RecNo = 1 then
  begin
    btPrimeiro.Enabled:= false;
    btAnterior.Enabled:= false;
  end;
  btProximo.Enabled:= true;
  btUltimo.Enabled:= true;
  Preencher_Tabela;
  Verifica_aba;
  Atualizar_Tudo;
end;

procedure TFrmCadAlunos.btAnteriorExameClick(Sender: TObject);
begin
  frmDM.QExames.Prior;
  if frmDM.QExames.RecNo = 1 then
  begin
    btPrimeiroExame.Enabled:= false;
    btAnteriorExame.Enabled:= false;
  end;
  btProximoExame.Enabled:= true;
  btUltimoExame.Enabled:= true;

  Preencher_Tabela_Exame;
  Atualiza_Foto_Exame;
end;

procedure TFrmCadAlunos.btAnteriorFotoClick(Sender: TObject);
begin
  frmDM.qFoto.Prior;
  if frmDM.qFoto.RecNo = 1 then
  begin
    btPrimeiroFoto.Enabled:= false;
    btAnteriorFoto.Enabled:= false;
  end;
  btProximoFoto.Enabled:= true;
  btUltimoFoto.Enabled:= true;
  Preencher_Tabela_Foto;
end;

procedure TFrmCadAlunos.btAnteriorFotoExameClick(Sender: TObject);
begin
  frmDM.qFotoExames.Prior;
  if frmDM.qFotoExames.RecNo = 1 then
  begin
    btPrimeiroFotoExame.Enabled:= false;
    btAnteriorFotoExame.Enabled:= false;
  end;
  btProximoFotoExame.Enabled:= true;
  btUltimoFotoExame.Enabled:= true;
  Preencher_Tabela_FotoExame;
end;

procedure TFrmCadAlunos.btAnteriorMensClick(Sender: TObject);
begin
  frmDM.QMensalidade.Prior;
  if frmDM.QMensalidade.RecNo = 1 then
  begin
    btPrimeiroMens.Enabled:= false;
    btAnteriorMens.Enabled:= false;
  end;
  btProximoMens.Enabled:= true;
  btUltimoMens.Enabled:= true;
  Preencher_Tabela_Mensalidade;
end;

procedure TFrmCadAlunos.btApagarAulaClick(Sender: TObject);
begin
  Salvo:= frmDM.qAula.GetBookmark;
  If MessageDlg('Deseja realmente excluir a atual AULA de ' +#13+#13+ edNome.Text+ '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  Then
  begin
    frmDM.qAula.Close;
    frmDM.qAula.SQL.Clear;
    frmDM.qAula.SQL.Add('delete from aula where cod = :cod');
    frmDM.qAula.Parameters.ParamByName('cod').Value:= StrToInt(edCodigoAula.Text);
    try
      try
        frmDM.qAula.ExecSQL;
        frmDM.Conexao.BeginTrans;
        erro:= false;
      except
        erro:= true;
      end;
    finally
        if erro then
        begin
          Messagedlg('Erro ao excluir registro!', mtError,[mbok],0);
          Atualiza_aula;
          frmDM.qAula.GotoBookmark(salvo);
          Preencher_Tabela_Aula;
          Atualiza_UltimasAula;
        end else
        begin
          frmDM.Conexao.CommitTrans;
          Atualiza_aula;
          Atualiza_UltimasAula;
          Messagedlg('Registro excluido com sucesso!!', mtInformation,[mbok],0);
          Habilita_PaginaControle;
        end;
    end;

    Preencher_Tabela_Aula;
    Habilita_Desabilita_Botoes_Aula;
    //Verifica_aba;
    //Limpa_Campos_Aula;
  end;
end;

procedure TFrmCadAlunos.btApagarAvalClick(Sender: TObject);
begin
  Salvo:= frmDM.qAvaliacao.GetBookmark;
  If MessageDlg('Deseja realmente excluir a atual AVALIAÇÃO de ' +#13+#13+ edNome.Text+ '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  Then
  begin
    frmDM.qAvaliacao.Close;
    frmDM.qAvaliacao.SQL.Clear;
    frmDM.qAvaliacao.SQL.Add('delete from avaliacao where cod = '+edCodAvaliacao.Text+'');
    try
      try
        frmDM.qAvaliacao.ExecSQL;
        frmDM.Conexao.BeginTrans;
        erro:= false;
      except
        erro:= true;
      end;
    finally
        if erro then
        begin
          Messagedlg('Erro ao excluir registro!', mtError,[mbok],0);
          Atualiza_Avaliacao;
          frmDM.qAvaliacao.GotoBookmark(salvo);
          Preencher_Tabela_Avaliacao;
        end else
        begin
          frmDM.Conexao.CommitTrans;
          Atualiza_Avaliacao;
          Messagedlg('Registro excluido com sucesso!!', mtInformation,[mbok],0);
          Habilita_PaginaControle;
          frmDM.qAvaliacao.Last;
        end;
    end;

    Preencher_Tabela_Avaliacao;
    Habilita_Desabilita_Botoes_Avaliacao;
  end;
end;

procedure TFrmCadAlunos.btApagarClick(Sender: TObject);
begin
  Salvo:= frmDM.QPrincipal.GetBookmark;
  If MessageDlg('Deseja realmente excluir o registro atual?' +#13+#13+
                'Aluno: '+edNome.Text + #13+#13 +
                'Essa ação exclui tudo relacionado ao aluno. Deseja prosseguir?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  Then
  begin

    frmDM.QPrincipal.Close;
    frmDM.QPrincipal.SQL.Clear;
    frmDM.QPrincipal.SQL.Add('delete from cad_alunos_principal where cod = :cod');
    frmDM.QPrincipal.Parameters.ParamByName('cod').Value:= StrToInt(EdCodigo.Text);
    try
      try
        frmDM.QPrincipal.ExecSQL;
        frmDM.Conexao.BeginTrans;
        erro:= false;
      except
        erro:= true;
      end;
    finally
        if erro then
        begin
          Messagedlg('Erro ao excluir registro!', mtError,[mbok],0);
          Atualizar_CadastroPrincipal;
          frmDM.QPrincipal.GotoBookmark(salvo);
          Preencher_Tabela;
        end else
        begin
          frmDM.Conexao.CommitTrans;
          Atualizar_CadastroPrincipal;
          Messagedlg('Registro excluido com sucesso!!', mtInformation,[mbok],0);
          Habilita_PaginaControle;
        end;
    end;
    Preencher_Tabela;
    Limpa_Campos;
    Habilita_Desabilita_Botoes;
    Verifica_aba;
  end;
end;

procedure TFrmCadAlunos.btApagarExameClick(Sender: TObject);
begin
  Salvo:= frmDM.qExames.GetBookmark;
  If MessageDlg('Deseja realmente excluir o atual EXAME COMPLEMENTAR de ' +#13+#13+ edNome.Text+ #13+#13' e qualquer imagem relacionada a ele?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  Then
  begin
    frmDM.qExames.Close;
    frmDM.qExames.SQL.Clear;
    frmDM.qExames.SQL.Add('delete from exames where codExame = :cod');
    frmDM.qExames.Parameters.ParamByName('cod').Value:= StrToInt(edCodigoExame.Text);
    try
      try
        frmDM.qExames.ExecSQL;
        frmDM.Conexao.BeginTrans;
        erro:= false;
      except
        erro:= true;
      end;
    finally
        if erro then
        begin
          Messagedlg('Erro ao excluir registro!', mtError,[mbok],0);
          Atualiza_Exame;
          frmDM.qExames.GotoBookmark(salvo);
          Preencher_Tabela_Exame;
        end else
        begin
          frmDM.Conexao.CommitTrans;
          Atualiza_Exame;
          Messagedlg('Registro excluido com sucesso!!', mtInformation,[mbok],0);
          Habilita_PaginaControle;
        end;
    end;

    Preencher_Tabela_Exame;
    Habilita_Desabilita_Botoes_Exame;
  end;
end;

procedure TFrmCadAlunos.btApagarFotoClick(Sender: TObject);
begin
  Salvo:= frmDM.qFoto.GetBookmark;
  If MessageDlg('Deseja realmente excluir a atual FOTO DE ACOMPANHAMENTO de ' +#13+#13+ edNome.Text+ '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  Then
  begin

    frmDM.qFoto.Close;
    frmDM.qFoto.SQL.Clear;
    frmDM.qFoto.SQL.Add('delete from foto where cod = :cod');
    frmDM.qFoto.Parameters.ParamByName('cod').Value:= StrToInt(edCodigoFoto.Text);
    try
      try
        frmDM.qFoto.ExecSQL;
        frmDM.Conexao.BeginTrans;
        erro:= false;
      except
        erro:= true;
      end;
    finally
        if erro then
        begin
          Messagedlg('Erro ao excluir registro!', mtError,[mbok],0);
          Atualiza_Foto;
          frmDM.qFoto.GotoBookmark(salvo);
          Preencher_Tabela_Foto;
        end else
        begin
          frmDM.Conexao.CommitTrans;
          Atualiza_Foto;
          Messagedlg('Registro excluido com sucesso!!', mtInformation,[mbok],0);
          Habilita_PaginaControle;
        end;
    end;

    Preencher_Tabela_Foto;
    Habilita_Desabilita_Botoes_Foto;
    //Verifica_aba;
    //Limpa_Campos_Foto;
  end;
end;

procedure TFrmCadAlunos.btApagarFotoExameClick(Sender: TObject);
begin
  Salvo:= frmDM.qFotoExames.GetBookmark;
  If MessageDlg('Deseja realmente excluir a atual FOTO DE EXAME COMPLEMENTAR de ' +#13+#13+ edNome.Text+ '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  Then
  begin
    frmDM.qFotoExames.Close;
    frmDM.qFotoExames.SQL.Clear;
    frmDM.qFotoExames.SQL.Add('delete from foto_exame where cod = :cod');
    frmDM.qFotoExames.Parameters.ParamByName('cod').Value:= StrToInt(edCodImagemExame.Text);
    try
      try
        frmDM.qFotoExames.ExecSQL;
        frmDM.Conexao.BeginTrans;
        erro:= false;
      except
        erro:= true;
      end;
    finally
        if erro then
        begin
          Messagedlg('Erro ao excluir registro!', mtError,[mbok],0);
          Atualiza_Foto_Exame;
          frmDM.qFotoExames.GotoBookmark(salvo);
          Preencher_Tabela_FotoExame;
        end else
        begin
          frmDM.Conexao.CommitTrans;

          Atualiza_Foto_Exame;
          Messagedlg('Registro excluido com sucesso!!', mtInformation,[mbok],0);
          Habilita_PaginaControle;

        end;
    end;

    Preencher_Tabela_FotoExame;
    Habilita_Desabilita_Botoes_Foto_Exame;
  end;
end;

procedure TFrmCadAlunos.btApagarMensClick(Sender: TObject);
begin
  Salvo:= frmDM.QMensalidade.GetBookmark;
  If MessageDlg('Deseja realmente excluir a atual MENSALIDADE de ' +#13+#13+ edNome.Text+ '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  Then
  begin

    frmDM.QMensalidade.Close;
    frmDM.QMensalidade.SQL.Clear;
    frmDM.QMensalidade.SQL.Add('delete from mensalidade where codmensalidade = :cod');
    frmDM.QMensalidade.Parameters.ParamByName('cod').Value:= StrToInt(edCodMensalidade.Text);
    try
      try
        frmDM.QMensalidade.ExecSQL;
        frmDM.Conexao.BeginTrans;
        erro:= false;
      except
        erro:= true;
      end;
    finally
        if erro then
        begin
          Messagedlg('Erro ao excluir registro!', mtError,[mbok],0);
          Atualiza_Mensalidade;
          frmDM.QMensalidade.GotoBookmark(salvo);
          Preencher_Tabela_Mensalidade;
        end else
        begin
          frmDM.Conexao.CommitTrans;
          Atualiza_Mensalidade;
          Messagedlg('Registro excluido com sucesso!!', mtInformation,[mbok],0);
          Habilita_PaginaControle;
        end;
    end;

    Preencher_Tabela_Mensalidade;
    Habilita_Desabilita_Botoes_Mensalidade;
    //Verifica_aba;
    //Limpa_Campos_Mensalidade;
  end;
end;

procedure TFrmCadAlunos.BtCancelarAulaClick(Sender: TObject);
begin
  Cabecalho.Enabled:= true;

  frmDM.Conexao.RollbackTrans;
  Atualiza_aula;
  Atualiza_UltimasAula;
  Desabilita_Campos_Mensalidade;
  Habilita_Desabilita_Botoes_Aula;
  btFechar.Enabled:= true;
  tabela_Aula.Enabled:= true;
  novo:= false;
  Habilita_PaginaControle;
  Verifica_aba;
  frmDM.qAula.GotoBookmark(Salvo);
  Preencher_Tabela_Aula;
end;

procedure TFrmCadAlunos.btCancelarAvalClick(Sender: TObject);
begin
  Cabecalho.Enabled:= true;
  frmDM.Conexao.RollbackTrans;
  Atualiza_Avaliacao;
  Desabilita_Campos_Avaliacao;
  Habilita_Desabilita_Botoes_Avaliacao;
  btFechar.Enabled:= true;
  novo:= false;
  Habilita_PaginaControle;
  Verifica_aba;
  frmDM.qAvaliacao.GotoBookmark(Salvo);
  Preencher_Tabela_Avaliacao;
end;

procedure TFrmCadAlunos.btCancelarClick(Sender: TObject);
begin
  frmDM.Conexao.RollbackTrans;
  Limpa_Campos;
  Atualizar_CadastroPrincipal;
  Desabilita_Campos;
  Habilita_Desabilita_Botoes;
  btFechar.Enabled:= true;
  btpesquisar.Enabled:= true;
  tabela_Principal.Enabled:= true;
  novo:= false;
  Habilita_PaginaControle;
  PageControl1.Pages[0].TabVisible:= true;
  Verifica_aba;
  frmDM.QPrincipal.GotoBookmark(salvo);
  Preencher_Tabela;
end;

procedure TFrmCadAlunos.btCancelarMensClick(Sender: TObject);
begin
  Cabecalho.Enabled:= true;
  frmDM.Conexao.RollbackTrans;
  Atualiza_Mensalidade;
  Desabilita_Campos_Mensalidade;
  Habilita_Desabilita_Botoes_Mensalidade;
  btFechar.Enabled:= true;
  tabela_mensalidade.Enabled:= true;
  novo:= false;
  Habilita_PaginaControle;
  //PageControl1.Pages[4].TabVisible:= true;
  Verifica_aba;
  frmDM.QMensalidade.GotoBookmark(Salvo);
  Preencher_Tabela_Mensalidade;
end;

procedure TFrmCadAlunos.btCarregaFotoClick(Sender: TObject);
var
  tamanho: SmallInt;
begin
  if abre.Execute then
  begin
    caminho_foto:= Abre.FileName;
    tamanho:= Length(ExtractFileName(caminho_foto));
    if tamanho > 40 then
      MessageDlg('Nome do arquivo é maior que 40 caracteres. Renomeie o arquivo.',mtError,[mbOK],0)
    else
    begin
      Image2.Picture.LoadFromFile(caminho_foto);
      edCaminhoFotoExame.Text:= caminho_foto;
      edNomeFotoExame.Text:= ExtractFileName(caminho_foto);;
    end;
  end;
end;

procedure TFrmCadAlunos.btCarregarClick(Sender: TObject);
var
  tamanho: SmallInt;
begin
  if abre.Execute then
  begin
    caminho_foto:= Abre.FileName;
    tamanho:= Length(ExtractFileName(caminho_foto));
    if tamanho > 40 then
      MessageDlg('Nome do arquivo é maior que 40 caracteres. Renomeie o arquivo.',mtError,[mbOK],0)
    else
    begin
      Image1.Picture.LoadFromFile(caminho_foto);
      edCaminho.Text:= caminho_foto;
      edNomeArquivo.Text:= ExtractFileName(caminho_foto);
    end;
  end;
end;

procedure TFrmCadAlunos.btEditarAulaClick(Sender: TObject);
begin
  frmDM.Conexao.BeginTrans;
  Habilita_Campos_Aula;
  btPrimeiroAula.Enabled:= false;
  btAnteriorAula.Enabled:= false;
  btProximoAula.Enabled:= false;
  btUltimoAula.Enabled:= false;
  btNovoAula.Enabled:= false;
  btApagarAula.Enabled:= false;
  btEditarAula.Enabled:= false;
  btGravarAula.Enabled:= true;
  btCancelarAula.Enabled:= true;
  btFechar.Enabled:= false;
  tabela_Aula.Enabled:= false;
  Desabilita_PaginaControle;
  PageControl1.Pages[5].TabVisible:= true;
  Cabecalho.Enabled:= false;
  EdDataAula.SetFocus;
  salvo:= frmDM.qAula.GetBookmark;
  novo:= false;
end;

procedure TFrmCadAlunos.btEditarAvalClick(Sender: TObject);
begin
  frmDM.Conexao.BeginTrans;
  Habilita_Campos_Avaliacao;
  btPrimeiroAval.Enabled:= false;
  btAnteriorAval.Enabled:= false;
  btProximoAval.Enabled:= false;
  btUltimoAval.Enabled:= false;
  btNovoAval.Enabled:= false;
  btApagarAval.Enabled:= false;
  btEditarAval.Enabled:= false;
  btGravarAval.Enabled:= true;
  btCancelarAval.Enabled:= true;
  btFechar.Enabled:= false;
  Desabilita_PaginaControle;
  PageControl1.Pages[1].TabVisible:= true;
  Cabecalho.Enabled:= false;
  edProfissao.SetFocus;
  salvo:= frmDM.qAvaliacao.GetBookmark;
  novo:= false;
end;

procedure TFrmCadAlunos.btEditarClick(Sender: TObject);
begin
  frmDM.Conexao.BeginTrans;
  Habilita_Campos;
  cbSituacao.SetFocus;
  btPrimeiro.Enabled:= false;
  btAnterior.Enabled:= false;
  btProximo.Enabled:= false;
  btUltimo.Enabled:= false;
  btNovo.Enabled:= false;
  btApagar.Enabled:= false;
  btEditar.Enabled:= false;
  btGravar.Enabled:= true;
  btCancelar.Enabled:= true;
  btFechar.Enabled:= false;
  btpesquisar.Enabled:= false;
  tabela_Principal.Enabled:= false;
  novo:= false;
  Desabilita_PaginaControle;
  PageControl1.Pages[0].TabVisible:= true;
  NomeAlunoAntigo:= FrmCadAlunos.edNome.Text;
  salvo:= frmDM.QPrincipal.GetBookmark;
  FrmCadAlunos.Height:= 604;
  FrmCadAlunos.Width:= 570;
  FrmCadAlunos.Caption:= 'VIVERE PILATES - Cadastro Principal';
end;

procedure TFrmCadAlunos.btEditarExameClick(Sender: TObject);
begin
  frmDM.Conexao.BeginTrans;
  Habilita_Campos_Exame;
  btPrimeiroExame.Enabled:= false;
  btAnteriorExame.Enabled:= false;
  btProximoExame.Enabled:= false;
  btUltimoExame.Enabled:= false;
  btNovoExame.Enabled:= false;
  btApagarExame.Enabled:= false;
  btEditarExame.Enabled:= false;
  btGravarExame.Enabled:= true;
  btCancelarExame.Enabled:= true;
  btFechar.Enabled:= false;
  Desabilita_PaginaControle;
  PageControl1.Pages[4].TabVisible:= true;
  Cabecalho.Enabled:= false;
  edExame.SetFocus;
  salvo:= frmDM.qExames.GetBookmark;
  novo:= false;
  Desabilita_Botoes_FotoExame;
end;

procedure TFrmCadAlunos.btEditarFotoClick(Sender: TObject);
begin
  frmDM.Conexao.BeginTrans;
  Habilita_Campos_Foto;
  btPrimeiroFoto.Enabled:= false;
  btAnteriorFoto.Enabled:= false;
  btProximoFoto.Enabled:= false;
  btUltimoFoto.Enabled:= false;
  btNovoFoto.Enabled:= false;
  btApagarFoto.Enabled:= false;
  btEditarFoto.Enabled:= false;
  btGravarFoto.Enabled:= true;
  btCancelarFoto.Enabled:= true;
  btFechar.Enabled:= false;
  btCarregar.Enabled:= false;
  TabelaFotos.Enabled:= false;
  Desabilita_PaginaControle;
  PageControl1.Pages[2].TabVisible:= true;
  Cabecalho.Enabled:= false;
  edDataFoto.SetFocus;
  salvo:= frmDM.qFoto.GetBookmark;
  novo:= false;
  btcarregar.Enabled:= true;
end;

procedure TFrmCadAlunos.btEditarFotoExameClick(Sender: TObject);
begin
  frmDM.Conexao.BeginTrans;
  edDataFotoExame.Enabled:= true;
  TabelaFotoExames.Enabled:= false;
  Desabilita_Campos_Exame;
  btPrimeiroFotoExame.Enabled:= false;
  btAnteriorFotoExame.Enabled:= false;
  btProximoFotoExame.Enabled:= false;
  btUltimoFotoExame.Enabled:= false;
  btNovoFotoExame.Enabled:= false;
  btApagarFotoExame.Enabled:= false;
  btEditarFotoExame.Enabled:= false;
  btGravarFotoExame.Enabled:= true;
  btCancelarFotoExame.Enabled:= true;
  btFechar.Enabled:= false;
  Desabilita_PaginaControle;
  PageControl1.Pages[4].TabVisible:= true;
  Cabecalho.Enabled:= false;
  edDataFotoExame.SetFocus;
  salvo:= frmDM.qFotoExames.GetBookmark;
  novo:= false;
  Desabilita_BotoesExame;
end;

procedure TFrmCadAlunos.btEditarMensClick(Sender: TObject);
begin
  frmDM.Conexao.BeginTrans;
  Habilita_Campos_Mensalidade;
  btPrimeiroMens.Enabled:= false;
  btAnteriorMens.Enabled:= false;
  btProximoMens.Enabled:= false;
  btUltimoMens.Enabled:= false;
  btNovoMens.Enabled:= false;
  btApagarMens.Enabled:= false;
  btEditarMens.Enabled:= false;
  btGravarMens.Enabled:= true;
  btCancelarMens.Enabled:= true;
  btFechar.Enabled:= false;
  tabela_mensalidade.Enabled:= false;
  Desabilita_PaginaControle;
  PageControl1.Pages[3].TabVisible:= true;
  //Barra.Enabled:= false;
  Cabecalho.Enabled:= false;
  edAno.SetFocus;
  salvo:= frmDM.QMensalidade.GetBookmark;
  novo:= false;
end;

procedure TFrmCadAlunos.btGravarAulaClick(Sender: TObject);
begin
  if cbObservacao.Text = '' then
  begin
    MessageDlg('Faltou preencher o campo Observação', mtError, [mbOK], 0);
    cbObservacao.SetFocus;
    exit;
  end;

  if edAnotacoes.Text = '' then
  begin
    MessageDlg('Faltou preencher o campo Anotações', mtError, [mbOK], 0);
    edAnotacoes.SetFocus;
    exit;
  end;

  frmDM.qAula.Close;
  frmDM.qAula.SQL.Clear;

  //novo registro
  if novo then
  begin
    frmDM.qAula.SQL.Add('insert into aula ' +
                             '(codAluno, data_aula, observacao, anotacoes) ' +
                             'values ' +
                             '(:codAluno, :data_aula, :observacao, :anotacoes)');
  end else
  //atualizar
  begin
    frmDM.qAula.SQL.Add('update aula set ' +
                             'codAluno = :codAluno, ' +
                             'data_aula = :data_aula, ' +
                             'observacao = :observacao, ' +
                             'anotacoes = :anotacoes ' +
                             'where cod = :cod ' );
  end;

  //passagem de parametros
  if not novo then
    frmDM.qAula.Parameters.ParamByName('cod').Value:= edCodigoAula.Text;
  frmDM.qAula.Parameters.ParamByName('codAluno').Value:= EdCodigo.Text;
  frmDM.qAula.Parameters.ParamByName('data_aula').Value := EdDataAula.DateTime;
  frmDM.qAula.Parameters.ParamByName('observacao').Value:= cbObservacao.Text;
  frmDM.qAula.Parameters.ParamByName('anotacoes').Value:= edAnotacoes.Text;

  try
    try
      frmDM.qAula.ExecSQL;
      erro:= false;
    except
        erro:= true;
    end;
  finally
        if erro then
        begin
          if novo then
            Messagedlg('Erro ao cadastrar Aula', mtError,[mbok],0)
          else
            Messagedlg('Erro ao atualizar Aula', mtError,[mbok],0);

          frmDM.Conexao.RollbackTrans;
          Atualiza_aula;
          Habilita_Desabilita_Botoes_Aula;
        end else
        begin
          frmDM.Conexao.CommitTrans;
          Atualiza_aula;
          Habilita_Desabilita_Botoes_Aula;
          frmDM.qAula.GotoBookmark(Salvo);
          if novo then
            Messagedlg('Aula cadastrada com sucesso!', mtInformation,[mbok],0)
          else
          begin
            Messagedlg('Cadastro de aula atualizado com sucesso!', mtInformation,[mbok],0);

          end;
        end;

        Habilita_PaginaControle;
        Cabecalho.Enabled:= true;
        tabela_Aula.Enabled:= true;
        Desabilita_Campos_Aula;
        Preencher_Tabela_Aula;
  end;
end;

procedure TFrmCadAlunos.btGravarAvalClick(Sender: TObject);
begin
  frmDM.qAvaliacao.Close;
  frmDM.qAvaliacao.SQL.Clear;
  //novo registro
  if novo then
  begin
    frmDM.qAvaliacao.SQL.Add('insert into avaliacao ' +
                             '(CODALUNO,PROFISSAO,INDICACAO,ATIVIDADEFISICA,QUALATIVIDADEFISICA,MEDICACAO, '+
                             'TABAGISMO,ETILISMO,HIPERTENSAO,DOENCAS,DORES,POSICAODOR,OBJETIVOPRINCIPAL, '+
                             'QUEIXAPRINCIPAL,HDA,HPP,PESO,ALTURA,PA,ENCURTAMENTOS,FORCAMUSCULAR,PES, '+
                             'JOELHOS,PELVE,COLUNA,OMBROS,ESCAPULAS,CABECA) '+
                             'values ' +
                             '(:CODALUNO,:PROFISSAO,:INDICACAO,:ATIVIDADEFISICA,:QUALATIVIDADEFISICA,:MEDICACAO, '+
                             ':TABAGISMO,:ETILISMO,:HIPERTENSAO,:DOENCAS,:DORES,:POSICAODOR,:OBJETIVOPRINCIPAL, '+
                             ':QUEIXAPRINCIPAL,:HDA,:HPP,:PESO,:ALTURA,:PA,:ENCURTAMENTOS,:FORCAMUSCULAR,:PES, '+
                             ':JOELHOS,:PELVE,:COLUNA,:OMBROS,:ESCAPULAS,:CABECA) ');
  end else
  //atualizar
  begin
    frmDM.qAvaliacao.SQL.Add('update avaliacao set ' +
                             'CODALUNO = :CODALUNO, '+
                             'PROFISSAO = :PROFISSAO, '+
                             'INDICACAO = :INDICACAO, '+
                             'ATIVIDADEFISICA = :ATIVIDADEFISICA, '+
                             'QUALATIVIDADEFISICA = :QUALATIVIDADEFISICA, '+
                             'MEDICACAO = :MEDICACAO, '+
                             'TABAGISMO = :TABAGISMO, '+
                             'ETILISMO = :ETILISMO, '+
                             'HIPERTENSAO = :HIPERTENSAO, '+
                             'DOENCAS = :DOENCAS, '+
                             'DORES = :DORES, '+
                             'POSICAODOR = :POSICAODOR, '+
                             'OBJETIVOPRINCIPAL = :OBJETIVOPRINCIPAL, '+
                             'QUEIXAPRINCIPAL = :QUEIXAPRINCIPAL, '+
                             'HDA = :HDA, '+
                             'HPP = :HPP, '+
                             'PESO = :PESO, '+
                             'ALTURA = :ALTURA, '+
                             'PA = :PA, '+
                             'ENCURTAMENTOS = :ENCURTAMENTOS, '+
                             'FORCAMUSCULAR = :FORCAMUSCULAR, '+
                             'PES = :PES, '+
                             'JOELHOS = :JOELHOS, '+
                             'PELVE = :PELVE, '+
                             'COLUNA = :COLUNA, '+
                             'OMBROS = :OMBROS, '+
                             'ESCAPULAS = :ESCAPULAS, '+
                             'CABECA = :CABECA '+
                             'where cod = :cod ' );
  end;

  //passagem de parametros
  if not novo then
    frmDM.qAvaliacao.Parameters.ParamByName('cod').Value:= edCodAvaliacao.Text;

  frmDM.qAvaliacao.Parameters.ParamByName('codAluno').Value:= EdCodigo.Text;
  frmDM.qAvaliacao.Parameters.ParamByName('PROFISSAO').Value:= edProfissao.Text;
  frmDM.qAvaliacao.Parameters.ParamByName('INDICACAO').Value:= edIndicacao.Text;
  frmDM.qAvaliacao.Parameters.ParamByName('ATIVIDADEFISICA').Value:= cbAtividadeFisica.Text;
  frmDM.qAvaliacao.Parameters.ParamByName('QUALATIVIDADEFISICA').Value:= edQualAtividadeFisica.Text;
  frmDM.qAvaliacao.Parameters.ParamByName('MEDICACAO').Value:= edMedicacao.Text;
  frmDM.qAvaliacao.Parameters.ParamByName('TABAGISMO').Value:= cbTabagismo.Text;
  frmDM.qAvaliacao.Parameters.ParamByName('ETILISMO').Value:= cbEtilismo.Text;
  frmDM.qAvaliacao.Parameters.ParamByName('HIPERTENSAO').Value:= cbHipertensao.Text;
  frmDM.qAvaliacao.Parameters.ParamByName('DOENCAS').Value:= edDoencas.Text;
  frmDM.qAvaliacao.Parameters.ParamByName('DORES').Value:= edDoencas.Text;
  frmDM.qAvaliacao.Parameters.ParamByName('POSICAODOR').Value:= edPosicaoDor.Text;
  frmDM.qAvaliacao.Parameters.ParamByName('OBJETIVOPRINCIPAL').Value:= edObjetivoPrincipal.Text;
  frmDM.qAvaliacao.Parameters.ParamByName('QUEIXAPRINCIPAL').Value:= edQueixaPrincipal.Text;
  frmDM.qAvaliacao.Parameters.ParamByName('HDA').Value:= edHDA.Text;
  frmDM.qAvaliacao.Parameters.ParamByName('HPP').Value:= edHPP.Text;

  frmDM.qAvaliacao.Parameters.ParamByName('PESO').Value:= StrToFloat(edPeso.Text);
  frmDM.qAvaliacao.Parameters.ParamByName('ALTURA').Value:= StrToFloat(edAltura.Text);

  frmDM.qAvaliacao.Parameters.ParamByName('PA').Value:= edPA.Text;
  frmDM.qAvaliacao.Parameters.ParamByName('ENCURTAMENTOS').Value:= edEncurtamentos.Text;
  frmDM.qAvaliacao.Parameters.ParamByName('FORCAMUSCULAR').Value:= edForcaMuscular.Text;
  frmDM.qAvaliacao.Parameters.ParamByName('PES').Value:= edPes.Text;
  frmDM.qAvaliacao.Parameters.ParamByName('JOELHOS').Value:= edJoelhos.Text;
  frmDM.qAvaliacao.Parameters.ParamByName('PELVE').Value:= edPelve.Text;
  frmDM.qAvaliacao.Parameters.ParamByName('COLUNA').Value:= edColuna.Text;
  frmDM.qAvaliacao.Parameters.ParamByName('OMBROS').Value:= edOmbro.Text;
  frmDM.qAvaliacao.Parameters.ParamByName('ESCAPULAS').Value:= edEscapulas.Text;
  frmDM.qAvaliacao.Parameters.ParamByName('CABECA').Value:= edCabeca.Text;

  try
    try
      frmDM.qAvaliacao.ExecSQL;
      erro:= false;
    except
        erro:= true;
    end;
  finally
        if erro then
        begin
          if novo then
            Messagedlg('Erro ao cadastrar Avaliação', mtError,[mbok],0)
          else
            Messagedlg('Erro ao atualizar Avaliação', mtError,[mbok],0);
          frmDM.Conexao.RollbackTrans;
          Atualiza_Avaliacao;
          Habilita_Desabilita_Botoes_Avaliacao;
        end else
        begin
          frmDM.Conexao.CommitTrans;
          Atualiza_Avaliacao;
          Habilita_Desabilita_Botoes_Avaliacao;
          frmDM.qAvaliacao.GotoBookmark(Salvo);
          if novo then
          begin
            Messagedlg('Avaliação cadastrada com sucesso!', mtInformation,[mbok],0);
            frmDM.qAvaliacao.Last;
          end
          else
          begin
            Messagedlg('Cadastro de avaliação atualizado com sucesso!', mtInformation,[mbok],0);
          end;
        end;

        Habilita_PaginaControle;
        Cabecalho.Enabled:= true;
        Desabilita_Campos_Avaliacao;
        Preencher_Tabela_Avaliacao;

  end;
end;

procedure TFrmCadAlunos.btGravarClick(Sender: TObject);
begin
  if edNome.Text = '' then
  begin
    Messagedlg('Pelo menos o nome do aluno deve ser preenchido!', mtError,[mbok],0);
    exit
  end;
  NomeAlunoAtual:= FrmCadAlunos.edNome.Text;

  frmDM.QPrincipal.Close;
  frmDM.QPrincipal.SQL.Clear;

  //novo registro
  if novo then
  begin
    frmDM.QPrincipal.SQL.Add('insert into cad_alunos_principal ' +
                             '(nome, telefone, data_nascimento, cpf, endereco, email, situacao, telefone2) ' +
                             'values ' +
                             '(:nome, :telefone, :data_nascimento, :cpf, :endereco, :email, :situacao, :telefone2)');
  end else
  //atualizar
  begin
    frmDM.QPrincipal.SQL.Add('update cad_alunos_principal set ' +
                             'nome = :nome, ' +
                             'telefone = :telefone, ' +
                             'data_nascimento = :data_nascimento, ' +
                             'cpf = :cpf, ' +
                             'endereco = :endereco, ' +
                             'email = :email, ' +
                             'situacao = :situacao, ' +
                             'telefone2 = :telefone2 ' +
                             'where cod = :cod ' );
  end;

  //passagem de parametros
  if not novo then
    frmDM.QPrincipal.Parameters.ParamByName('cod').Value:= EdCodigo.Text;
  frmDM.QPrincipal.Parameters.ParamByName('nome').Value:= edNome.Text;
  frmDM.QPrincipal.Parameters.ParamByName('telefone').Value:= edCelular.Text;
  frmDM.QPrincipal.Parameters.ParamByName('data_nascimento').Value:= edData_nascimento.DateTime;
  frmDM.QPrincipal.Parameters.ParamByName('cpf').Value:= edCPF.Text;
  frmDM.QPrincipal.Parameters.ParamByName('endereco').Value:= edEndereco.Text;
  frmDM.QPrincipal.Parameters.ParamByName('email').Value:= edEmail.Text;
  frmDM.QPrincipal.Parameters.ParamByName('situacao').Value:= cbSituacao.Text;
  frmDM.QPrincipal.Parameters.ParamByName('telefone2').Value:= edTelefone.Text;

  try
    try
      frmDM.QPrincipal.ExecSQL;
      erro:= false;
    except
        erro:= true;
    end;
  finally
        if erro then
        begin
          if novo then
            Messagedlg('Erro ao cadastrar novo aluno', mtError,[mbok],0)
          else
            Messagedlg('Erro ao atualizar cadastro', mtError,[mbok],0);
          frmDM.Conexao.RollbackTrans;
          Atualizar_CadastroPrincipal;
        end else
        begin
          frmDM.Conexao.CommitTrans;
          Atualizar_CadastroPrincipal;
          if novo then
            Messagedlg('Aluno(a) ' +#13+#13 +edNome.Text+ #13+#13+' cadastrado(a) com sucesso!', mtInformation,[mbok],0)
          else
          begin
            Messagedlg('Cadastro aluno '+#13+#13 +edNome.Text+ #13#13+' atualizado com sucesso!', mtInformation,[mbok],0);
            {*
            //verifica se alterou o nome no aluno. caso tenha alterado, atualiza o nome
            //do aluno na tabela foto
            frmDM.qAlunos.Close;
            frmDM.qAlunos.SQL.Clear;
            frmDM.qAlunos.SQL.Add('select * from foto where codaluno = '+EdCodigo.Text+'');
            frmDM.qAlunos.Open;
            if (NomeAlunoAtual <> NomeAlunoAntigo) and (frmDM.qAlunos.RecordCount <> 0) then
            begin
              frmDM.qAlunos.Close;
              frmDM.qAlunos.SQL.Clear;
              //frmDM.qAlunos.SQL.Add('update foto set aluno = '''+NomeAlunoAtual+''' where aluno = '''+NomeAlunoAntigo+''' and codaluno = '+EdCodigo.Text+'');
              frmDM.qAlunos.SQL.Add('update foto set aluno = '''+NomeAlunoAtual+''' where codaluno = '+EdCodigo.Text+'');
              frmDM.qAlunos.ExecSQL;

              messagedlg(IntToStr(frmDM.qAlunos.RowsAffected)+ ' nome(s) alterado(s) nos registros de FOTOS' +#13 + #13
              +'- de ' + NomeAlunoAntigo + #13
              +'- para '+ NomeAlunoAtual ,mtInformation,[mbok],0);
            end;*}
          end;

        end;
        Habilita_PaginaControle;
  end;

  Desabilita_Campos;
  Limpa_Campos;
  Atualizar_CadastroPrincipal;

  Habilita_Desabilita_Botoes;
  btFechar.Enabled:= true;
  btpesquisar.Enabled:= true;

  tabela_Principal.Enabled:= true;
  Verifica_aba;

  if novo then
    frmDM.QPrincipal.Last
  else
    frmDM.QPrincipal.GotoBookmark(salvo);
  Preencher_Tabela;
  novo:= false;
end;

procedure TFrmCadAlunos.btGravarExameClick(Sender: TObject);
begin
  if edExame.Text = '' then
  begin
    MessageDlg('Faltou preencher o campo Exames', mtError, [mbOK], 0);
    edExame.SetFocus;
    exit;
  end;

  if edObservacao.Text = '' then
  begin
    MessageDlg('Faltou preencher o campo Observações', mtError, [mbOK], 0);
    edObservacao.SetFocus;
    exit;
  end;

  frmDM.qExames.Close;
  frmDM.qExames.SQL.Clear;

  //novo registro
  if novo then
  begin
    frmDM.qExames.SQL.Add('insert into exames ' +
                          '(codAluno, exames, observacoes) ' +
                          'values ' +
                          '(:codAluno, :exames, :observacoes)');
  end else
  //atualizar
  begin
    frmDM.qExames.SQL.Add('update exames set ' +
                          'codAluno = :codAluno, ' +
                          'exames = :exames, ' +
                          'observacoes = :observacoes ' +
                          'where codExame = :codExame ' );
  end;

  //passagem de parametros
  if not novo then
    frmDM.qExames.Parameters.ParamByName('codExame').Value:= edCodigoExame.Text;
  frmDM.qExames.Parameters.ParamByName('codAluno').Value:= EdCodigo.Text;
  frmDM.qExames.Parameters.ParamByName('Exames').Value:= edExame.Text;
  frmDM.qExames.Parameters.ParamByName('observacoes').Value:= edObservacao.Text;

  try
    try
      frmDM.qExames.ExecSQL;
      erro:= false;
    except
        erro:= true;
    end;
  finally
        if erro then
        begin
          if novo then
            Messagedlg('Erro ao cadastrar Exame Complementar', mtError,[mbok],0)
          else
            Messagedlg('Erro ao atualizar Exame Complementar', mtError,[mbok],0);
          frmDM.Conexao.RollbackTrans;
          Habilita_Desabilita_Botoes_Exame;
        end else
        begin
          frmDM.Conexao.CommitTrans;
          Atualiza_Exame;
          Habilita_Desabilita_Botoes_Exame;
          if novo then
          begin
            Messagedlg('Exame Complementar cadastrado com sucesso!', mtInformation,[mbok],0);
            frmDM.qExames.Last;

          end
          else
          begin
            Messagedlg('Cadastro de Exame Complementar atualizado com sucesso!', mtInformation,[mbok],0);
            //Habilita_Desabilita_Botoes_Exame;
            frmDM.qExames.GotoBookmark(Salvo);
          end;
        end;

        Habilita_PaginaControle;
        Cabecalho.Enabled:= true;
        Desabilita_Campos_Exame;
        Preencher_Tabela_Exame;
        Preencher_Tabela_FotoExame;
        //Habilita_Desabilita_Botoes_Exame;
        Habilita_Desabilita_Botoes_Foto_Exame;
        Atualiza_Foto_Exame;
  end;
end;

procedure TFrmCadAlunos.btGravarFotoClick(Sender: TObject);
begin
  if (edNomeArquivo.Text = '') or (edCaminho.Text = '') then
  begin
    MessageDlg('Nenhuma imagem foi carregada', mtError, [mbOK], 0);
    btCarregar.SetFocus;
    exit;
  end;

  frmDM.qFoto.Close;
  frmDM.qFoto.SQL.Clear;

  //novo registro
  if novo then
  begin
    frmDM.qFoto.SQL.Add('insert into foto ' +
                             '(codAluno, data_foto, nomefoto, caminho) ' +
                             'values ' +
                             '(:codAluno, :data_foto, :nomefoto, :caminho)');
  end else
  //atualizar
  begin
    frmDM.qFoto.SQL.Add('update foto set ' +
                             'codAluno = :codAluno, ' +
                             'data_foto = :data_foto, ' +
                             'nomefoto = :nomefoto, ' +
                             'caminho = :caminho ' +
                             'where cod = :cod ' );
  end;

  //passagem de parametros
  if not novo then
    frmDM.qFoto.Parameters.ParamByName('cod').Value:= edCodigoFoto.Text;
  frmDM.qFoto.Parameters.ParamByName('codAluno').Value:= EdCodigo.Text;
  frmDM.qFoto.Parameters.ParamByName('data_foto').Value:= edDataFoto.DateTime;
  frmDM.qFoto.Parameters.ParamByName('nomefoto').Value:= edNomeArquivo.Text;
  frmDM.qFoto.Parameters.ParamByName('caminho').Value:= edCaminho.Text;

  try
    try
      frmDM.qFoto.ExecSQL;
      erro:= false;
    except
        erro:= true;
    end;
  finally
        if erro then
        begin
          if novo then
            Messagedlg('Erro ao cadastrar Foto de Acompanhamento', mtError,[mbok],0)
          else
            Messagedlg('Erro ao atualizar Foto de Acompanhamento', mtError,[mbok],0);
          frmDM.Conexao.RollbackTrans;
          Atualiza_Foto;
          Habilita_Desabilita_Botoes_Foto;
        end else
        begin
          frmDM.Conexao.CommitTrans;
          Atualiza_Foto;
          Habilita_Desabilita_Botoes_Foto;
          frmDM.qFoto.GotoBookmark(Salvo);
          if novo then
            Messagedlg('Foto cadastrada com sucesso!', mtInformation,[mbok],0)
          else
          begin
            Messagedlg('Cadastro de Fotos atualizado com sucesso!', mtInformation,[mbok],0);
          end;
        end;

        Habilita_PaginaControle;
        Cabecalho.Enabled:= true;
        //Habilita_Desabilita_Botoes_Foto;
        TabelaFotos.Enabled:= true;
        Desabilita_Campos_Foto;
        Preencher_Tabela_Foto;

        btCarregar.Enabled:= false;
  end;

end;

procedure TFrmCadAlunos.btGravarFotoExameClick(Sender: TObject);
begin
  if (edNomeFotoExame.Text = '') or (edCaminhoFotoExame.Text = '') then
  begin
    MessageDlg('Nenhuma imagem foi carregada!', mtError, [mbOK], 0);
    btCarregar.SetFocus;
    exit;
  end;

  frmDM.qFotoExames.Close;
  frmDM.qFotoExames.SQL.Clear;

  //novo registro
  if novo then
  begin
    frmDM.qFotoExames.SQL.Add('insert into foto_exame ' +
                             '(codExame, data_foto_exame, nomefoto, caminho) ' +
                             'values ' +
                             '(:codExame, :data_foto_exame, :nomefoto, :caminho)');
  end else
  //atualizar
  begin
    frmDM.qFotoExames.SQL.Add('update foto_exame set ' +
                             'codExame = :codExame, ' +
                             'data_foto_exame = :data_foto_Exame, ' +
                             'nomefoto = :nomefoto, ' +
                             'caminho = :caminho ' +
                             'where cod = :cod ' );
  end;

  //passagem de parametros
  if not novo then
    frmDM.qFotoExames.Parameters.ParamByName('cod').Value:= edCodImagemExame.Text;
  frmDM.qFotoExames.Parameters.ParamByName('codExame').Value:= edCodigoExame.Text;
  frmDM.qFotoExames.Parameters.ParamByName('data_foto_Exame').Value:= edDataFotoExame.DateTime;
  frmDM.qFotoExames.Parameters.ParamByName('nomefoto').Value:= edNomeFotoExame.Text;
  frmDM.qFotoExames.Parameters.ParamByName('caminho').Value:= edCaminhoFotoExame.Text;

  try
    try
      frmDM.qFotoExames.ExecSQL;
      erro:= false;
    except
        erro:= true;
    end;
  finally
        if erro then
        begin
          if novo then
            Messagedlg('Erro ao cadastrar Imagem de Exame Complementar!', mtError,[mbok],0)
          else
            Messagedlg('Erro ao atualizar Cadastro de Imagem de Exame Complementar!', mtError,[mbok],0);
          frmDM.Conexao.RollbackTrans;
          Atualiza_Foto_Exame;
          Habilita_Desabilita_Botoes_Foto_Exame;
        end else
        begin
          frmDM.Conexao.CommitTrans;
          Atualiza_Foto_Exame;
          Habilita_Desabilita_Botoes_Foto_Exame;
          Preencher_Tabela_FotoExame;
          if novo then
            Messagedlg('Imagem de Exame Complementar cadastrada com sucesso!', mtInformation,[mbok],0)
          else
          begin
            Messagedlg('Cadastro de Imagem de Exame Complementar atualizado com sucesso!', mtInformation,[mbok],0);
          end;
        end;

        Habilita_PaginaControle;
        Cabecalho.Enabled:= true;
        TabelaFotoExames.Enabled:= true;
        edDataFotoExame.Enabled:= false;
        Habilita_Desabilita_Botoes_Exame;
        frmDM.qFotoExames.GotoBookmark(Salvo);
  end;
end;

procedure TFrmCadAlunos.btGravarMensClick(Sender: TObject);
begin
  if edAno.Text = '' then
  begin
    MessageDlg('Faltou preencher o campo Ano!', mtError, [mbOK], 0);
    edAno.SetFocus;
    exit;
  end;

  if cbMes.Text = '' then
  begin
    MessageDlg('Faltou preencher o campo Mês de Referência!', mtError, [mbOK], 0);
    cbMes.SetFocus;
    exit;
  end;

  if edValor.Text = '' then
  begin
    MessageDlg('Faltou preencher o campo Valor', mtError, [mbOK], 0);
    edValor.SetFocus;
    exit;
  end;

  if cbPago.Text = '' then
  begin
    MessageDlg('Faltou preencher o campo Pago', mtError, [mbOK], 0);
    cbPago.SetFocus;
    exit;
  end;

  if cbVisualizar.Text = '' then
  begin
    MessageDlg('Faltou preencher o campo Visualizar', mtError, [mbOK], 0);
    cbVisualizar.SetFocus;
    exit;
  end;

  frmDM.QMensalidade.Close;
  frmDM.QMensalidade.SQL.Clear;

  //novo registro
  if novo then
  begin
    frmDM.QMensalidade.SQL.Add('insert into mensalidade ' +
                             '(codAluno, pago, data_mensalidade, mes, ano, valor, visualizar) ' +
                             'values ' +
                             '(:codAluno, :pago, :data_mensalidade, :mes, :ano, :valor, :visualizar)');
  end else
  //atualizar
  begin
    frmDM.QMensalidade.SQL.Add('update mensalidade set ' +
                             'codAluno = :codAluno, ' +
                             'pago = :pago, ' +
                             'data_mensalidade = :data_mensalidade, ' +
                             'mes = :mes, ' +
                             'ano = :ano, ' +
                             'valor = :valor, ' +
                             'visualizar = :visualizar ' +
                             'where codMensalidade = :codMensalidade ' );
  end;

  //passagem de parametros
  if not novo then
    frmDM.QMensalidade.Parameters.ParamByName('codMensalidade').Value:= edCodMensalidade.Text;
  frmDM.QMensalidade.Parameters.ParamByName('codAluno').Value:= EdCodigo.Text;
  frmDM.QMensalidade.Parameters.ParamByName('pago').Value:= cbPago.Text;
  frmDM.QMensalidade.Parameters.ParamByName('data_mensalidade').Value:= edDataMensalidade.DateTime;
  frmDM.QMensalidade.Parameters.ParamByName('mes').Value:= cbMes.Text;
  frmDM.QMensalidade.Parameters.ParamByName('ano').Value:= edAno.Text;
  frmDM.QMensalidade.Parameters.ParamByName('valor').Value:= StrTofloat(edValor.Text);
  frmDM.QMensalidade.Parameters.ParamByName('visualizar').Value:= cbVisualizar.Text;

  try
    try
      frmDM.QMensalidade.ExecSQL;
      erro:= false;
    except
        erro:= true;
    end;
  finally
        if erro then
        begin
          if novo then
            Messagedlg('Erro ao cadastrar Mensalidade', mtError,[mbok],0)
          else
            Messagedlg('Erro ao atualizar Mensalidade', mtError,[mbok],0);

          frmDM.Conexao.RollbackTrans;
          Atualiza_Mensalidade;
          Habilita_Desabilita_Botoes_Mensalidade;
        end else
        begin
          frmDM.Conexao.CommitTrans;
          Atualiza_Mensalidade;
          Habilita_Desabilita_Botoes_Mensalidade;
          frmDM.QMensalidade.GotoBookmark(Salvo);
          if novo then
            Messagedlg('Mensalidade cadastrada com sucesso!', mtInformation,[mbok],0)
          else
          begin
            Messagedlg('Cadastro de mensalidade atualizado com sucesso!', mtInformation,[mbok],0);
          end;
        end;

        Habilita_PaginaControle;
        Cabecalho.Enabled:= true;
        tabela_mensalidade.Enabled:= true;
        Desabilita_Campos_Mensalidade;
        Preencher_Tabela_Mensalidade;
  end;
end;

procedure TFrmCadAlunos.btNovoAulaClick(Sender: TObject);
begin
  frmDM.Conexao.BeginTrans;
  Habilita_Campos_Aula;
  btPrimeiroAula.Enabled:= false;
  btAnteriorAula.Enabled:= false;
  btProximoAula.Enabled:= false;
  btUltimoAula.Enabled:= false;
  btNovoAula.Enabled:= false;
  btApagarAula.Enabled:= false;
  btEditarAula.Enabled:= false;
  btGravarAula.Enabled:= true;
  btCancelarAula.Enabled:= true;
  Cabecalho.Enabled:= false;
  tabela_Aula.Enabled:= false;
  novo:= true;
  Desabilita_PaginaControle;
  PageControl1.Pages[5].TabVisible:= true;
  Limpa_Campos_Aula;
  EdDataAula.SetFocus;
end;

procedure TFrmCadAlunos.btNovoAvalClick(Sender: TObject);
begin
  frmDM.Conexao.BeginTrans;
  Habilita_Campos_Avaliacao;
  btPrimeiroAval.Enabled:= false;
  btAnteriorAval.Enabled:= false;
  btProximoAval.Enabled:= false;
  btUltimoAval.Enabled:= false;
  btNovoAval.Enabled:= false;
  btApagarAval.Enabled:= false;
  btEditarAval.Enabled:= false;
  btGravarAval.Enabled:= true;
  btCancelarAval.Enabled:= true;
  Cabecalho.Enabled:= false;
  novo:= true;
  Desabilita_PaginaControle;
  PageControl1.Pages[1].TabVisible:= true;
  Limpa_Campos_Avaliacao;
  edProfissao.SetFocus;
end;

procedure TFrmCadAlunos.btNovoClick(Sender: TObject);
begin
  frmDM.Conexao.BeginTrans;
  Habilita_Campos;
  //Limpa_Campos;
  //Habilita_Desabilita_Botoes;
  cbSituacao.SetFocus;
  //cbSituacao.ItemIndex:= 0;
  btPrimeiro.Enabled:= false;
  btAnterior.Enabled:= false;
  btProximo.Enabled:= false;
  btUltimo.Enabled:= false;
  btNovo.Enabled:= false;
  btApagar.Enabled:= false;
  btEditar.Enabled:= false;
  btGravar.Enabled:= true;
  btCancelar.Enabled:= true;
  btFechar.Enabled:= false;
  btpesquisar.Enabled:= false;
  tabela_Principal.Enabled:= false;
  novo:= true;
  Desabilita_PaginaControle;
  PageControl1.Pages[0].TabVisible:= true;
  Limpa_Campos;
  FrmCadAlunos.Height:= 604;
  FrmCadAlunos.Width:= 570;
  FrmCadAlunos.Caption:= 'VIVERE PILATES - Cadastro Principal';
end;

procedure TFrmCadAlunos.btNovoExameClick(Sender: TObject);
begin
  frmDM.Conexao.BeginTrans;
  Habilita_Campos_Exame;
  btPrimeiroExame.Enabled:= false;
  btAnteriorExame.Enabled:= false;
  btProximoExame.Enabled:= false;
  btUltimoExame.Enabled:= false;
  btNovoExame.Enabled:= false;
  btApagarExame.Enabled:= false;
  btEditarExame.Enabled:= false;
  btGravarExame.Enabled:= true;
  btCancelarExame.Enabled:= true;
  Cabecalho.Enabled:= false;
  novo:= true;
  Desabilita_PaginaControle;
  PageControl1.Pages[4].TabVisible:= true;
  Limpa_Campos_Exame;
  edExame.SetFocus;

  Desabilita_Botoes_FotoExame;
end;

procedure TFrmCadAlunos.btNovoFotoClick(Sender: TObject);
begin
  frmDM.Conexao.BeginTrans;
  Habilita_Campos_Foto;
  btPrimeiroFoto.Enabled:= false;
  btAnteriorFoto.Enabled:= false;
  btProximoFoto.Enabled:= false;
  btUltimoFoto.Enabled:= false;
  btNovoFoto.Enabled:= false;
  btApagarFoto.Enabled:= false;
  btEditarFoto.Enabled:= false;
  btGravarFoto.Enabled:= true;
  btCancelarFoto.Enabled:= true;
  Cabecalho.Enabled:= false;
  TabelaFotos.Enabled:= false;
  novo:= true;
  Desabilita_PaginaControle;
  PageControl1.Pages[2].TabVisible:= true;
  Limpa_Campos_Foto;
  edDataFoto.Date:= now;
  edDataFoto.SetFocus;
  lbFoto.Caption:= '';
end;

procedure TFrmCadAlunos.btNovoFotoExameClick(Sender: TObject);
begin
  frmDM.Conexao.BeginTrans;

  btCarregaFoto.Enabled:= true;
  edDataFotoExame.Enabled:= true;
  TabelaFotoExames.Enabled:= false;
  Desabilita_Campos_Exame;

  Desabilita_BotoesExame;

  btPrimeiroFotoExame.Enabled:= false;
  btAnteriorFotoExame.Enabled:= false;
  btProximoFotoExame.Enabled:= false;
  btUltimoFotoExame.Enabled:= false;
  btNovoFotoExame.Enabled:= false;
  btApagarFotoExame.Enabled:= false;
  btEditarFotoExame.Enabled:= false;
  btGravarFotoExame.Enabled:= true;
  btCancelarFotoExame.Enabled:= true;
  Cabecalho.Enabled:= false;
  novo:= true;
  Desabilita_PaginaControle;
  PageControl1.Pages[4].TabVisible:= true;
  Limpa_Campos_FotoExame;
  edDataFotoExame.SetFocus;
  lbFotoExame.Caption:= '';
end;

procedure   TFrmCadAlunos.btNovoMensClick(Sender: TObject);
begin
  frmDM.Conexao.BeginTrans;
  Habilita_Campos_Mensalidade;
  btPrimeiroMens.Enabled:= false;
  btAnteriorMens.Enabled:= false;
  btProximoMens.Enabled:= false;
  btUltimoMens.Enabled:= false;
  btNovoMens.Enabled:= false;
  btApagarMens.Enabled:= false;
  btEditarMens.Enabled:= false;
  btGravarMens.Enabled:= true;
  btCancelarMens.Enabled:= true;
  Cabecalho.Enabled:= false;
  tabela_mensalidade.Enabled:= false;
  novo:= true;
  Desabilita_PaginaControle;
  PageControl1.Pages[3].TabVisible:= true;
  Limpa_Campos_Mensalidade;
  //edDataMensalidade.Date:= now;
  edAno.SetFocus;
end;

procedure TFrmCadAlunos.btPesquisarClick(Sender: TObject);
begin
  frmPesquisarAluno.ShowModal;
end;

procedure TFrmCadAlunos.btPrimeiroAulaClick(Sender: TObject);
begin
  frmDM.qAula.First;
  btPrimeiroAula.Enabled:= false;
  btAnteriorAula.Enabled:= false;
  btProximoAula.Enabled:= true;
  btUltimoAula.Enabled:= true;
  Preencher_Tabela_Aula;
end;

procedure TFrmCadAlunos.btPrimeiroAvalClick(Sender: TObject);
begin
  frmDM.qAvaliacao.First;
  btPrimeiroAval.Enabled:= false;
  btAnteriorAval.Enabled:= false;
  btProximoAval.Enabled:= true;
  btUltimoAval.Enabled:= true;
  Preencher_Tabela_Avaliacao;
end;

procedure TFrmCadAlunos.btPrimeiroClick(Sender: TObject);
begin
  frmDM.QPrincipal.First;
  btPrimeiro.Enabled:= false;
  btAnterior.Enabled:= false;
  btProximo.Enabled:= true;
  btUltimo.Enabled:= true;
  Preencher_Tabela;
  Verifica_aba;
  Atualizar_Tudo;
end;

procedure TFrmCadAlunos.btPrimeiroExameClick(Sender: TObject);
begin
  frmDM.qExames.First;
  btPrimeiroexame.Enabled:= false;
  btAnteriorexame.Enabled:= false;
  btProximoexame.Enabled:= true;
  btUltimoexame.Enabled:= true;
  Preencher_Tabela_Exame;
  Atualiza_Foto_Exame;
end;

procedure TFrmCadAlunos.btPrimeiroFotoClick(Sender: TObject);
begin
  frmDM.qFoto.First;
  btPrimeiroFoto.Enabled:= false;
  btAnteriorFoto.Enabled:= false;
  btProximoFoto.Enabled:= true;
  btUltimoFoto.Enabled:= true;
  Preencher_Tabela_Foto;
end;

procedure TFrmCadAlunos.btPrimeiroFotoExameClick(Sender: TObject);
begin
  frmDM.qFotoExames.First;
  btPrimeiroFotoExame.Enabled:= false;
  btAnteriorFotoExame.Enabled:= false;
  btProximoFotoExame.Enabled:= true;
  btUltimoFotoExame.Enabled:= true;
  Preencher_Tabela_FotoExame;
end;

procedure TFrmCadAlunos.btPrimeiroMensClick(Sender: TObject);
begin
  frmDM.QMensalidade.First;
  btPrimeiroMens.Enabled:= false;
  btAnteriorMens.Enabled:= false;
  btProximoMens.Enabled:= true;
  btUltimoMens.Enabled:= true;
  Preencher_Tabela_Mensalidade;
end;

procedure TFrmCadAlunos.btProximoAulaClick(Sender: TObject);
begin
  frmDM.qAula.Next;
  if frmDM.qAula.RecordCount = frmDM.qAula.RecNo then
  begin
    btProximoAula.Enabled:= false;
    btUltimoAula.Enabled:= false;
  end;
  btPrimeiroAula.Enabled:= true;
  btAnteriorAula.Enabled:= true;
  Preencher_Tabela_Aula;
end;

procedure TFrmCadAlunos.btProximoAvalClick(Sender: TObject);
begin
  frmDM.qAvaliacao.Next;
  if frmDM.qAvaliacao.RecordCount = frmDM.qAvaliacao.RecNo then
  begin
    btProximoAval.Enabled:= false;
    btUltimoAval.Enabled:= false;
  end;
  btPrimeiroAval.Enabled:= true;
  btAnteriorAval.Enabled:= true;
  Preencher_Tabela_Avaliacao;
end;

procedure TFrmCadAlunos.btProximoClick(Sender: TObject);
begin
  frmDM.QPrincipal.Next;
  if frmDM.QPrincipal.RecordCount = frmDM.QPrincipal.RecNo then
  begin
    btProximo.Enabled:= false;
    btUltimo.Enabled:= false;
  end;
  btPrimeiro.Enabled:= true;
  btAnterior.Enabled:= true;
  Preencher_Tabela;
  Verifica_aba;
  Atualizar_Tudo;
end;

procedure TFrmCadAlunos.btProximoExameClick(Sender: TObject);
begin
  frmDM.QExames.Next;
  if frmDM.QExames.RecordCount = frmDM.QExames.RecNo then
  begin
    btProximoExame.Enabled:= false;
    btUltimoExame.Enabled:= false;
  end;
  btPrimeiroExame.Enabled:= true;
  btAnteriorExame.Enabled:= true;

  Preencher_Tabela_Exame;

  Atualiza_Foto_Exame;
end;

procedure TFrmCadAlunos.btProximoFotoClick(Sender: TObject);
begin
  frmDM.qFoto.Next;
  if frmDM.qFoto.RecordCount = frmDM.qFoto.RecNo then
  begin
    btProximoFoto.Enabled:= false;
    btUltimoFoto.Enabled:= false;
  end;
  btPrimeiroFoto.Enabled:= true;
  btAnteriorFoto.Enabled:= true;
  Preencher_Tabela_Foto;
end;

procedure TFrmCadAlunos.btProximoFotoExameClick(Sender: TObject);
begin
  frmDM.qFotoExames.Next;
  if frmDM.qFotoExames.RecordCount = frmDM.qFotoExames.RecNo then
  begin
    btProximoFotoExame.Enabled:= false;
    btUltimoFotoExame.Enabled:= false;
  end;
  btPrimeiroFotoExame.Enabled:= true;
  btAnteriorFotoExame.Enabled:= true;
  Preencher_Tabela_FotoExame;
end;

procedure TFrmCadAlunos.btProximoMensClick(Sender: TObject);
begin
  frmDM.QMensalidade.Next;
  if frmDM.QMensalidade.RecordCount = frmDM.QMensalidade.RecNo then
  begin
    btProximoMens.Enabled:= false;
    btUltimoMens.Enabled:= false;
  end;
  btPrimeiroMens.Enabled:= true;
  btAnteriorMens.Enabled:= true;
  Preencher_Tabela_Mensalidade;
  //Verifica_aba;
end;

procedure TFrmCadAlunos.btUltimoAulaClick(Sender: TObject);
begin
  frmDM.qAula.Last;
  btPrimeiroAula.Enabled:= true;
  btAnteriorAula.Enabled:= true;
  btProximoAula.Enabled:= false;
  btUltimoAula.Enabled:= false;
  Preencher_Tabela_Aula;
end;

procedure TFrmCadAlunos.btUltimoAvalClick(Sender: TObject);
begin
  frmDM.qAvaliacao.Last;
  btPrimeiroAval.Enabled:= true;
  btAnteriorAval.Enabled:= true;
  btProximoAval.Enabled:= false;
  btUltimoAval.Enabled:= false;
  Preencher_Tabela_Avaliacao;
end;

procedure TFrmCadAlunos.btUltimoClick(Sender: TObject);
begin
  frmDM.QPrincipal.Last;
  btPrimeiro.Enabled:= true;
  btAnterior.Enabled:= true;
  btProximo.Enabled:= false;
  btUltimo.Enabled:= false;
  Preencher_Tabela;
  Verifica_aba;
  Atualizar_Tudo;
end;

procedure TFrmCadAlunos.btUltimoExameClick(Sender: TObject);
begin
  frmDM.QExames.Last;
  btPrimeiroExame.Enabled:= true;
  btAnteriorExame.Enabled:= true;
  btProximoExame.Enabled:= false;
  btUltimoExame.Enabled:= false;
  Preencher_Tabela_Exame;
  Atualiza_Foto_Exame;
end;

procedure TFrmCadAlunos.btUltimoFotoClick(Sender: TObject);
begin
  frmDM.qFoto.Last;
  btPrimeiroFoto.Enabled:= true;
  btAnteriorFoto.Enabled:= true;
  btProximoFoto.Enabled:= false;
  btUltimoFoto.Enabled:= false;
  Preencher_Tabela_Foto;
end;

procedure TFrmCadAlunos.btUltimoFotoExameClick(Sender: TObject);
begin
  frmDM.qFotoExames.Last;
  btPrimeiroFotoExame.Enabled:= true;
  btAnteriorFotoExame.Enabled:= true;
  btProximoFotoExame.Enabled:= false;
  btUltimoFotoExame.Enabled:= false;
  Preencher_Tabela_FotoExame;
end;

procedure TFrmCadAlunos.btUltimoMensClick(Sender: TObject);
begin
  frmDM.QMensalidade.Last;
  btPrimeiroMens.Enabled:= true;
  btAnteriorMens.Enabled:= true;
  btProximoMens.Enabled:= false;
  btUltimoMens.Enabled:= false;
  Preencher_Tabela_Mensalidade;
end;

procedure TFrmCadAlunos.Button1Click(Sender: TObject);
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select * from exames where codaluno = '+EdCodigo.Text+'');
  ADOQuery1.Open;
end;

procedure TFrmCadAlunos.tabela_AulaCellClick(Column: TColumn);
begin
  Preencher_Tabela_Aula;
end;

procedure TFrmCadAlunos.tabela_AulaDrawColumnCell(Sender: TObject;
  const [Ref] Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not odd(frmDM.qAula.RecNo) then
    if not (gdSelected in State) then
      begin
      tabela_Aula.Canvas.Brush.Color := clGradientInactiveCaption;
      tabela_Aula.Canvas.FillRect(Rect);
      tabela_Aula.DefaultDrawDataCell(rect,Column.Field,state);
    end;
end;

procedure TFrmCadAlunos.tabela_AulaEnter(Sender: TObject);
begin
  Preencher_Tabela_Aula;
end;

procedure TFrmCadAlunos.tabela_AulaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_DOWN) or (key = VK_UP) then
    Preencher_Tabela_Aula;
end;

procedure TFrmCadAlunos.tabela_AulaMouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
  Preencher_Tabela_Aula;
end;

procedure TFrmCadAlunos.tabela_mensalidadeCellClick(Column: TColumn);
begin
  Preencher_Tabela_Mensalidade;
end;

procedure TFrmCadAlunos.tabela_mensalidadeDrawColumnCell(Sender: TObject;
  const [Ref] Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not odd(frmDM.QMensalidade.RecNo) then
    if not (gdSelected in State) then
      begin
      tabela_mensalidade.Canvas.Brush.Color := clGradientInactiveCaption;
      tabela_mensalidade.Canvas.FillRect(Rect);
      tabela_mensalidade.DefaultDrawDataCell(rect,Column.Field,state);
    end;
end;

procedure TFrmCadAlunos.tabela_mensalidadeEnter(Sender: TObject);
begin
  Preencher_Tabela_Mensalidade;
end;

procedure TFrmCadAlunos.tabela_mensalidadeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_DOWN) or (key = VK_UP) then
    Preencher_Tabela_Mensalidade;
end;

procedure TFrmCadAlunos.tabela_mensalidadeMouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
  Preencher_Tabela_Mensalidade;
end;

procedure TFrmCadAlunos.TabelaExameCellClick(Column: TColumn);
begin
  Preencher_Tabela_Exame;
end;

procedure TFrmCadAlunos.TabelaExameEnter(Sender: TObject);
begin
  Preencher_Tabela_Exame;
end;

procedure TFrmCadAlunos.TabelaExameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_DOWN) or (key = VK_UP) then
    Preencher_Tabela_Exame;
end;

procedure TFrmCadAlunos.TabelaExameMouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
  Preencher_Tabela_Exame;
end;

procedure TFrmCadAlunos.TabelaFotoExamesCellClick(Column: TColumn);
begin
  Preencher_Tabela_FotoExame;
end;

procedure TFrmCadAlunos.TabelaFotoExamesDrawColumnCell(Sender: TObject;
  const [Ref] Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not odd(frmDM.qFotoExames.RecNo) then
    if not (gdSelected in State) then
      begin
      TabelaFotoExames.Canvas.Brush.Color := clGradientInactiveCaption;
      TabelaFotoExames.Canvas.FillRect(Rect);
      TabelaFotoExames.DefaultDrawDataCell(rect,Column.Field,state);
    end;
end;

procedure TFrmCadAlunos.TabelaFotoExamesEnter(Sender: TObject);
begin
  Preencher_Tabela_FotoExame;
end;

procedure TFrmCadAlunos.TabelaFotoExamesKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_DOWN) or (key = VK_UP) then
    Preencher_Tabela_FotoExame;
end;

procedure TFrmCadAlunos.TabelaFotoExamesMouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
  Preencher_Tabela_FotoExame;
end;

procedure TFrmCadAlunos.TabelaFotosCellClick(Column: TColumn);
begin
  Preencher_Tabela_Foto;
end;

procedure TFrmCadAlunos.TabelaFotosDrawColumnCell(Sender: TObject;
  const [Ref] Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not odd(frmDM.qFoto.RecNo) then
    if not (gdSelected in State) then
      begin
      TabelaFotos.Canvas.Brush.Color := clGradientInactiveCaption;
      TabelaFotos.Canvas.FillRect(Rect);
      TabelaFotos.DefaultDrawDataCell(rect,Column.Field,state);
    end;
end;

procedure TFrmCadAlunos.TabelaFotosEnter(Sender: TObject);
begin
  Preencher_Tabela_Foto;
end;

procedure TFrmCadAlunos.TabelaFotosKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_DOWN) or (key = VK_UP) then
    Preencher_Tabela_Foto;
end;

procedure TFrmCadAlunos.TabelaFotosMouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
  Preencher_Tabela_Foto;
end;

procedure TFrmCadAlunos.DBGrid2CellClick(Column: TColumn);
begin
  frmDM.qAula.Locate('cod',frmDM.QUltimasAulas.FieldByName('cod').AsInteger,[]);
end;

procedure TFrmCadAlunos.DBGrid2DrawColumnCell(Sender: TObject;
  const [Ref] Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not odd(frmDM.QUltimasAulas.RecNo) then
    if not (gdSelected in State) then
      begin
      DBGrid2.Canvas.Brush.Color := clGradientInactiveCaption;
      DBGrid2.Canvas.FillRect(Rect);
      DBGrid2.DefaultDrawDataCell(rect,Column.Field,state);
    end;
end;

procedure TFrmCadAlunos.tabela_PrincipalCellClick(Column: TColumn);
begin
  Preencher_Tabela;
end;

procedure TFrmCadAlunos.tabela_PrincipalDrawColumnCell(Sender: TObject;
  const [Ref] Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not odd(frmDM.QPrincipal.RecNo) then
    if not (gdSelected in State) then
      begin
      tabela_Principal.Canvas.Brush.Color := clGradientInactiveCaption;
      tabela_Principal.Canvas.FillRect(Rect);
      tabela_Principal.DefaultDrawDataCell(rect,Column.Field,state);
    end;
end;

procedure TFrmCadAlunos.tabela_PrincipalEnter(Sender: TObject);
begin
  Preencher_Tabela;
end;

procedure TFrmCadAlunos.edNomeExit(Sender: TObject);
begin
  case FrmCadAlunos.PageControl1.ActivePageIndex of
    0://cadastro principal
    begin
      edCPF.SetFocus;
    end;
    1://ficha de avaliacao
    begin
      edProfissao.SetFocus;
    end;
    2://fotos de acompanhamento
    begin

    end;
    3://mensalidade
    begin

    end;
    4://exames complementares
    begin
      edExame.SetFocus;
    end;
    5://aula
    begin
      edDataAula.SetFocus;
    end;
  end;


end;

procedure TFrmCadAlunos.edPesoKeyPress(Sender: TObject; var Key: Char);
begin
  if ((Key in ['0'..'9',','] = False) and (Word(Key) <> VK_BACK)) then
    Key := #0;
end;

procedure TFrmCadAlunos.edTelefoneKeyPress(Sender: TObject; var Key: Char);
begin
  if ((Key in ['0'..'9','-','.','/'] = False) and (Word(Key) <> VK_BACK)) then
        Key := #0;
end;

procedure TFrmCadAlunos.edValorKeyPress(Sender: TObject; var Key: Char);
begin
  if ((Key in ['0'..'9',','] = False) and (Word(Key) <> VK_BACK)) then
        Key := #0;
end;

procedure TFrmCadAlunos.FormResize(Sender: TObject);
begin
  FrmCadAlunos.Top := ( Screen.Height div 2 ) - ( FrmCadAlunos.height div 2 );
  FrmCadAlunos.left := ( Screen.Width div 2 ) - ( FrmCadAlunos.Width div 2 );

  Label49.Caption:= 'H: '+ inttostr(FrmCadAlunos.Height);
  Label50.Caption:= 'W: '+ inttostr(FrmCadAlunos.Width);
end;

procedure TFrmCadAlunos.FormShow(Sender: TObject);
begin
  FrmCadAlunos.PageControl1.ActivePageIndex:= 0;
  FrmCadAlunos.Height:= 604;
  FrmCadAlunos.Width:= 570;
  FrmCadAlunos.Caption:= 'VIVERE PILATES - Cadastro Principal';
  btCarregar.Enabled:= false;
  Limpa_Campos;
  Desabilita_Campos;
  if not VemDoPrincipal then
    Atualizar_CadastroPrincipal;
  Habilita_Desabilita_Botoes;
  //btPrimeiro.Enabled:= false;
  //btAnterior.Enabled:= false;
  tabela_PrincipalEnter(self);
end;

procedure TFrmCadAlunos.GerarMensalidadeClick(Sender: TObject);
var
  ano: string;
begin
  valorJaneiro:= '';
  ValoresRestante:= '';
  flag:= 0;
  ano:= Copy(datetostr(date),7,4);
  if MessageDlg('Deseja gerar mensalidades para todos os meses do ano corrente para o aluno ' +#13+#13+edNome.Text+' ?',mtConfirmation,[mbYes,mbNo],0,mbYes) = mrYes then
  begin
    frmValorMensalidade.ShowModal;
    if flag = 1 then
    begin
      frmDM.Conexao.BeginTrans;
      frmDM.QMensalidade.Close;
      frmDM.QMensalidade.SQL.Clear;
      frmDM.QMensalidade.SQL.Add(
      'insert into mensalidade (codaluno, pago, data_mensalidade, mes, ano, valor, visualizar) ' +
      'values '+
      //da erro pois a virgula do valor esta interferindo
      '('+EdCodigo.Text+', ''NÃO'', now(),''JANEIRO'','''+ano+''','+valorJaneiro+',''SIM''),' +
      '('+EdCodigo.Text+', ''NÃO'', now(),''FEVEREIRO'','''+ano+''','+ValoresRestante+',''SIM''),' +
      '('+EdCodigo.Text+', ''NÃO'', now(),''MARÇO'','''+ano+''','+ValoresRestante+',''SIM''),' +
      '('+EdCodigo.Text+', ''NÃO'', now(),''ABRIL'','''+ano+''','+ValoresRestante+',''SIM''),' +
      '('+EdCodigo.Text+', ''NÃO'', now(),''MAIO'','''+ano+''','+ValoresRestante+',''SIM''),' +
      '('+EdCodigo.Text+', ''NÃO'', now(),''JUNHO'','''+ano+''','+ValoresRestante+',''SIM''),' +
      '('+EdCodigo.Text+', ''NÃO'', now(),''JULHO'','''+ano+''','+ValoresRestante+',''SIM''),' +
      '('+EdCodigo.Text+', ''NÃO'', now(),''AGOSTO'','''+ano+''','+ValoresRestante+',''SIM''),' +
      '('+EdCodigo.Text+', ''NÃO'', now(),''SETEMBRO'','''+ano+''','+ValoresRestante+',''SIM''),' +
      '('+EdCodigo.Text+', ''NÃO'', now(),''OUTUBRO'','''+ano+''','+ValoresRestante+',''SIM''),' +
      '('+EdCodigo.Text+', ''NÃO'', now(),''NOVEMBRO'','''+ano+''','+ValoresRestante+',''SIM''),' +
      '('+EdCodigo.Text+', ''NÃO'', now(),''DEZEMBRO'','''+ano+''','+ValoresRestante+',''SIM'');' +
      '');

      frmDM.QMensalidade.ExecSQL;
      frmDM.Conexao.CommitTrans;
      Atualiza_Mensalidade;
      MessageDlg('12 mensalidades foram adicionadas com êxito!',mtInformation,[mbOK],0);
      Habilita_Desabilita_Botoes_Mensalidade;
    end;
  end;
end;

procedure TFrmCadAlunos.PageControl1Change(Sender: TObject);
begin
  case FrmCadAlunos.PageControl1.ActivePageIndex of
    0://cadastro principal
    begin
      FrmCadAlunos.Height:= 604;
      FrmCadAlunos.Width:= 570;
      FrmCadAlunos.Caption:= 'VIVERE PILATES - Cadastro Principal';
      Habilita_Desabilita_Botoes_Principal;
    end;
    1://ficha de avaliacao
    begin
      FrmCadAlunos.Height:= 600;
      FrmCadAlunos.Width:= 1181;
      FrmCadAlunos.Caption:= 'VIVERE PILATES - Cadastro: Ficha de Avaliação';

      Atualiza_Avaliacao;

      Desabilita_Campos_Avaliacao;
      Habilita_Desabilita_Botoes_Avaliacao;

    end;
    2://fotos de acompanhamento
    begin
      FrmCadAlunos.Height:= 739;
      FrmCadAlunos.Width:= 1035;
      FrmCadAlunos.Caption:= 'VIVERE PILATES - Cadastro: Fotos de Acompanhamento';

      Atualiza_Foto;

      Desabilita_Campos_Foto;
      Habilita_Desabilita_Botoes_Foto;
    end;
    3://mensalidade
    begin
      FrmCadAlunos.Height:= 604;
      FrmCadAlunos.Width:= 571;
      FrmCadAlunos.Caption:= 'VIVERE PILATES - Cadastro: Mensalidade';

      if (EdCodigo.Text <> '') then
        Atualiza_Mensalidade;

      Desabilita_Campos_Mensalidade;
      Habilita_Desabilita_Botoes_Mensalidade;
    end;
    4://exames complementares
    begin
      FrmCadAlunos.Height:= 525;
      FrmCadAlunos.Width:= 815;
      FrmCadAlunos.Caption:= 'VIVERE PILATES - Cadastro: Exames Complementares';

      if (EdCodigo.Text <> '') then
        Atualiza_Exame;

      edDataFotoExame.Enabled:= false;
      Habilita_Desabilita_Botoes_Exame;
      Habilita_Desabilita_Botoes_Foto_Exame;
    end;
    5://aula
    begin
      FrmCadAlunos.Height:= 498;
      FrmCadAlunos.Width:= 959;
      FrmCadAlunos.Caption:= 'VIVERE PILATES - Cadastro: Aula';

      if (EdCodigo.Text <> '') then
      begin
        Atualiza_aula;
        Atualiza_UltimasAula;
      end;
      Habilita_Desabilita_Botoes_Aula;
    end;
  end;
end;

procedure TFrmCadAlunos.PopupMenu1Popup(Sender: TObject);
begin
  if (cbSituacao.Text = 'ATIVO') then
  BEGIN
    GerarMensalidade.Enabled:= true;
  END
  ELSE
  BEGIN
    GerarMensalidade.Enabled:= false;
  END;
end;

procedure TFrmCadAlunos.btFecharClick(Sender: TObject);
begin
   FrmCadAlunos.Close;
end;

procedure TFrmCadAlunos.tabela_PrincipalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_DOWN) or (key = VK_UP) then
    Preencher_Tabela;
end;

procedure TFrmCadAlunos.tabela_PrincipalMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
  Preencher_Tabela;
end;

end.
