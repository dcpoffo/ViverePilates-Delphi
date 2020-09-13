unit UDados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.Mask, Vcl.ExtCtrls;

type
  TfrmDados = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBNavigator1: TDBNavigator;
    btSair: TBitBtn;
    ednome: TEdit;
    edCPF: TEdit;
    edCrefito: TEdit;
    procedure FormShow(Sender: TObject);
    procedure btSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDados: TfrmDados;

implementation

{$R *.dfm}

uses UDM;

procedure TfrmDados.btSairClick(Sender: TObject);
begin
  close;
end;

procedure TfrmDados.FormShow(Sender: TObject);
begin
  left:= 5;
  top:= 5;
  {
  frmDM.qDados.Close;
  frmDM.qDados.SQL.Clear;
  frmDM.qDados.SQL.Add('select * from dados');
  frmDM.qDados.Open; }
  edNome.Text:= frmDM.qDados.FieldByName('nome').AsString;
  edCPF.Text:= frmDM.qDados.FieldByName('cpf').AsString;
  edCrefito.Text:= frmDM.qDados.FieldByName('crefito').AsString;
  edNome.SetFocus;
end;

end.
