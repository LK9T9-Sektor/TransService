unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, ADODB, StdCtrls, ComCtrls,wordXP, OleServer,ComObj,
  jpeg, ExtCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    ADOConnection1: TADOConnection;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    Button1: TButton;
    N6: TMenuItem;
    N25: TMenuItem;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Image1: TImage;
    Button7: TButton;
    MonthCalendar1: TMonthCalendar;
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit10,
  Unit20, Unit22;

{$R *.dfm}

procedure TForm1.N2Click(Sender: TObject);
begin
TPL.ADOTable1.Active:=false;
TPL.ADOTable1.Active:=true;
TPL.ADOTable1.Filtered:=false;
TPL.ADOTable1.Filter:='akt=0';
TPL.ADOTable1.Filtered:=true;
TPL.Show;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
TTTN.Show;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
TAvto.Show;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
TPr.Show;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
form1.AlphaBlend:=true;
form1.AlphaBlendValue:=0;
{Form1.Visible:=false; }
Form22.Show;
Form22.Edit1.Clear;

end;

procedure TForm1.N7Click(Sender: TObject);
begin
TTop.Show;
end;

procedure TForm1.N8Click(Sender: TObject);
begin
TVod.Show;
end;

procedure TForm1.N9Click(Sender: TObject);
begin
TDisp.Show;
end;

procedure TForm1.N10Click(Sender: TObject);
begin
TMex.Show;
end;

procedure TForm1.N12Click(Sender: TObject);
begin
TVod.ADOTable1.Filtered:=false;
TVod.Show;
end;

procedure TForm1.N13Click(Sender: TObject);
begin
TDisp.Show;
end;

procedure TForm1.N14Click(Sender: TObject);
begin
TMex.Show;
end;

procedure TForm1.N16Click(Sender: TObject);
begin
TAvto.Show;
end;

procedure TForm1.N17Click(Sender: TObject);
begin
TPr.Show;
end;

procedure TForm1.N20Click(Sender: TObject);
begin
TPLS.ADOTable1.Active:=false;
TPLS.ADOTable1.Active:=true;
TPLS.ADOTable1.Filtered:=false;
TPLS.ADOTable1.Filter:='akt=1';
TPLS.ADOTable1.Filtered:=true;

TPLS.show;
end;

procedure TForm1.N22Click(Sender: TObject);
begin
application.HelpCommand(HELP_CONTENTS,0);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
//form1.AlphaBlend:=true;
//form1.AlphaBlendValue:=0;
//Form22.show;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Form22.Show;
end;

procedure TForm1.N23Click(Sender: TObject);
Var XlApp,Sheet,Colum:Variant;
Index:integer;
d1,m1,y1,d2,y2,m2:word;
begin
if TTTN.ADOTable1.RecordCount=0
then
showmessage('За данный месяц нет ТТН')
else begin
 XLApp:= CreateOleObject('Excel.Application');
 XLApp.Visible:=true;
 XLApp.Workbooks.Add(-4167);
 XLApp.Workbooks[1].WorkSheets[1].Name:='Отчет';
 Colum:=XLApp.Workbooks[1].WorkSheets['Отчет'].Columns;
 Colum.Columns[1].ColumnWidth:=12;
 Colum.Columns[2].ColumnWidth:=12;
 Colum.Columns[3].ColumnWidth:=25;
 Colum.Columns[4].ColumnWidth:=25;
 Colum.Columns[5].ColumnWidth:=10;
 Colum.Columns[6].ColumnWidth:=10;
 Colum.Columns[7].ColumnWidth:=25;
 Colum.Columns[8].ColumnWidth:=10;

 Colum:=XLApp.Workbooks[1].WorkSheets['Отчет'].Rows;
 Colum.Rows[2].Font.Bold:=true;
 Colum.Rows[1].Font.Bold:=true;
 Colum.Rows[1].Font.Color:=clBlue;
 Colum.Rows[1].Font.Size:=14;

 Sheet:=XLApp.Workbooks[1].WorkSheets['Отчет'];
 Sheet.Cells[1,1]:='Отчет по ТТН';
 Sheet.Cells[2,1]:='Номер ТТН';
 Sheet.Cells[2,2]:='Номер ПЛ';
 Sheet.Cells[2,3]:='Грузоотправитель';
 Sheet.Cells[2,4]:='Грузополучатель';
 Sheet.Cells[2,5]:='Дата';
 Sheet.Cells[2,6]:='Госномер';
 Sheet.Cells[2,7]:='Наименование товара';
 Sheet.Cells[2,8]:='Количество';
 index:=3;
 TTTN.ADOTable1.First;
 TTTN.ADOTable1.Open;
 while not TTTN.ADOTable1.Eof do
 begin
 DecodeDate(StrToDate(TTTN.ADOTable1data.text),y2,m2,d2);
// DecodeDate(Date,y1,m1,d1);
y1:=2013;
m1:=5;
d1:=10;
 if(y1=y2)and(m1=m2)then
  begin
  Sheet.Cells[index,1]:=TTTN.ADOTable1.FieldByName('nomer_TTN').AsString;
  Sheet.Cells[index,2]:=TTTN.ADOTable1.FieldByName('nomer_PL').AsString;
  Sheet.Cells[index,3]:=TTTN.ADOTable1.FieldByName('gruzootpravitel').AsString;
  Sheet.Cells[index,4]:=TTTN.ADOTable1.FieldByName('gruzopoluchatel').AsString;
  Sheet.Cells[index,5]:=TTTN.ADOTable1.FieldByName('data').AsString;
  Sheet.Cells[index,6]:=TTTN.ADOTable1.FieldByName('gos').AsString;
  Sheet.Cells[index,7]:=TTTN.ADOTable1.FieldByName('naimenovanie_tovara').AsString;
  Sheet.Cells[index,8]:=TTTN.ADOTable1.FieldByName('kol').AsString;
   end;
 index:=index+1;
 TTTN.ADOTable1.Next;
 end;
 TTTN.ADOTable1.Close;
 TTTN.ADOTable1.Active:=true;
 end;
end;

procedure TForm1.N24Click(Sender: TObject);
Var XlApp,Sheet,Colum:Variant;
Index:integer;
d1,m1,y1,d2,y2,m2:word;
begin
 XLApp:= CreateOleObject('Excel.Application');
 XLApp.Visible:=true;
 XLApp.Workbooks.Add(-4167);
 XLApp.Workbooks[1].WorkSheets[1].Name:='Отчет';
 Colum:=XLApp.Workbooks[1].WorkSheets['Отчет'].Columns;
 Colum.Columns[1].ColumnWidth:=15;
 Colum.Columns[2].ColumnWidth:=15;
 Colum.Columns[3].ColumnWidth:=15;
 Colum.Columns[4].ColumnWidth:=15;
 Colum.Columns[5].ColumnWidth:=10;
 Colum.Columns[6].ColumnWidth:=10;
 Colum.Columns[7].ColumnWidth:=40;
 Colum.Columns[8].ColumnWidth:=15;

 Colum:=XLApp.Workbooks[1].WorkSheets['Отчет'].Rows;
 Colum.Rows[2].Font.Bold:=true;
 Colum.Rows[1].Font.Bold:=true;
 Colum.Rows[1].Font.Color:=clBlue;
 Colum.Rows[1].Font.Size:=14;

 Sheet:=XLApp.Workbooks[1].WorkSheets['Отчет'];
 Sheet.Cells[1,1]:='Отчет по ПЛ';
 Sheet.Cells[2,1]:='Номер ПЛ';
 Sheet.Cells[2,2]:='Дата';
 Sheet.Cells[2,3]:='Время выезда';
 Sheet.Cells[2,4]:='Время возврата';
 Sheet.Cells[2,5]:='Показания при выезде';
 Sheet.Cells[2,6]:='Показания при возврате';
 Sheet.Cells[2,7]:='ФИО водителя';
 Sheet.Cells[2,8]:='Госномер';
 index:=3;
 TPL.ADOTable1.First;
 TPL.ADOTable1.Open;
 while not TPL.ADOTable1.Eof do
 begin
 DecodeDate(StrToDate(TPL.ADOTable1data.text),y2,m2,d2);
 DecodeDate(Date,y1,m1,d1);
 if(y1=y2)and(m1=m2)and(TPL.ADOTable1akt.Text='0')then
  begin
  Sheet.Cells[index,1]:=TPL.ADOTable1.FieldByName('nomer_PL').AsString;
  Sheet.Cells[index,2]:=TPL.ADOTable1.FieldByName('data').AsString;
  Sheet.Cells[index,5]:=TPL.ADOTable1.FieldByName('pokazaniya_pri_vyezde').AsString;
  Sheet.Cells[index,6]:=TPL.ADOTable1.FieldByName('pokazaniya_pri_vozvrate').AsString;
  Sheet.Cells[index,7]:=TPL.ADOTable1.FieldByName('fio').AsString;
  Sheet.Cells[index,8]:=TPL.ADOTable1.FieldByName('gos').AsString;
  Sheet.Cells[index,3]:=TPL.ADOTable1.FieldByName('vremya_vyezda').AsString;
  Sheet.Cells[index,4]:=TPL.ADOTable1.FieldByName('vremya_vozvrata').AsString;
   end;
 index:=index+1;
 TPL.ADOTable1.Next;
 end;
 TPL.ADOTable1.Close;
 TPL.ADOTable1.Active:=true;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
MonthCalendar1.Date:=date;
end;

procedure TForm1.N19Click(Sender: TObject);
begin
TPL.Button1.Click;
end;

procedure TForm1.N25Click(Sender: TObject);
begin
TPL.ADOTable1.Active:=false;
TPL.ADOTable1.Active:=true;
TPL.ADOTable1.Filtered:=false;
TPL.ADOTable1.Filter:='akt=0';
TPL.ADOTable1.Filtered:=true;
TPL.Show;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
application.HelpCommand(HELP_CONTENTS,0);
end;

end.
