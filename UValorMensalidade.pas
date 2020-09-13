unit UValorMensalidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, System.UITypes;

type
  TfrmValorMensalidade = class(TForm)
    Label1: TLabel;
    edValorJaneiro: TEdit;
    btOK: TBitBtn;
    btCancelar: TBitBtn;
    edValoresRestante: TEdit;
    Label2: TLabel;
    procedure btOKClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure edValorJaneiroKeyPress(Sender: TObject; var Key: Char);
    procedure edValoresRestanteKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmValorMensalidade: TfrmValorMensalidade;

implementation

{$R *.dfm}

uses UAjuda;

procedure TfrmValorMensalidade.btCancelarClick(Sender: TObject);
begin
  edValorJaneiro.Text:= '';
  edValoresRestante.Text:= '';
  close;
  flag:= 0;
end;

procedure TfrmValorMensalidade.btOKClick(Sender: TObject);
begin
  if (edValorJaneiro.Text = '') or (edValoresRestante.Text = '') then
  begin
    flag:= 0;
    MessageDlg('Faltou informar algum valor!',mtInformation,[mbOK],0);
    edValorJaneiro.SetFocus;
    exit
  end
  else
  begin
    flag:= 1;
    valorJaneiro:= StringReplace(edValorJaneiro.Text,',','.',[rfReplaceAll, rfIgnoreCase]);
    ValoresRestante:= StringReplace(edValoresRestante.Text,',','.',[rfReplaceAll, rfIgnoreCase]);
    close;
  end;
end;

procedure TfrmValorMensalidade.edValoresRestanteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if ((Key in ['0'..'9',',',#13] = False) and (Word(Key) <> VK_BACK)) then
    Key := #0;

  if key = #13 then
    btOK.SetFocus;
end;

procedure TfrmValorMensalidade.edValorJaneiroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if ((Key in ['0'..'9',',',#13] = False) and (Word(Key) <> VK_BACK)) then
    Key := #0;

  if key = #13 then
    edValoresRestante.SetFocus;
end;

procedure TfrmValorMensalidade.FormShow(Sender: TObject);
begin
  Left:= 5;
  Top:= 5;
  edValorJaneiro.Clear;
  edValoresRestante.Clear;
end;

end.
