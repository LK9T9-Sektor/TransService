unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, Buttons, Mask, DBCtrls,
  jpeg, ExtCtrls;

type
  TTVod = class(TForm)
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    DBGrid1: TDBGrid;
    ADOTable1kod_voditelya: TWideStringField;
    ADOTable1FIO_voditelya: TWideStringField;
    ADOTable1adres_voditelya: TWideStringField;
    ADOTable1telefon_voditelya: TWideStringField;
    ADOTable1klass: TWideStringField;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ADOTable1kod_avtomobilya: TWideStringField;
    ADOTable1za: TWideStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Edit1: TEdit;
    ComboBox2: TComboBox;
    Button4: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    Button5: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TVod: TTVod;

implementation

uses Unit19, Unit2, Unit5, Unit6, Unit20, Unit1;

{$R *.dfm}

procedure TTVod.Button1Click(Sender: TObject);
begin
ADOTable1.Append;
DVod.Show;
TAvto.ADOTable1.Active:=false;
TAvto.ADOTable1.Active:=true;
TAvto.ADOTable1.Filtered:=false;
TAvto.ADOTable1.Filter:='za=0';
TAvto.ADOTable1.Filtered:=true;
end;

procedure TTVod.Button2Click(Sender: TObject);
begin

if ((TPLS.ADOTable1.Locate('kod_voditelya', TVod.ADOTable1kod_voditelya.Text, [LoCaseInsensitive, loPartialKey])=True) and (TPLS.ADOTable1akt.Text='1'))
then showmessage('Данный водитель задействован, изменить невозможно')
else
if (TAvto.ADOTable1.Locate('kod_Avtomobilya', TVod.ADOTable1kod_avtomobilya.Text, [LoCaseInsensitive, loPartialKey])=True)
then begin
TAvto.ADOTable1.Locate('kod_Avtomobilya', TVod.ADOTable1kod_avtomobilya.Text, []);
TAvto.ADOTable1.Edit;
TAvto.ADOTable1za.Text:='0';
TAvto.ADOTable1.Post;
TAvto.ADOTable1.Edit;
TAvto.ADOTable1.Active:=false;
TAvto.ADOTable1.Active:=true;
TAvto.ADOTable1.Filtered:=false;
TAvto.ADOTable1.Filter:='za=0';
TAvto.ADOTable1.Filtered:=true;
DVod.Show;
end
else begin
TAvto.ADOTable1.Active:=false;
TAvto.ADOTable1.Active:=true;
TAvto.ADOTable1.Filtered:=false;
TAvto.ADOTable1.Filter:='za=0';
TAvto.ADOTable1.Filtered:=true;
ADOTable1.Edit;
DVod.Show;
end;
end;

procedure TTVod.Button3Click(Sender: TObject);
begin
{if messagedlg('Вы действительно хотите удалить запись?',mtconfirmation,[mbyes,mbno],0)=mryes
then
if (TPL.ADOTable1.Locate('kod_voditelya', TVod.ADOTable1kod_voditelya.Text, [LoCaseInsensitive, loPartialKey])=True)
 then
Showmessage('Данный водитель используется в ПЛ! Удалить невозможно!')
else
TVod.ADOtable1.Delete;
TPr.ADOTable1.Edit;
TPr.ADOTable1zp.Text:='1';
TPr.Adotable1.post; }
if (TPLS.ADOTable1.Locate('kod_voditelya', TVod.ADOTable1kod_voditelya.Text, [LoCaseInsensitive, loPartialKey])=True)
then showmessage('Данный водитель задействован, удалить невозможно')
else
if messagedlg('Вы действительно хотите удалить запись?',mtconfirmation,[mbyes,mbno],0)=mryes
then
if (TAvto.ADOTable1.Locate('kod_avtomobilya', TVod.ADOTable1kod_avtomobilya.Text, [LoCaseInsensitive, loPartialKey])=True)
 then
if messagedlg('Данный водитель закреплен за автомобилем!!! Вы действительно хотите удалить запись?  ',mtconfirmation,[mbyes,mbno],0)=mryes
then begin
TAvto.ADOTable1.Locate('kod_avtomobilya', TAvto.ADOTable1kod_avtomobilya.Text, []);
TAvto.ADOTable1.Edit;
TAvto.ADOTable1za.Text:='0';
TAvto.Adotable1.post;
TVod.ADOTable1.Edit;
TVod.ADOTable1.Delete;
{TVod.ADOTable1kod_avtomobilya.Text:='';
TVod.ADOTable1za.Text:='0';
TVod.ADOTable1ud.Text:='1';
TVod.Adotable1.post;}
end
else begin
TVod.ADOTable1.Edit;
TVod.ADOTable1za.Text:='1';
TVod.Adotable1.post;
end
else
TVod.ADOTable1.Delete;
{TVod.ADOTable1.Edit;
TVod.ADOTable1kod_avtomobilya.Text:='';
TVod.ADOTable1za.Text:='0';
TVod.ADOTable1ud.Text:='1';
TVod.Adotable1.post;
end
else begin
TVod.ADOTable1.Edit;
TVod.ADOTable1ud.Text:='0';
TVod.Adotable1.post;
end;}
end;

procedure TTVod.Button4Click(Sender: TObject);
begin
TVod.ADOTable1.First;
if TVod.ComboBox2.Text='Код водителя'
then
if (TVod.ADOTable1.Locate('Kod_voditelya',TVod.Edit1.Text,[])=true)
then begin
TVod.ADOTable1.Locate('Kod_voditelya',TVod.Edit1.Text,[]);
showmessage('Водитель найден');
end
else
showmessage('Водитель не найден, такого нет!')
else
if TVod.ComboBox2.Text='ФИО водителя'
then
if (TVod.ADOTable1.Locate('FIO_voditelya',TVod.Edit1.Text,[])=true)
then begin
TVod.ADOTable1.Locate('FIO_voditelya',TVod.Edit1.Text,[]);
showmessage('Водитель найден');
end
else
showmessage('Водитель не найден, такого нет!');
end;

procedure TTVod.BitBtn1Click(Sender: TObject);
begin
TVod.ADOTable1.Prior;
end;

procedure TTVod.BitBtn2Click(Sender: TObject);
begin
TVod.ADOTable1.Next;
end;

procedure TTVod.Button5Click(Sender: TObject);
begin
Form1.Show;
end;

end.
