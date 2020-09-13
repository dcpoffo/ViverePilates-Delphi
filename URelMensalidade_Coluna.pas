unit URelMensalidade_Coluna;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, frxClass, frxDBSet, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBCtrls,
  IBX.IBCustomDataSet, IBX.IBQuery, System.UITypes;

type
  TfrmRelMensalidade_Coluna = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btSair: TBitBtn;
    frxMensalidade_coluna: TfrxReport;
    frxBdMensalidade_coluna: TfrxDBDataset;
    DBGrid2: TDBGrid;
    btVisualizarRelColuna: TBitBtn;
    btRelColuna: TBitBtn;
    qResultado: TIBQuery;
    dsResultado: TDataSource;
    cbaluno: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    cbAno: TComboBox;
    procedure btRelColunaClick(Sender: TObject);
    procedure btVisualizarRelColunaClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbalunoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelMensalidade_Coluna: TfrmRelMensalidade_Coluna;

implementation

{$R *.dfm}

uses UDM, UAjuda;

procedure TfrmRelMensalidade_Coluna.btRelColunaClick(Sender: TObject);
//var
  //nome, cpf, valor, ano, inserir: string; //string/ pega aos meses para o insert
 // tamanho_nome, tamanho_cpf, tamanho_valor, tamanho_ano, tamanho_inserir: SmallInt; //tamanho da string
begin
{
  if (cbaluno.Text = '') or (cbAno.Text = '') then
  begin
    MessageDlg('Dados insuficientes para a consulta',mtError,[mbok],0);
    exit
  end;

  frmDM.qRelMensalidade.Close;
  frmDM.qRelMensalidade.SQL.Clear;
  frmDM.qRelMensalidade.SQL.Add('select F."ANO", C."COD", C."CPF", C."NOME", '+
                             'C."SITUACAO", F."CODALUNO", F."MES", F."VALOR", F."PAGO" '+
                             'from  "MENSALIDADE" F, "CAD_ALUNOS_PRINCIPAL" C '+
                             'where C."COD" = F."CODALUNO" ' +
                             'and C."NOME" = '''+cbaluno.Text+'''' +
                             'and F."ANO" = '''+cbAno.Text+''''); // order by C."NOME"');
  //showmessage(frmDM.qRelMensalidade.SQL.Text);
  frmDM.qRelMensalidade.Open;

  //apaga a tabela se existir
  frmDM.qRelMensalidade_Coluna.Close;
  frmDM.qRelMensalidade_Coluna.SQL.Clear;
  frmDM.qRelMensalidade_Coluna.SQL.add('DROP TABLE MES_COLUNA');
  TRY
    frmDM.qRelMensalidade_Coluna.ExecSQL;
  EXCEPT
  END;


  inserir:= 'create table MES_COLUNA (';
  nome:= '';
  cpf:= '';
  valor:= '';
  ano:= '';
  frmDM.qRelMensalidade.First;
  while not frmDM.qRelMensalidade.Eof do
  begin
    inserir:= inserir + frmDM.qRelMensalidade.FieldByName('mes').AsString+' varchar(35), ';
    nome:= nome + ''''+frmDM.qRelMensalidade.FieldByName('nome').AsString+ ''', ';
    cpf:= cpf + ''''+frmDM.qRelMensalidade.FieldByName('cpf').AsString+ ''', ';
    valor:= valor + ''''+FloatToStrF(frmDM.qRelMensalidade.FieldByName('valor').AsFloat,ffFixed,4,2)+''', ';
    ano:= ano + ''''+frmDM.qRelMensalidade.FieldByName('ano').AsString+ ''', ';
    frmDM.qRelMensalidade.Next;
  end;

  tamanho_inserir:= inserir.Length;
  inserir:= copy(inserir,1,tamanho_inserir-2) + ')';

  tamanho_nome:= nome.Length;
  tamanho_cpf:= cpf.Length;

  tamanho_valor:= valor.Length;
  nome:= copy(nome,1,tamanho_nome-2);

  tamanho_ano:= ano.Length;
  ano:= copy(ano,1,tamanho_ano-2);

  cpf:= copy(cpf,1,tamanho_cpf-2);
  valor:= copy(valor,1,tamanho_valor-2);

  //cria a tabela
  frmDM.qRelMensalidade_Coluna.Close;
  frmDM.qRelMensalidade_Coluna.SQL.Clear;
  frmDM.qRelMensalidade_Coluna.SQL.Text:= inserir;
  TRY
    frmDM.qRelMensalidade_Coluna.ExecSQL;
  EXCEPT
  END;

  try
    //FrmDM.Trans_Pilates.Commit;
    frmDM.Conexao.CommitTrans;
  except
  end;

  //insere o ano na tabela
  frmDM.qRelMensalidade_Coluna.Close;
  frmDM.qRelMensalidade_Coluna.SQL.Clear;
  frmDM.qRelMensalidade_Coluna.SQL.Text:= ('insert into MES_COLUNA values ('+ano+')');
  TRY
    frmDM.qRelMensalidade_Coluna.ExecSQL;
  EXCEPT
  END;

  //insere os nomes na tabela
  frmDM.qRelMensalidade_Coluna.Close;
  frmDM.qRelMensalidade_Coluna.SQL.Clear;
  frmDM.qRelMensalidade_Coluna.SQL.Text:= ('insert into MES_COLUNA values ('+nome+')');
  TRY
    frmDM.qRelMensalidade_Coluna.ExecSQL;
  EXCEPT
  END;

  //insere os cpfs na tabela
  frmDM.qRelMensalidade_Coluna.Close;
  frmDM.qRelMensalidade_Coluna.SQL.Clear;
  frmDM.qRelMensalidade_Coluna.SQL.Text:= ('insert into MES_COLUNA values ('+cpf+')');
  TRY
    frmDM.qRelMensalidade_Coluna.ExecSQL;
  EXCEPT
  END;

  //insere os valor na tabela
  frmDM.qRelMensalidade_Coluna.Close;
  frmDM.qRelMensalidade_Coluna.SQL.Clear;
  frmDM.qRelMensalidade_Coluna.SQL.Text:= ('insert into MES_COLUNA values ('+valor+')');
  TRY
    frmDM.qRelMensalidade_Coluna.ExecSQL;
  EXCEPT
  END;

  //atualiza
  frmDM.qRelMensalidade_Coluna.Close;
  frmDM.qRelMensalidade_Coluna.SQL.Clear;
  frmDM.qRelMensalidade_Coluna.SQL.add('SELECT * FROM MES_COLUNA');
  TRY
    frmDM.qRelMensalidade_Coluna.Open;
  EXCEPT
  END;

  with frmDM do
  begin
    TbCadastroAlunosPrincipal.Active:= true;
    tbMensalidade.Active:= true;
    TbAula.Active:= true;
    tbExames.Active:= true;
    tbAvaliacao.Active:= true;
    tbFoto.Active:= true;
  end;
  }
end;

procedure TfrmRelMensalidade_Coluna.btSairClick(Sender: TObject);
begin
  frmRelMensalidade_Coluna.Close;
end;

procedure TfrmRelMensalidade_Coluna.btVisualizarRelColunaClick(Sender: TObject);
begin
   if frmDM.qRelMensalidade_Coluna.RecordCount <> 0 then
  begin
    Caminho:= ExtractFilePath(Application.ExeName);
    frxMensalidade_coluna.LoadFromFile(caminho+'RelMensalidade_coluna.fr3');
    frxMensalidade_coluna.ShowReport();
  end
  else
    MessageDlg('Nenhum dado a ser mostrado',mtInformation,[mbOK],0);
end;

procedure TfrmRelMensalidade_Coluna.cbalunoChange(Sender: TObject);
begin
  //frmDM.qRelMensalidade_Coluna.Close;
  cbAno.Items.Clear;
  cbAno.ItemIndex:= 1;
  qResultado.Close;
  qResultado.SQL.Clear;
  qResultado.SQL.Add('select distinct F."ANO" From  "MENSALIDADE" F, "CAD_ALUNOS_PRINCIPAL" C where C."COD" = F."CODALUNO" and C."NOME" = '''+cbaluno.Text+'''');
  qResultado.Open;
  qResultado.First;
  while not qResultado.Eof do
  begin
    cbAno.Items.Add(qResultado.FieldByName('ano').AsString);
    qResultado.Next;
  end;
  //select distinct  F."ANO" from  "MENSALIDADE" F, "CAD_ALUNOS_PRINCIPAL" C where C."COD" = F."CODALUNO"
end;

procedure TfrmRelMensalidade_Coluna.FormShow(Sender: TObject);
begin
  top:= 5;
  left:= 5;
  frmDM.qRelMensalidade_Coluna.Close;
  cbaluno.Items.Clear;
  cbaluno.ItemIndex:= 0;
  qResultado.Close;
  qResultado.SQL.Clear;
  qResultado.SQL.Add('select distinct C."NOME" from  "MENSALIDADE" F, "CAD_ALUNOS_PRINCIPAL" C where C."COD" = F."CODALUNO"');
  qResultado.Open;
  qResultado.First;
  while not qResultado.Eof do
  begin
    cbaluno.Items.Add(qResultado.FieldByName('nome').AsString);
    qResultado.Next;
  end;
  cbAno.Clear;
end;

end.
