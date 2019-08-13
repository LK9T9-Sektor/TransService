unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, Buttons, Mask, DBCtrls,
  jpeg, ExtCtrls;

type
  TTDisp = class(TForm)
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    DBGrid1: TDBGrid;
    ADOTable1kod_dispetchera: TWideStringField;
    ADOTable1FIO_dispetchera: TWideStringField;
    ADOTable1adres_dispetchera: TWideStringField;
    ADOTable1telefon_dispetchera: TWideStringField;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label8: TLabel;
    Label9: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    ComboBox2: TComboBox;
    Button4: TButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Button5: TButton;
    Image1: TImage;
    GroupBox1: TGroupBox;
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
  TDisp: TTDisp;

implementation

uses Unit14, Unit2, Unit20, Unit1;

{$R *.dfm}

procedure TTDisp.Button1Click(Sender: TObject);
begin
ADOTable1.Append;
DDisp.Show;
DDisp.DBEdit1.Visible:=true;
DDisp.Label1.Visible:=true;
end;

procedure TTDisp.Button2Click(Sender: TObject);
begin
if ((TPLS.ADOTable1.Locate('kod_dispetchera', TDisp.ADOTable1kod_dispetchera.Text, [LoCaseInsensitive, loPartialKey])=True) and (TPLS.ADOTable1akt.Text='1'))
then
showmessage('Данный диспетчер задействован, изменить невозможно!')
else begin
ADOTable1.Edit;
DDisp.Show;
DDisp.DBEdit1.Visible:=false;
DDisp.Label1.Visible:=false;
end;
end;

procedure TTDisp.Button3Click(Sender: TObject);
begin
if ((TPLS.ADOTable1.Locate('kod_dispetchera', TDisp.ADOTable1kod_dispetchera.Text, [LoCaseInsensitive, loPartialKey])=True) and (TPLS.ADOTable1akt.Text='1'))
then showmessage('Данный диспетчер задействован, удалить невозможно')
else
if messagedlg('Вы действительно хотите удалить запись?',mtconfirmation,[mbyes,mbno],0)=mryes
then
TDisp.ADOtable1.Delete;
end;

procedure TTDisp.Button4Click(Sender: TObject);
begin
TDisp.ADOTable1.First;
if TDisp.ComboBox2.Text='Код диспетчера'
then
if (TDisp.ADOTable1.Locate('Kod_dispetchera',TDisp.Edit1.Text,[])=true)
then begin
TDisp.ADOTable1.Locate('Kod_dispetchera',TDisp.Edit1.Text,[]);
showmessage('Диспетчер найден');
end
else
showmessage('Диспетчер не найден, такого нет!')
else
if TDisp.ComboBox2.Text='ФИО диспетчера'
then
if (TDisp.ADOTable1.Locate('FIO_dispetchera',TDisp.Edit1.Text,[])=true)
then begin
TDisp.ADOTable1.Locate('FIO_dispetchera',TDisp.Edit1.Text,[]);
showmessage('Диспетчер найден');
end
else
showmessage('Диспетчер не найден, такого нет!');
end;

procedure TTDisp.BitBtn1Click(Sender: TObject);
begin
TDisp.ADOTable1.Prior;
end;

procedure TTDisp.BitBtn2Click(Sender: TObject);
begin
TDisp.ADOTable1.Next;
end;

procedure TTDisp.Button5Click(Sender: TObject);
begin
Form1.show;
end;

end.
