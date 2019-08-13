unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls;

type
  TTTop = class(TForm)
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    DBGrid1: TDBGrid;
    ADOTable1naimenovanie_topliva: TWideStringField;
    ADOTable1cena_topliva: TWideStringField;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label5: TLabel;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TTop: TTTop;

implementation

uses Unit17, Unit5, Unit20, Unit1;

{$R *.dfm}

procedure TTTop.Button1Click(Sender: TObject);
begin
ADOTable1.Append;
DTop.Show;
DTop.Label1.Visible:=true;
DTop.DBEdit1.Visible:=true;
end;

procedure TTTop.Button2Click(Sender: TObject);
begin
if TPLS.ADOTable1.RecordCount>0
then
Showmessage('Ќельз€ изменить данные, так как не рассчитаны некоторые значени€!')
else begin
ADOTable1.Edit;
DTop.Show;
DTop.Label1.Visible:=false;
DTop.DBEdit1.Visible:=false;

end;
end;

procedure TTTop.Button3Click(Sender: TObject);
begin
if messagedlg('¬ы действительно хотите удалить запись?',mtconfirmation,[mbyes,mbno],0)=mryes
then
if (TAvto.ADOTable1.Locate('naimenovanie_topliva', TTop.ADOTable1naimenovanie_topliva.Text, [LoCaseInsensitive, loPartialKey])=True)
 then
Showmessage('ƒанный вид топлива св€зан с автомобил€ми! ”далить невозможно!')
else
TTop.ADOtable1.Delete;
end;

procedure TTTop.Button4Click(Sender: TObject);
begin
Form1.Show;
end;

end.
