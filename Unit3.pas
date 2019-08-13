unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls, Buttons, Mask, DBCtrls, comobj,
  jpeg, ExtCtrls;

type
  TTTTN = class(TForm)
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    DBGrid1: TDBGrid;
    ADOTable1nomer_TTN: TWideStringField;
    ADOTable1nomer_PL: TWideStringField;
    ADOTable1gruzootpravitel: TWideStringField;
    ADOTable1gruzopoluchatel: TWideStringField;
    ADOTable1naimenovanie_tovara: TWideStringField;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ADOTable1data: TWideStringField;
    ADOTable1gos: TWideStringField;
    ADOTable1kol: TWideStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ComboBox1: TComboBox;
    Label9: TLabel;
    Edit1: TEdit;
    Button4: TButton;
    Label5: TLabel;
    Button5: TButton;
    Button6: TButton;
    Image1: TImage;
    GroupBox1: TGroupBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
  e:variant;
    { Public declarations }
  end;

var
  TTTN: TTTTN;

implementation

uses Unit18, Unit2, Unit1, Unit23;

{$R *.dfm}

procedure TTTTN.Button1Click(Sender: TObject);
begin
ADOTable1.Append;
DTTN.Show;
end;

procedure TTTTN.Button2Click(Sender: TObject);
begin
ADOTable1.Edit;
DTTN.Show;
end;

procedure TTTTN.Button3Click(Sender: TObject);
begin
if messagedlg('Вы действительно хотите удалить запись?',mtconfirmation,[mbyes,mbno],0)=mryes
then
if (TPL.ADOTable1.Locate('nomer_PL', TTTN.ADOTable1nomer_PL.Text, [LoCaseInsensitive, loPartialKey])=True)
 then
Showmessage('Данная ТТН связана с Путевым листом! Удалить невозможно!')
else
TTTN.ADOtable1.Delete;
end;

procedure TTTTN.Button4Click(Sender: TObject);
begin
TTTN.ADOTable1.First;
if TTTN.ComboBox1.Text='Номер ТТН'
then
if (TTTN.ADOTable1.Locate('nomer_TTN',TTTN.Edit1.Text,[])=true)
then begin
TTTN.ADOTable1.Locate('nomer_TTN',TTTN.Edit1.Text,[]);
showmessage('ТТН найдена');
end
else
showmessage('ТТН не найдена, такой нет!')
else
showmessage('Выбраны некорректные данные!');
end;

procedure TTTTN.BitBtn2Click(Sender: TObject);
begin
TTTN.ADOTable1.Next;
end;

procedure TTTTN.BitBtn1Click(Sender: TObject);
begin
TTTN.ADOTable1.Prior;
end;

procedure TTTTN.Button5Click(Sender: TObject);
begin
Form1.show;
end;

procedure TTTTN.Button6Click(Sender: TObject);
begin
TTTN.Tag:=1;
e:=createoleobject('excel.application');
e.workbooks.open(extractfilepath(application.ExeName)+'ttn');
e.visible:=false;
e.activesheet.cells[8,4]:=TTTN.ADOTable1nomer_TTN.text;
e.activesheet.cells[10,1]:=TTTN.ADOTable1data.text;
e.activesheet.cells[10,3]:=TTTN.ADOTable1gos.text;
e.activesheet.cells[10,5]:=TTTN.ADOTable1nomer_PL.text;
e.activesheet.cells[12,2]:=TTTN.ADOTable1gruzootpravitel.text;
e.activesheet.cells[13,2]:=TTTN.ADOTable1gruzopoluchatel.text;
e.activesheet.cells[20,1]:=TTTN.ADOTable1naimenovanie_tovara.text;
e.activesheet.cells[20,2]:=TTTN.ADOTable1kol.text;
form23.showmodal;
end;

end.
