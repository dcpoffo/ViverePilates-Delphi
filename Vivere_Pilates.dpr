program Vivere_Pilates;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {frmPrincipal},
  UCadAlunos_Principal in 'UCadAlunos_Principal.pas' {FrmCadAlunos},
  UDM in 'UDM.pas' {frmDM},
  URelAtivosInativos in 'URelAtivosInativos.pas' {frmRelAtivosInativos},
  UPesquisaAluno in 'UPesquisaAluno.pas' {frmPesquisarAluno},
  UValorMensalidade in 'UValorMensalidade.pas' {frmValorMensalidade},
  UAjuda in 'UAjuda.pas',
  URelMensalidade in 'URelMensalidade.pas' {frmRelMensalidade},
  URelFoto in 'URelFoto.pas' {frmRelFoto},
  URelMensalidade_Coluna in 'URelMensalidade_Coluna.pas' {frmRelMensalidade_Coluna},
  UControleMensalidade in 'UControleMensalidade.pas' {frmControleMensalidade},
  UDados in 'UDados.pas' {frmDados},
  URelAulas in 'URelAulas.pas' {frmRelAulas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmDados, frmDados);
  Application.CreateForm(TFrmCadAlunos, FrmCadAlunos);
  Application.CreateForm(TfrmRelFoto, frmRelFoto);
  Application.CreateForm(TfrmDM, frmDM);
  Application.CreateForm(TfrmRelAtivosInativos, frmRelAtivosInativos);
  Application.CreateForm(TfrmPesquisarAluno, frmPesquisarAluno);
  Application.CreateForm(TfrmValorMensalidade, frmValorMensalidade);
  Application.CreateForm(TfrmRelMensalidade, frmRelMensalidade);
  Application.CreateForm(TfrmControleMensalidade, frmControleMensalidade);
  Application.CreateForm(TfrmRelMensalidade_Coluna, frmRelMensalidade_Coluna);
  Application.CreateForm(TfrmRelAulas, frmRelAulas);
  //Application.CreateForm(TfrmRelFoto, frmRelFoto);
  //Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmRelMensalidade_Coluna, frmRelMensalidade_Coluna);
  Application.Run;
end.
