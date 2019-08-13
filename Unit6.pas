unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, Buttons, jpeg, ExtCtrls;

type
  TTPr = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ADOTable1: TADOTable;
    ADOTable1gosnomer_pricepa: TWideStringField;
    ADOTable1vid_pricepa: TWideStringField;
    ADOTable1model_pricepa: TWideStringField;
    ADOTable1gruzopodemnost_pricepa: TWideStringField;
    ADOTable1obem_gruza: TWideStringField;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ADOTable1zp: TWideStringField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Button4: TButton;
    Label8: TLabel;
    ComboBox1: TComboBox;
    Label9: TLabel;
    Edit1: TEdit;
    Button5: TButton;
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
  TPr: TTPr;
  gp:integer;
implementation

uses Unit16, Unit5, Unit20, Unit1;

{$R *.dfm}

procedure TTPr.Button1Click(Sender: TObject);
begin
TPr.Tag:=0;
ADOTable1.Append;
DPr.Show;
DPr.Label1.Visible:=true;
DPr.DBEdit1.Visible:=true;
end;

procedure TTPr.Button2Click(Sender: TObject);
begin
if ((TPLS.ADOTable1.Locate('gosnomer_pricepa',TPr.ADOTable1gosnomer_pricepa.text,[])=True) and (TPLS.ADOTable1akt.Text='1'))
then
showmessage('������ ������ ������������, �������� ����������!!!')
else begin
if (TAvto.ADOTable1.Locate('gosnomer_pricepa',TPr.ADOTable1gosnomer_pricepa.text,[])=True)
then
TPr.tag:=1
else
TPr.tag:=0;
TPr.ADOTable1.Edit;
DPr.Show;
DPr.Label1.Visible:=false;
DPr.DBEdit1.Visible:=false;
end;
end;

procedure TTPr.Button3Click(Sender: TObject);
begin
{if messagedlg('�� ������������� ������ ������� ������?',mtconfirmation,[mbyes,mbno],0)=mryes
then
if (TAvto.ADOTable1.Locate('gosnomer_pricepa', TPR.ADOTable1gosnomer_pricepa.Text, [LoCaseInsensitive, loPartialKey])=True)
 then
Showmessage('������ ������ ������ � ������������! ������� ����������!')
else
TPr.ADOtable1.Delete;
end;}
if (TPLS.ADOTable1.Locate('gosnomer_pricepa', TPr.ADOTable1gosnomer_pricepa.Text, [LoCaseInsensitive, loPartialKey])=True) and (TPLS.ADOTable1akt.Text='1')
then showmessage('������ ������ ������������, ������� ����������')
else
if messagedlg('�� ������������� ������ ������� ������?',mtconfirmation,[mbyes,mbno],0)=mryes
then
if (TAvto.ADOTable1.Locate('gosnomer_pricepa', TPr.ADOTable1gosnomer_pricepa.Text, [LoCaseInsensitive, loPartialKey])=True)
 then
if messagedlg('������ ������ ��������� �� �����������!!! �� ������������� ������ ������� ������?  ',mtconfirmation,[mbyes,mbno],0)=mryes
then begin
TAvto.ADOTable1.Locate('gosnomer_pricepa', TAvto.ADOTable1gosnomer_pricepa.Text, []);
TAvto.ADOTable1.Edit;
TAvto.ADOTable1zp.Text:='0';
TAvto.ADOTable1obchiy_obem.Text:= inttostr(Strtoint(TAvto.ADOTable1obem_vmechaemogo_gruza.Text));
TAvto.ADOTable1obchaya_gruzopodemnost.Text:= inttostr(Strtoint(TAvto.ADOTable1gruzopodemnost.Text));
TAvto.ADOTable1gosnomer_pricepa.Text:='';
TAvto.Adotable1.post;
TPr.ADOTable1.Delete;
end
else begin
TPr.ADOTable1.Edit;
TPr.ADOTable1zp.Text:='1';
TPr.ADOTable1.Post;
end
else
Tpr.ADOTable1.Delete
else begin
TPr.ADOTable1.Edit;
TPr.ADOTable1zp.Text:='0';
TPr.Adotable1.post;
end;
end;

procedure TTPr.BitBtn1Click(Sender: TObject);
begin
TPR.ADOTable1.Prior;
end;

procedure TTPr.BitBtn2Click(Sender: TObject);
begin
TPr.ADOTable1.Next;
end;

procedure TTPr.Button4Click(Sender: TObject);
begin
Form1.show;
end;

procedure TTPr.Button5Click(Sender: TObject);
begin
TPr.ADOTable1.First;
if TPr.ComboBox1.Text='��������'
then
if (TPr.ADOTable1.Locate('gosnomer_pricepa',TPr.Edit1.Text,[])=true)
then begin
TPr.ADOTable1.Locate('gosnomer_pricepa',TPr.Edit1.Text,[]);
showmessage('������ ������');
end
else
showmessage('������ �� ������, ������ ���!')
else
showmessage('������� ������������ ������!');
end;

end.
