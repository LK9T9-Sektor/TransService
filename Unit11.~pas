unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, jpeg, ExtCtrls;

type
  TDAvto = class(TForm)
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    DBComboBox1: TDBComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Edit1: TEdit;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  DAvto: TDAvto;

implementation

uses Unit5, Unit6, Unit17, Unit20;
 var
 s:string;
{$R *.dfm}

procedure TDAvto.Button1Click(Sender: TObject);
begin
if ((DBEdit1.Text='') or (DBEdit3.Text='') or (DBEdit4.Text='') or (DBEdit7.Text='') or (DBEdit2.Text='') or (DBEdit10.Text='') or (DBComboBox1.Text='') or (DBLookupComboBox2.Text=''))
then Showmessage('¬ведите полные данные об автомобиле!')
else

try
if TAvto.ADOTable1nal_pricepa.text='есть'
then
if DAvto.DBLookupComboBox1.Text=''
then begin
TAvto.ADOTable1zp.Text:='0';
TAvto.ADOTable1gosnomer_pricepa.Text:='';
TAvto.ADOTable1obchiy_obem.Text:= inttostr(Strtoint(TAvto.ADOTable1obem_vmechaemogo_gruza.Text));
TAvto.ADOTable1obchaya_gruzopodemnost.Text:= inttostr(Strtoint(TAvto.ADOTable1gruzopodemnost.Text));
TAvto.Adotable1.post;
DAvto.Close;
end
else begin
s:=DAvto.DBLookupComboBox1.Text;
DAvto.DBEdit5.Text:='1';
TAvto.ADOTable1obchiy_obem.Text:= inttostr(Strtoint(TAvto.ADOTable1obem_vmechaemogo_gruza.Text)+strtoint(TPr.ADOTable1.Lookup('gosnomer_pricepa', Tavto.ADOTable1gosnomer_pricepa.Text, 'obem_gruza')));
TAvto.ADOTable1obchaya_gruzopodemnost.Text:= inttostr(Strtoint(TAvto.ADOTable1gruzopodemnost.Text)+strtoint(TPr.ADOTable1.Lookup('gosnomer_pricepa', Tavto.ADOTable1gosnomer_pricepa.Text, 'gruzopodemnost_pricepa')));
TAvto.Adotable1.post;
TPr.ADOTable1.Locate('gosnomer_pricepa',s,[]);
TPr.ADOTable1.Edit;
TPr.ADOTable1zp.Text:='1';
TPr.Adotable1.post;
DAvto.Close;
end
else begin
TAvto.ADOTable1zp.Text:='0';
TAvto.ADOTable1gosnomer_pricepa.Text:='';
TAvto.ADOTable1obchiy_obem.Text:= inttostr(Strtoint(TAvto.ADOTable1obem_vmechaemogo_gruza.Text));
TAvto.ADOTable1obchaya_gruzopodemnost.Text:= inttostr(Strtoint(TAvto.ADOTable1gruzopodemnost.Text));
TAvto.Adotable1.post;
DAvto.Close;
end;
TAvto.ADOTable1.Filtered:=false;
TPr.ADOTable1.Filtered:=false;
TPr.ADOTable1.Active:=false;
TPr.ADOTable1.Active:=true;
except
showmessage('јвтомобиль с данным кодом уже существует!');
end;
end;

procedure TDAvto.Button2Click(Sender: TObject);
begin
TAvto.ADOTable1.Cancel;
DAvto.Close;
TAvto.ADOTable1.Filtered:=false;
end;

procedure TDAvto.DBComboBox1Change(Sender: TObject);
begin
if DAvto.DBComboBox1.Text='есть'
then begin
TPr.ADOTable1.Active:=false;
TPr.ADOTable1.Active:=true;
TPr.ADOTable1.Filtered:=false;
TPr.ADOTable1.Filter:='zp=0';
TPr.ADOTable1.Filtered:=true;
DAvto.DBLookupComboBox1.Visible:=true;
end
else
DAvto.DBLookupComboBox1.Visible:=false;
end;

procedure TDAvto.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0','1','2','3','4','5','6','7','8','9',char(8)])
then
key:=#0;
end;

procedure TDAvto.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0','1','2','3','4','5','6','7','8','9',char(8)])
then
key:=#0;
end;

procedure TDAvto.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0','1','2','3','4','5','6','7','8','9',',',char(8)])
then
key:=#0;
end;

procedure TDAvto.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0','1','2','3','4','5','6','7','8','9',char(8)])
then
key:=#0;
end;

end.
