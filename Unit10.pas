unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, Mask, DBCtrls, Buttons,
  jpeg, ExtCtrls;

type
  TTMex = class(TForm)
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    DBGrid1: TDBGrid;
    ADOTable1kod_mexanika: TWideStringField;
    ADOTable1FIO_mexanika: TWideStringField;
    ADOTable1telefon_mex: TWideStringField;
    ADOTable1adres_mex: TWideStringField;
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
    GroupBox1: TGroupBox;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TMex: TTMex;

implementation

uses Unit15, Unit2, Unit20, Unit1;

{$R *.dfm}

procedure TTMex.Button1Click(Sender: TObject);
begin
ADOTable1.Append;
DMex.Show;
DMex.DBEdit1.Visible:=true;
DMex.Label1.Visible:=true;
end;

procedure TTMex.Button2Click(Sender: TObject);
begin
if ((TPLS.ADOTable1.Locate('kod_mexanika', TMex.ADOTable1kod_mexanika.Text, [LoCaseInsensitive, loPartialKey])=True) and (TPLS.ADOTable1akt.Text='1'))
then showmessage('Данный механик задействован, изменить невозможно')
else begin
ADOTable1.Edit;
DMex.Show;
DMex.DBEdit1.Visible:=false;
DMex.Label1.Visible:=false;
end;
end;

procedure TTMex.Button3Click(Sender: TObject);
begin
if ((TPLS.ADOTable1.Locate('kod_mexanika', TMex.ADOTable1kod_mexanika.Text, [LoCaseInsensitive, loPartialKey])=True) and (TPLS.ADOTable1akt.Text='1'))
then showmessage('Данный механик задействован, удалить невозможно')
else
if messagedlg('Вы действительно хотите удалить запись?',mtconfirmation,[mbyes,mbno],0)=mryes
then
TMex.ADOtable1.Delete;
end;

procedure TTMex.BitBtn1Click(Sender: TObject);
begin
TMex.ADOTable1.Prior;
end;

procedure TTMex.BitBtn2Click(Sender: TObject);
begin
TMex.ADOTable1.Next;
end;

procedure TTMex.Button4Click(Sender: TObject);
begin
TMex.ADOTable1.First;
if TMex.ComboBox2.Text='Код механика'
then
if (TMex.ADOTable1.Locate('Kod_mexanika',TMex.Edit1.Text,[])=true)
then begin
TMex.ADOTable1.Locate('Kod_mexanika',TMex.Edit1.Text,[]);
showmessage('Механик найден');
end
else
showmessage('Механик не найден, такого нет!')
else
if TMex.ComboBox2.Text='ФИО механика'
then
if (TMex.ADOTable1.Locate('FIO_mexanika',TMex.Edit1.Text,[])=true)
then begin
TMex.ADOTable1.Locate('FIO_mexanika',TMex.Edit1.Text,[]);
showmessage('Механик найден');
end
else
showmessage('Механик не найден, такого нет!');
end;

procedure TTMex.Button5Click(Sender: TObject);
begin
Form1.show;
end;

end.
