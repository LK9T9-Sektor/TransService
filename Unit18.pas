unit Unit18;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, jpeg, ExtCtrls;

type
  TDTTN = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
  t1:string;
    { Public declarations }
  end;

var
  DTTN: TDTTN;

implementation

uses Unit3, Unit12, Unit20;

{$R *.dfm}

procedure TDTTN.Button1Click(Sender: TObject);
begin
if ((DBEdit1.Text='') or (DBEdit2.Text='') or (DBEdit3.Text='') or (DBEdit4.Text='') or (DBEdit5.Text=''))
then Showmessage('Введите полные данные о ТТН!')
else

try
DTTN.Edit1.Text:=DTTN.DBEdit2.Text;
TTTN.ADOTable1gos.Text:=TPLS.ADOTable1.Lookup('nomer_PL',DTTN.DBEdit2.Text,'gos');
TTTN.ADOTable1data.Text:=TPLS.ADOTable1.Lookup('nomer_PL',DTTN.DBEdit2.Text,'data');
t1:=DTTN.DBEdit1.Text;
TTTN.adotable1.post;
TTTN.ADOTable1.Locate('nomer_TTN', t1, []);
TTTN.Button6.Click;
if messagedlg('Вы хотите добавить  еще ТТН?',mtconfirmation,[mbyes,mbno],0)=mryes
then begin
TTTN.ADOTable1.Append;
DTTN.DBEdit2.Text:=DTTN.Edit1.Text;
end
else
DTTN.Close;

except
showmessage('ТТН с данным кодом уже существует!');
end;
end;

procedure TDTTN.Button2Click(Sender: TObject);
begin
TTTN.ADOTable1.Cancel;
DTTN.Close;
end;

procedure TDTTN.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0','1','2','3','4','5','6','7','8','9',char(8)])
then
key:=#0;
end;

procedure TDTTN.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0','1','2','3','4','5','6','7','8','9',char(8)])
then
key:=#0;
end;

end.
