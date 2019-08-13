unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, Mask, DBCtrls, Buttons, comobj,
  jpeg, ExtCtrls;

type
  TTPL = class(TForm)
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    ADOTable1kod_dispetchera: TWideStringField;
    ADOTable1kod_mexanika: TWideStringField;
    ADOTable1nomer_PL: TWideStringField;
    ADOTable1data: TWideStringField;
    ADOTable1vremya_vyezda: TWideStringField;
    ADOTable1vremya_vozvrata: TWideStringField;
    ADOTable1pokazaniya_pri_vyezde: TWideStringField;
    ADOTable1pokazaniya_pri_vozvrate: TWideStringField;
    ADOTable1ostatok_pri_vyezde: TWideStringField;
    ADOTable1ostatok_pri_vozvrate: TWideStringField;
    Button1: TButton;
    ADOTable1fakt: TWideStringField;
    ADOTable1norma: TWideStringField;
    ADOTable1rasst: TWideStringField;
    ADOTable1kod_voditelya: TWideStringField;
    DBGrid1: TDBGrid;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ADOTable1sum: TWideStringField;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    ADOTable1akt: TWideStringField;
    Button4: TButton;
    Button5: TButton;
    Label16: TLabel;
    ADOTable1gos: TWideStringField;
    ADOTable1fio: TWideStringField;
    Label17: TLabel;
    DBEdit16: TDBEdit;
    Label18: TLabel;
    DBEdit17: TDBEdit;
    ADOTable1fiod: TWideStringField;
    ADOTable1fiom: TWideStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    ADOTable1gosnomer_pricepa: TWideStringField;
    Button6: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button7: TButton;
    Label9: TLabel;
    Label10: TLabel;
    Button8: TButton;
    Edit5: TEdit;
    ComboBox1: TComboBox;
    Label14: TLabel;
    Button2: TButton;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    GroupBox1: TGroupBox;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
  e1:variant;
    { Public declarations }
  end;

var
  TPL: TTPL;

implementation

uses Unit12, Unit7, Unit5, Unit9, Unit20, Unit10, Unit8, Unit3, Unit1,
  Unit23, Unit24;
var
d,d1,d2,m,m1,m2,y,y1,y2:word;
t,t1:integer;
{$R *.dfm}

procedure TTPL.Button1Click(Sender: TObject);
begin
ADOTable1.Append;
DPL.Show;
TVod.ADOTable1.Active:=false;
TVod.ADOTable1.Active:=true;
TVod.ADOTable1.Filtered:=false;
TVod.ADOTable1.Filter:='za=1';
TVod.ADOTable1.Filtered:=true;
TVod.ADOTable1.Active:=false;
TVod.ADOTable1.Active:=true;
DPL.Edit2.Text:=DateToStr(Date);
DPL.DBEdit5.Text:=DPL.Edit2.Text;
DPL.Edit3.Text:=TimeToStr(Time);
DPL.DBEdit6.Text:=DPL.Edit3.Text;
end;

procedure TTPL.Button2Click(Sender: TObject);
begin
Form1.show;
end;

procedure TTPL.Button4Click(Sender: TObject);
begin
ADOTable1.Edit;
TPL.ADOTable1fakt.Text:= floattostr(Strtofloat(TPL.ADOTable1ostatok_pri_vyezde.Text)-strtofloat(TPL.ADOTable1ostatok_pri_vozvrate.Text));
TPL.ADOTable1rasst.Text:= floattostr(Strtofloat(TPL.ADOTable1pokazaniya_pri_vozvrate.Text)-strtofloat(TPL.ADOTable1pokazaniya_pri_vyezde.Text));
{TAvto.ADOTable1kod_avtomobilya.text:=TVod.ADOTable1.Lookup('kod_voditelya', TPL.ADOTable1kod_voditelya.Text, 'kod_avtomobilya'); }
TPL.ADOTable1norma.Text:=floattostr((strtofloat(floattostr(Strtofloat(TPL.ADOTable1pokazaniya_pri_vozvrate.Text)-strtofloat(TPL.ADOTable1pokazaniya_pri_vyezde.Text))))*strtofloat(TAvto.ADOTable1.Lookup('kod_avtomobilya', TVod.ADOTable1.Lookup('kod_voditelya', TPL.ADOTable1kod_voditelya.Text, 'kod_avtomobilya'), 'rasxod'))/100);
TPL.ADOTable1sum.Text:=floattostr((strtoint(floattostr(Strtofloat(TPL.ADOTable1ostatok_pri_vyezde.Text)-strtofloat(TPL.ADOTable1ostatok_pri_vozvrate.Text))))*strtofloat(TTop.ADOTable1.Lookup('naimenovanie_topliva',TAvto.ADOTable1.Lookup('kod_avtomobilya', TVod.ADOTable1.Lookup('kod_voditelya', TPL.ADOTable1kod_voditelya.Text, 'kod_avtomobilya'), 'naimenovanie_topliva') , 'cena_topliva')));
TPL.ADOTable1.Post;
end;

procedure TTPL.Button5Click(Sender: TObject);
begin
TPLS.ADOTable1.Active:=false;
TPLS.ADOTable1.Active:=true;
TPLS.ADOTable1.Filtered:=false;
TPLS.ADOTable1.Filter:='akt=1';
TPLS.ADOTable1.Filtered:=true;
TPLS.show;
end;

procedure TTPL.BitBtn1Click(Sender: TObject);
begin
TPL.ADOTable1.Prior;
end;

procedure TTPL.BitBtn2Click(Sender: TObject);
begin
TPL.ADOTable1.Next;
end;

procedure TTPL.Button6Click(Sender: TObject);
begin
if TPL.ADOTable1.RecordCount=0
then begin
Showmessage('Нет ПЛ, очистка невозможна!');
if TTTN.ADOTable1.RecordCount=0
then
Showmessage('Нет ТТН, очистка невозможна!')
else begin
TTTN.ADOTable1.First;
DecodeDate(StrToDate(TTTN.ADOTable1data.text),y2,m2,d2);
t1:=((y1-1)*365+(m1-1)*31+d1)-((y2-1)*365+(m2-1)*31+d2);
while not TTTN.ADOTable1.Eof
do begin
DecodeDate(StrToDate(TTTN.ADOTable1data.text),y2,m2,d2);
DecodeDate(Date,y1,m1,d1);
t1:=((y1-1)*365+(m1-1)*31+d1)-((y2-1)*365+(m2-1)*31+d2);
if t1<1095
then
TTTN.ADOTable1.Next
{DecodeDate(StrToDate(TTTN.ADOTable1data.text),y2,m2,d2);
DecodeDate(Date,y1,m1,d1);
t1:=((y1-1)*365+(m1-1)*31+d1)-((y2-1)*365+(m2-1)*31+d2);
}
else
TTTN.ADOTable1.Delete ;
{DecodeDate(StrToDate(TTTN.ADOTable1data.text),y2,m2,d2);
DecodeDate(Date,y1,m1,d1);
t1:=((y1-1)*365+(m1-1)*31+d1)-((y2-1)*365+(m2-1)*31+d2); }
end;
end;
end
else begin
TPL.ADOTable1.First;
DecodeDate(StrToDate(TPL.ADOTable1data.text),y,m,d);
DecodeDate(Date,y1,m1,d1);
t:=((y1-1)*365+(m1-1)*31+d1)-((y-1)*365+(m-1)*31+d);
while not TPL.ADOTable1.Eof
do begin
DecodeDate(StrToDate(TPL.ADOTable1data.text),y,m,d);
DecodeDate(Date,y1,m1,d1);
t:=((y1-1)*365+(m1-1)*31+d1)-((y-1)*365+(m-1)*31+d);
if t<1095
then
TPL.ADOTable1.Next
{DecodeDate(StrToDate(TPL.ADOTable1data.text),y,m,d);
DecodeDate(Date,y1,m1,d1);
t:=((y1-1)*365+(m1-1)*31+d1)-((y-1)*365+(m-1)*31+d);
}
else
TPL.ADOTable1.Delete ;
end;
if TTTN.ADOTable1.RecordCount=0
then
Showmessage('Нет ТТН, очистка невозможна!')
else begin
TTTN.ADOTable1.First;
DecodeDate(StrToDate(TTTN.ADOTable1data.text),y2,m2,d2);
t1:=((y1-1)*365+(m1-1)*31+d1)-((y2-1)*365+(m2-1)*31+d2);
while not TTTN.ADOTable1.Eof
do begin
DecodeDate(StrToDate(TTTN.ADOTable1data.text),y2,m2,d2);
DecodeDate(Date,y1,m1,d1);
t1:=((y1-1)*365+(m1-1)*31+d1)-((y2-1)*365+(m2-1)*31+d2);
if t1<1095
then
TTTN.ADOTable1.Next
else
TTTN.ADOTable1.Delete ;
end;
end;
end;
 end;
{TPL.ADOTable1.First;
DecodeDate(StrToDate(TPL.ADOTable1data.text),y,m,d);
DecodeDate(Date,y1,m1,d1);
t:=((y1-1)*365+(m1-1)*31+d1)-((y-1)*365+(m-1)*31+d);
while not TPL.ADOTable1.Eof
do begin
if t<1095
then begin
TPL.ADOTable1.Next;
DecodeDate(StrToDate(TPL.ADOTable1data.text),y,m,d);
DecodeDate(Date,y1,m1,d1);
t:=((y1-1)*365+(m1-1)*31+d1)-((y-1)*365+(m-1)*31+d);
end
else begin
TPL.ADOTable1.Delete ;
DecodeDate(StrToDate(TPL.ADOTable1data.text),y,m,d);
DecodeDate(Date,y1,m1,d1);
t:=((y1-1)*365+(m1-1)*31+d1)-((y-1)*365+(m-1)*31+d);
end;
end;
if TTTN.ADOTable1.RecordCount=0
then
Showmessage('Нет ТТН, очистка невозможна!')
else begin
TTTN.ADOTable1.First;
DecodeDate(StrToDate(TTTN.ADOTable1data.text),y2,m2,d2);
t1:=((y1-1)*365+(m1-1)*31+d1)-((y2-1)*365+(m2-1)*31+d2);
while not TTTN.ADOTable1.Eof
do begin
if t1<1095
then begin
TTTN.ADOTable1.Next;
DecodeDate(StrToDate(TTTN.ADOTable1data.text),y2,m2,d2);
DecodeDate(Date,y1,m1,d1);
t1:=((y1-1)*365+(m1-1)*31+d1)-((y2-1)*365+(m2-1)*31+d2);
end
else begin
TTTN.ADOTable1.Delete ;
DecodeDate(StrToDate(TTTN.ADOTable1data.text),y2,m2,d2);
DecodeDate(Date,y1,m1,d1);
t1:=((y1-1)*365+(m1-1)*31+d1)-((y2-1)*365+(m2-1)*31+d2);
end;
end;
end;}

procedure TTPL.Button8Click(Sender: TObject);
begin
TPL.ADOTable1.First;
if TPL.ComboBox1.Text='Номер ПЛ'
then
if (TPL.ADOTable1.Locate('nomer_PL',TPL.Edit5.Text,[])=true) and (TPL.ADOTable1akt.Text='1')
then
showmessage('Путевой лист не найден, такого не выдавали!')
else
if (TPL.ADOTable1.Locate('nomer_PL',TPL.Edit5.Text,[])=true)
then
if (TPL.ADOTable1akt.Text='0')
then begin
TPL.ADOTable1.Locate('nomer_PL',TPL.Edit5.Text,[]);
showmessage('Путевой лист найден');
end
else
showmessage('Путевой лист не найден, такого не выдавали!')
else
showmessage('Путевой лист не найден, такого не выдавали!')
else
showmessage('Правильно выберите критерий поиска!');
end;

procedure TTPL.Button7Click(Sender: TObject);
begin
TPL.Tag:=2;
e1:=createoleobject('excel.application');
e1.workbooks.open(extractfilepath(application.ExeName)+'pl1');
e1.visible:=false;
e1.activesheet.cells[3,5]:=TPL.ADOTable1nomer_PL.text;
e1.activesheet.cells[5,5]:=TPL.ADOTable1data.text;
e1.activesheet.cells[9,3]:=TPL.ADOTable1gos.text;
e1.activesheet.cells[9,11]:=TPL.ADOTable1vremya_vyezda.text;
e1.activesheet.cells[9,14]:=TPL.ADOTable1pokazaniya_pri_vyezde.text;
e1.activesheet.cells[11,3]:=TPL.ADOTable1fio.text;
e1.activesheet.cells[11,11]:=TPL.ADOTable1vremya_vozvrata.text;
e1.activesheet.cells[11,14]:=TPL.ADOTable1pokazaniya_pri_vozvrate.text;
e1.activesheet.cells[13,3]:=TPL.ADOTable1gosnomer_pricepa.text;
e1.activesheet.cells[19,13]:=TPL.ADOTable1ostatok_pri_vyezde.text;
e1.activesheet.cells[19,14]:=TPL.ADOTable1ostatok_pri_vozvrate.text;
form24.showmodal;
end;

procedure TTPL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form1.Show;
end;

end.
