unit Unit20;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, ADODB, StdCtrls, Mask, DBCtrls, ComCtrls, comobj,
  jpeg, ExtCtrls;

type
  TTPLS = class(TForm)
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    DBGrid1: TDBGrid;
    ADOTable1kod_dispetchera: TWideStringField;
    ADOTable1kod_mexanika: TWideStringField;
    ADOTable1kod_voditelya: TWideStringField;
    ADOTable1nomer_PL: TWideStringField;
    ADOTable1data: TWideStringField;
    ADOTable1vremya_vyezda: TWideStringField;
    ADOTable1vremya_vozvrata: TWideStringField;
    ADOTable1pokazaniya_pri_vyezde: TWideStringField;
    ADOTable1pokazaniya_pri_vozvrate: TWideStringField;
    ADOTable1ostatok_pri_vyezde: TWideStringField;
    ADOTable1ostatok_pri_vozvrate: TWideStringField;
    ADOTable1fakt: TWideStringField;
    ADOTable1norma: TWideStringField;
    ADOTable1rasst: TWideStringField;
    ADOTable1sum: TWideStringField;
    ADOTable1akt: TWideStringField;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    ADOTable1gos: TWideStringField;
    ADOTable1fio: TWideStringField;
    ADOTable1fiod: TWideStringField;
    ADOTable1fiom: TWideStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    ADOTable1gosnomer_pricepa: TWideStringField;
    ComboBox2: TComboBox;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Button4: TButton;
    Button5: TButton;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Image1: TImage;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
  e2:variant;
    { Public declarations }
  end;

var
  TPLS: TTPLS;

implementation

uses Unit21, Unit2, Unit3, Unit18, Unit1, Unit23, Unit25;

{$R *.dfm}

procedure TTPLS.Button1Click(Sender: TObject);
begin
if TPLS.ADOTable1.RecordCount=0
then
Showmessage('Нет данных на которые надо заполнить ТТН!')
else begin
TPL.ADOTable1.Edit;
DPLS.Show;
DPLS.Edit1.Text:=TimeToStr(Time);
DPLS.DBEdit1.Text:=DPLS.Edit1.Text;
end;
end;

procedure TTPLS.Button2Click(Sender: TObject);
begin
if TPLS.ADOTable1.RecordCount=0
then
Showmessage('Нет данных на которые надо заполнить ТТН!')
else begin
TTTN.Button1.Click;
DTTN.DBEdit2.Text:=TPLS.DBEdit4.Text;
end;
end;

procedure TTPLS.Button3Click(Sender: TObject);
begin
TPLS.ADOTable1.First;
if TPLS.ComboBox2.Text='Номер ПЛ'
then
if (TPL.ADOTable1.Locate('nomer_PL',TPLS.Edit1.Text,[])=true) and (TPLS.ADOTable1akt.Text='0')
then
showmessage('Путевой лист не найден, такого не выдавали!')
else
if (TPLS.ADOTable1.Locate('nomer_PL',TPLS.Edit1.Text,[])=true)
then
if (TPLS.ADOTable1akt.Text='1')
then begin
TPL.ADOTable1.Locate('nomer_PL',TPLS.Edit1.Text,[]);
showmessage('Путевой лист найден');
end
else
showmessage('Путевой лист не найден, такого не выдавали!')
else
showmessage('Путевой лист не найден, такого не выдавали!')
else
showmessage('Правильно выберите критерий поиска!');
{TPLS.ADOTable1.First;
if TPLS.ComboBox2.Text='Номер ПЛ'
then
if (TPL.ADOTable1.Locate('nomer_PL',TPLS.Edit1.Text,[])=true) and (TPL.ADOTable1akt.Text='0')
then
showmessage('Путевой лист не найден, такого не выдавали!')
else
if (TPLS.ADOTable1.Locate('nomer_PL',TPLS.Edit1.Text,[])=true) and (TPLS.ADOTable1akt.Text='1')
then begin
TPLS.ADOTable1.Locate('nomer_PL',TPLS.Edit1.Text,[]);
showmessage('Путевой лист найден');
end
 else
showmessage('Путевой лист не найден, такого не выдавали!')
else
showmessage('Правильно выберите критерий поиска!');}
end;

procedure TTPLS.Button4Click(Sender: TObject);
begin
Form1.show;
end;

procedure TTPLS.Button5Click(Sender: TObject);
begin
TPLS.Tag:=3;
e2:=createoleobject('excel.application');
e2.workbooks.open(extractfilepath(application.ExeName)+'pl2');
e2.visible:=false;
e2.activesheet.cells[3,5]:=TPLS.ADOTable1nomer_PL.text;
e2.activesheet.cells[5,5]:=TPLS.ADOTable1data.text;
e2.activesheet.cells[9,3]:=TPLS.ADOTable1gos.text;
e2.activesheet.cells[9,11]:=TPLS.ADOTable1vremya_vyezda.text;
e2.activesheet.cells[9,14]:=TPLS.ADOTable1pokazaniya_pri_vyezde.text;
e2.activesheet.cells[11,3]:=TPLS.ADOTable1fio.text;
e2.activesheet.cells[13,3]:=TPLS.ADOTable1gosnomer_pricepa.text;
e2.activesheet.cells[19,13]:=TPLS.ADOTable1ostatok_pri_vyezde.text;
form25.showmodal;
end;

end.
