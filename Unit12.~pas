unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, jpeg, ExtCtrls;

type
  TDPL = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
  p1:string;
    { Public declarations }
  end;

var
  DPL: TDPL;

implementation

uses Unit2, Unit5, Unit6, Unit7, Unit9, Unit3, Unit20, Unit18, Unit8,
  Unit10;

{$R *.dfm}

procedure TDPL.Button1Click(Sender: TObject);
begin
if ((DBEdit1.Text='') or (DBEdit2.Text='') or (DBEdit3.Text='') or (DBEdit4.Text='') or (DBEdit5.Text='') or (DBEdit6.Text='') or (DBEdit8.Text='') or (DBEdit10.Text=''))
then Showmessage('¬ведите полные данные о путевых листах!')
else
if (DPL.RadioButton1.Checked=false) and (DPL.RadioButton2.Checked=false)
then Showmessage('¬ыберите по данному путевому листу автомобиль будет с грузом или нет!')
else

try


{TPL.adotable1.post;
DPL.Close;}
if DPL.RadioButton1.Checked=true
then
if (TPLS.ADOTable1.Locate('kod_voditelya', DPL.DBLookupComboBox1.Text, [])=True) and (TPLS.ADOTable1.Locate('data', DateToStr(Date), [])=True)
then
Showmessage('¬ыберите другого водител€, данный уже используетс€!')
else begin
TPL.ADOTable1fiod.Text:=TDisp.ADOTable1.Lookup('kod_dispetchera', DPL.DBLookupComboBox2.Text, 'FIO_dispetchera');
TPL.ADOTable1fiom.Text:=TMex.ADOTable1.Lookup('kod_mexanika', DPL.DBLookupComboBox3.Text, 'FIO_mexanika');
TPL.ADOTable1gos.Text:=TAvto.ADOTable1.Lookup('kod_avtomobilya', TVod.ADOTable1.Lookup('kod_voditelya', DPL.DBLookupComboBox1.Text, 'kod_avtomobilya'), 'gosnomer');
TPL.ADOTable1gosnomer_pricepa.Text:=TAvto.ADOTable1.Lookup('kod_avtomobilya', TVod.ADOTable1.Lookup('kod_voditelya', DPL.DBLookupComboBox1.Text, 'kod_avtomobilya'), 'gosnomer_pricepa');
TPL.ADOTable1fio.Text:=TVod.ADOTable1.Lookup('kod_voditelya', DPL.DBLookupComboBox1.Text, 'FIO_voditelya');
DPL.DBEdit7.Text:='1';
DPL.Edit1.Text:=DPL.DBEdit4.Text;
 p1:=DPL.DBEdit4.Text;
TPL.adotable1.post;
DPL.Close;
TPLS.ADOTable1.Active:=false;
TPLS.ADOTable1.Active:=true;
TPLS.ADOTable1.Filtered:=false;
TPLS.ADOTable1.Filter:='akt=1';
TPLS.ADOTable1.Filtered:=true;
TVod.ADOTable1.Filtered:=false;
TPLS.ADOTable1.Locate('nomer_PL', p1, []);
TPLS.Button5.Click;
TTTN.Button1.Click;
DTTN.DBEdit2.Text:=DPL.Edit1.Text;
end
else
if DPL.RadioButton2.Checked=true
then
if (TPLS.ADOTable1.Locate('kod_voditelya', DPL.DBLookupComboBox1.Text, [])=True) and (TPLS.ADOTable1.Locate('data', DateToStr(Date), [])=True)
then
Showmessage('¬ыберите другого водител€, данный уже используетс€!')
else begin
DPL.DBEdit7.Text:='1';
TPL.ADOTable1fiod.Text:=TDisp.ADOTable1.Lookup('kod_dispetchera', DPL.DBLookupComboBox2.Text, 'FIO_dispetchera');
TPL.ADOTable1fiom.Text:=TMex.ADOTable1.Lookup('kod_mexanika', DPL.DBLookupComboBox3.Text, 'FIO_mexanika');
TPL.ADOTable1gos.Text:=TAvto.ADOTable1.Lookup('kod_avtomobilya', TVod.ADOTable1.Lookup('kod_voditelya', DPL.DBLookupComboBox1.Text, 'kod_avtomobilya'), 'gosnomer');
TPL.ADOTable1fio.Text:=TVod.ADOTable1.Lookup('kod_voditelya', DPL.DBLookupComboBox1.Text, 'FIO_voditelya');
TPL.ADOTable1gosnomer_pricepa.Text:=TAvto.ADOTable1.Lookup('kod_avtomobilya', TVod.ADOTable1.Lookup('kod_voditelya', DPL.DBLookupComboBox1.Text, 'kod_avtomobilya'), 'gosnomer_pricepa');
p1:=DPL.DBEdit4.Text;
TPL.adotable1.post;
DPL.Close;
TPLS.ADOTable1.Active:=false;
TPLS.ADOTable1.Active:=true;
TPLS.ADOTable1.Filtered:=false;
TPLS.ADOTable1.Filter:='akt=1';
TPLS.ADOTable1.Filtered:=true;
TVod.ADOTable1.Filtered:=false;
TPLS.ADOTable1.Locate('nomer_PL', p1, []);
TPLS.Button5.Click;
end;
except
showmessage('ѕутевой лист с данным кодом уже существует!');
end;
end;

procedure TDPL.Button2Click(Sender: TObject);
begin
TPL.ADOTable1.Cancel;
DPL.Close;
TVod.ADOTable1.Filtered:=false;
end;

procedure TDPL.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0','1','2','3','4','5','6','7','8','9',char(8)])
then
key:=#0;
end;

procedure TDPL.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0','1','2','3','4','5','6','7','8','9',',',char(8)])
then
key:=#0;
end;

procedure TDPL.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0','1','2','3','4','5','6','7','8','9',char(8)])
then
key:=#0;
end;

end.
