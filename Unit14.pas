unit Unit14;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, jpeg, ExtCtrls;

type
  TDDisp = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DDisp: TDDisp;

implementation

uses Unit8;

{$R *.dfm}

procedure TDDisp.Button1Click(Sender: TObject);
begin
if ((DBEdit1.Text='') or (DBEdit2.Text='') or (DBEdit3.Text='') or (DBEdit4.Text=''))
then Showmessage('¬ведите полные данные о диспетчере!')
else

try
TDisp.adotable1.post;
DDisp.Close;

except
showmessage('ƒиспетчер с данным кодом уже существует!');
end;
end;

procedure TDDisp.Button2Click(Sender: TObject);
begin
TDisp.ADOTable1.Cancel;
DDisp.Close;
end;

procedure TDDisp.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0','1','2','3','4','5','6','7','8','9',char(8)])
then
key:=#0;
end;

end.
