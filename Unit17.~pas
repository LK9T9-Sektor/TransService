unit Unit17;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls;

type
  TDTop = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTop: TDTop;

implementation

uses Unit9;

{$R *.dfm}

procedure TDTop.Button1Click(Sender: TObject);
begin
if ((DBEdit1.Text='') or (DBEdit2.Text=''))
then Showmessage('¬ведите полные данные о топливе!')
else

try
TTop.adotable1.post;
DTop.Close;

except
showmessage('“опливо с данным наименованием уже существует!');
end;
end;

procedure TDTop.Button2Click(Sender: TObject);
begin
TTop.ADOTable1.Cancel;
DTop.Close;
end;

procedure TDTop.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0','1','2','3','4','5','6','7','8','9',char(8)])
then
key:=#0;
end;

end.
