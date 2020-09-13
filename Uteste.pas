unit Uteste;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCGrids, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Data.Win.ADODB,
  IBX.IBCustomDataSet, IBX.IBQuery, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    ListView1: TListView;
    TreeView1: TTreeView;
    HeaderControl1: THeaderControl;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UDM;

procedure TForm1.Button1Click(Sender: TObject);
begin
  frmDM.qRelMensalidade.Close;
  frmDM.qRelMensalidade.SQL.Clear;
  frmDM.qRelMensalidade.SQL.Add('select F."ANO", C."COD", C."CPF", C."NOME", C."SITUACAO", F."CODALUNO", '+
                             'F."MES", F."VALOR", F."PAGO" '+
                             'from  "MENSALIDADE" F, "CAD_ALUNOS_PRINCIPAL" C '+
                             'where C."COD" = F."CODALUNO"'); // order by C."NOME"');
  frmDM.qRelMensalidade.Open;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmDM.qRelMensalidade.Active:= false;
end;

end.
