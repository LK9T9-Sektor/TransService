unit Unit19;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, jpeg, ExtCtrls;

type
  TDVod = class(TForm)
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
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DVod: TDVod;

implementation

uses Unit7, Unit11, Unit5, Unit6;
{$R *.dfm}

procedure TDVod.Button1Click(Sender: TObject);
begin
if ((DBEdit1.Text='') or (DBEdit2.Text='') or (DBEdit3.Text='') or (DBEdit4.Text='') or (DBEdit5.Text=''))
then Showmessage('¬ведите полные данные о водителе!')
else

try
if DVod.DBLookupComboBox1.Text=''
then begin
TVod.ADOTable1za.Text:='0';
TVod.adotable1.post;
DVod.Close;
end
else begin
Tvod.ADOTable1za.Text:='1';
TVod.adotable1.post;
TAvto.ADOTable1.Locate('kod_avtomobilya',DVod.DBLookupComboBox1.Text,[]);
TAvto.ADOTable1.Edit;
TAvto.ADOTable1za.Text:='1';
TAvto.Adotable1.post;
DVod.Close;
end;
TAvto.ADOTable1.Filtered:=false;
TAvto.ADOTable1.Active:=false;
TAvto.ADOTable1.Active:=true;
TAvto.ADOTable1.Filtered:=false;
TVod.ADOTable1.Filtered:=false;
except
showmessage('¬одитель с данным кодом уже существует!');
end;
end;

procedure TDVod.Button2Click(Sender: TObject);
begin
TVod.ADOTable1.Cancel;
DVod.Close;
TAvto.ADOTable1.Filtered:=false;
TVod.ADOTable1.Filtered:=false;
end;

procedure TDVod.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0','1','2','3','4','5','6','7','8','9',char(8)])
then
key:=#0;
end;

procedure TDVod.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0','1','2','3','4','5','6','7','8','9',char(8)])
then
key:=#0;
end;

end.
