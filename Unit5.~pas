unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, Buttons, Mask, DBCtrls,
  jpeg, ExtCtrls;

type
  TTAvto = class(TForm)
    DataSource1: TDataSource;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ADOTable1: TADOTable;
    ADOTable1naimenovanie_topliva: TWideStringField;
    ADOTable1gruzopodemnost: TWideStringField;
    ADOTable1nal_pricepa: TWideStringField;
    ADOTable1gosnomer_pricepa: TWideStringField;
    ADOTable1obem_vmechaemogo_gruza: TWideStringField;
    ADOTable1model: TWideStringField;
    ADOTable1obchiy_obem: TWideStringField;
    ADOTable1obchaya_gruzopodemnost: TWideStringField;
    ADOTable1rasxod: TWideStringField;
    DBGrid1: TDBGrid;
    ADOTable1za: TWideStringField;
    ADOTable1zp: TWideStringField;
    ADOTable1kod_avtomobilya: TWideStringField;
    ADOTable1gosnomer: TWideStringField;
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
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    ComboBox2: TComboBox;
    Label8: TLabel;
    Label9: TLabel;
    Button4: TButton;
    Button5: TButton;
    GroupBox1: TGroupBox;
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
  TAvto: TTAvto;

implementation

uses Unit11, Unit15, Unit7, Unit6, Unit20, Unit1, Unit2;

{$R *.dfm}

procedure TTAvto.Button1Click(Sender: TObject);
begin
ADOTable1.Append;
DAvto.Show;
TAvto.ADOTable1za.Text:='0';
DAvto.Label1.Visible:=true;
DAvto.DBEdit1.Visible:=true;
TPr.ADOTable1.Active:=false;
TPr.ADOTable1.Active:=true;
TPr.ADOTable1.Filtered:=false;
TPr.ADOTable1.Filter:='zp=0';
TPr.ADOTable1.Filtered:=true;
TPr.ADOTable1.Active:=false;
TPr.ADOTable1.Active:=true;
end;

procedure TTAvto.Button2Click(Sender: TObject);
begin
if ((TPLS.ADOTable1.Locate('gos', TAvto.ADOTable1gosnomer.Text, [])=True) and (TPLS.ADOTable1akt.Text='1'))
then showmessage('Данный автомобиль задействован, изменить невозможно')
else begin
if (TPr.ADOTable1.Locate('gosnomer_pricepa', TAvto.ADOTable1gosnomer_pricepa.Text, [LoCaseInsensitive, loPartialKey])=True)
then begin
TPr.ADOTable1.Locate('gosnomer_pricepa', TAvto.ADOTable1gosnomer_pricepa.Text, []);
TPr.ADOTable1.Edit;
TPr.ADOTable1zp.Text:='0';
TPr.ADOTable1.Post;
ADOTable1.Edit;
DAvto.Show;
DAvto.Label1.Visible:=false;
DAvto.DBEdit1.Visible:=false;
TPr.ADOTable1.Active:=false;
TPr.ADOTable1.Active:=true;
TPr.ADOTable1.Filtered:=false;
TPr.ADOTable1.Filter:='zp=0';
TPr.ADOTable1.Filtered:=true;
end
else begin
ADOTable1.Edit;
DAvto.Show;
DAvto.DBEdit1.Visible:=False;
TPr.ADOTable1.Active:=false;
TAvto.ADOTable1.Active:=true;
TPr.ADOTable1.Filtered:=false;
TPr.ADOTable1.Filter:='zp=0';
TPr.ADOTable1.Filtered:=true;
end;
end;

end;

procedure TTAvto.Button3Click(Sender: TObject);
begin
if (TPLS.ADOTable1.Locate('gos', TAvto.ADOTable1gosnomer.Text, [LoCaseInsensitive, loPartialKey])=True) and (TPLS.ADOTable1akt.Text='1')
then showmessage('Данный автомобиль задействован, удалить невозможно')
else
if messagedlg('Вы действительно хотите удалить запись?',mtconfirmation,[mbyes,mbno],0)=mryes
then
if (TVod.ADOTable1.Locate('kod_avtomobilya', TAvto.ADOTable1kod_avtomobilya.Text, [LoCaseInsensitive, loPartialKey])=True)
 then
if messagedlg('Данный автомобиль закреплен за водителем!!! Вы действительно хотите удалить запись?  ',mtconfirmation,[mbyes,mbno],0)=mryes
then begin
TVod.ADOTable1.Locate('kod_avtomobilya', TAvto.ADOTable1kod_avtomobilya.Text, []);
TVod.ADOTable1.Edit;
TVod.ADOTable1za.Text:='0';
TVod.ADOTable1kod_avtomobilya.Text:='';
TVod.Adotable1.post;
TPr.ADOTable1.Locate('gosnomer_pricepa', TAvto.ADOTable1gosnomer_pricepa.Text, []);
TPr.ADOTable1.Edit;
TPr.ADOTable1zp.Text:='0';
TPr.Adotable1.post;
TAvto.ADOTable1.Delete;
end
else begin
TAvto.ADOTable1.Edit;
TAvto.ADOTable1za.Text:='1';
TAvto.Adotable1.post;
end
else begin
TPr.ADOTable1.Locate('gosnomer_pricepa', TAvto.ADOTable1gosnomer_pricepa.Text, []);
TPr.ADOTable1.Edit;
TPr.ADOTable1zp.Text:='0';
TPr.Adotable1.post;
TAvto.ADOTable1.Delete;
end;
{else begin
TAvto.ADOTable1.Edit;
TAvto.ADOTable1ud.Text:='0';
TAvto.Adotable1.post;
end;}

end;



procedure TTAvto.Button4Click(Sender: TObject);
begin
TAvto.ADOTable1.First;
if TAvto.ComboBox2.Text='Код автомобиля'
then
if (TAvto.ADOTable1.Locate('Kod_avtomobilya',TAvto.Edit1.Text,[])=true)
then begin
TAvto.ADOTable1.Locate('Kod_avtomobilya',TAvto.Edit1.Text,[]);
showmessage('Автомобиль найден');
end
else
showmessage('Автомобиль не найден, такого нет!')
else
if TAvto.ComboBox2.Text='Госномер авто'
then
if (TAvto.ADOTable1.Locate('gosnomer',TAvto.Edit1.Text,[])=true)
then begin
TAvto.ADOTable1.Locate('gosnomer',TAvto.Edit1.Text,[]);
showmessage('Автомобиль найден');
end
else
showmessage('Автомобиль не найден, такого нет!');
end;

procedure TTAvto.BitBtn1Click(Sender: TObject);
begin
Tavto.ADOTable1.Prior;
end;

procedure TTAvto.BitBtn2Click(Sender: TObject);
begin
TAvto.ADOTable1.Next;
end;

procedure TTAvto.Button5Click(Sender: TObject);
begin
Form1.show;
end;

end.

