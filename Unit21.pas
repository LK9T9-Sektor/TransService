unit Unit21;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls;

type
  TDPLS = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
  p2:string;
    { Public declarations }
  end;

var
  DPLS: TDPLS;

implementation

uses Unit20, Unit2, Unit5, Unit7, Unit9, Unit12;

{$R *.dfm}

procedure TDPLS.Button1Click(Sender: TObject);
begin
if ((DBEdit2.Text='') or (DBEdit3.Text=''))
then Showmessage('¬ведите полные данные о путевых листах!')
else

try
TPLS.ADOTable1akt.Text:='0';
DPLS.DBEdit1.Text:=DPLS.Edit1.Text;
p2:=TPLS.ADOTable1nomer_PL.Text;
TPLS.adotable1.post;

DPLS.Close;
{TPL.Button4.Click;}
TPLS.ADOTable1.Active:=false;
TPLS.ADOTable1.Active:=true;
TPL.ADOTable1.Active:=false;
TPL.ADOTable1.Active:=true;
TPLS.ADOTable1.Filtered:=false;
TPLS.ADOTable1.Filter:='akt=1';
TPLS.ADOTable1.Filtered:=true;
TPL.ADOTable1.Locate('nomer_PL', p2, []);
TPL.Button4.Click;
TPL.Button7.Click;

except
showmessage('ѕутевой лист с данным кодом уже существует!');
end;
end;

procedure TDPLS.Button2Click(Sender: TObject);
begin
TPL.ADOTable1.Cancel;
DPLS.Close;
end;

procedure TDPLS.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0','1','2','3','4','5','6','7','8','9',char(8)])
then
key:=#0;
end;

procedure TDPLS.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0','1','2','3','4','5','6','7','8','9',',',char(8)])
then
key:=#0;
end;

end.
