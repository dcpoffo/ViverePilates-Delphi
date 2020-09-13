unit UBackup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.FileCtrl, Vcl.ComCtrls, system.zip;

type
  TfrmBackup = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btSair: TBitBtn;
    BitBtn1: TBitBtn;
    barra: TProgressBar;
    DirectoryListBox1: TDirectoryListBox;
    DriveComboBox1: TDriveComboBox;
    Button1: TButton;
    Memo1: TMemo;
    procedure btSairClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function pegar_nome_arquivo(const Path: string): TStringList;
  end;

var
  frmBackup: TfrmBackup;

implementation

{$R *.dfm}

function TfrmBackup.pegar_nome_arquivo(const Path: string): TStringList;
  var
    I,j: Integer;
    SearchRec: TSearchRec;
  begin
    j:= 0;
    Result := TStringList.Create;
    try
      I := FindFirst(Path, 0, SearchRec);
      while I = 0 do
      begin
        Result.Add(SearchRec.Name);
        I := FindNext(SearchRec);
      end;
    except
      Result.Free;
      raise;
    end;
  end;

procedure TfrmBackup.BitBtn1Click(Sender: TObject);
var
  erro: boolean;
  nome_arquivo: string;
begin
  barra.Position:= 0;
  CopyFile('C:\ProgramData\MySQL\data\vivere_pilates\aula.ibd','D:\SISTEMAS\Vivere Pilates\Banco\aula.ibd',false);
  barra.Position:= (barra.Max div 8);
  sleep(300);
  CopyFile('C:\ProgramData\MySQL\data\vivere_pilates\avaliacao.ibd','D:\SISTEMAS\Vivere Pilates\Banco\avaliacao.ibd',false);
  barra.Position:= (barra.Max div 7);
  sleep(300);
  CopyFile('C:\ProgramData\MySQL\data\vivere_pilates\cad_alunos_principal.ibd','D:\SISTEMAS\Vivere Pilates\Banco\cad_alunos_principal.ibd',false);
  barra.Position:= (barra.Max div 6);
  sleep(300);
  CopyFile('C:\ProgramData\MySQL\data\vivere_pilates\dados.ibd','D:\SISTEMAS\Vivere Pilates\Banco\dados.ibd',false);
  barra.Position:= (barra.Max div 5);
  sleep(300);
  CopyFile('C:\ProgramData\MySQL\data\vivere_pilates\exames.ibd','D:\SISTEMAS\Vivere Pilates\Banco\exames.ibd',false);
  barra.Position:= (barra.Max div 4);
  sleep(300);
  CopyFile('C:\ProgramData\MySQL\data\vivere_pilates\foto.ibd','D:\SISTEMAS\Vivere Pilates\Banco\foto.ibd',false);
  barra.Position:= (barra.Max div 3);
  sleep(300);
  CopyFile('C:\ProgramData\MySQL\data\vivere_pilates\foto_exame.ibd','D:\SISTEMAS\Vivere Pilates\Banco\foto_exame.ibd',false);
  barra.Position:= (barra.Max div 2);
  sleep(300);
  CopyFile('C:\ProgramData\MySQL\data\vivere_pilates\mensalidade.ibd','D:\SISTEMAS\Vivere Pilates\Banco\mensalidade.ibd',false);
  barra.Position:= barra.Max;

  nome_arquivo:= 'Backup_'+DateTimeToStr(now);
  nome_arquivo:= StringReplace(nome_arquivo,'/','-',[rfReplaceAll, rfIgnoreCase]);
  nome_arquivo:= StringReplace(nome_arquivo,':','-',[rfReplaceAll, rfIgnoreCase]);
  try
    try
      TZipFile.ZipDirectoryContents('D:\SISTEMAS\Vivere Pilates\Banco\'+nome_arquivo+'.zip', 'D:\SISTEMAS\Vivere Pilates\Banco\Backup');
      //TZipFile.ZipDirectoryContents('D:\SISTEMAS\Vivere Pilates\Banco\backup\'+nome_arquivo+'.zip', 'D:\SISTEMAS\Vivere Pilates\Banco');
      erro:= false;
    except
      erro:= true;
    end;
  finally
    if erro then
      showmessage('erro')
    else
      showmessage('sucesso')
  end;
  barra.Position:= 0;
end;

procedure TfrmBackup.btSairClick(Sender: TObject);
begin
  close;
end;

procedure TfrmBackup.Button1Click(Sender: TObject);
var
  Lista: TStringList;
  I: Integer;
  Original, Destino: WideString;
begin
  Memo1.Clear;
  Lista := TStringList.Create;
  Lista := pegar_nome_arquivo('C:\ProgramData\MySQL\data\vivere_pilates\*.*');
  Memo1.Lines.Append(lista.Text);
  Lista.Free;
  for I := 0 to Memo1.Lines.Count-2 do
  begin
    //original:= '';
    original:= Memo1.Lines[i];
    showmessage(Memo1.Lines[i]);
//    CopyFile('C:\ProgramData\MySQL\data\vivere_pilates\'+original+'','D:\SISTEMAS\Vivere Pilates\Banco\',false)
  end;
end;

end.

{
  nome:= FileListBox1.FileName;

  if CopyFile('C:\ProgramData\MySQL\data\vivere_pilates\'+nome'','D:\SISTEMAS\Vivere Pilates\Banco\'+nome+'',false) then
    showmessage('ok')
  else
    showmessage('nao ok'); }
