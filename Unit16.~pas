unit Unit16;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls;

type
  TDPr = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DPr: TDPr;
  gp:integer;

implementation

uses Unit6, Unit5;

{$R *.dfm}

procedure TDPr.Button1Click(Sender: TObject);
begin
if ((DBEdit1.Text='') or (DBEdit2.Text='') or (DBEdit3.Text='') or (DBEdit4.Text='') or (DBEdit5.Text=''))
then Showmessage('¬ведите полные данные о прицепе!')
else

try
TPr.ADOTable1.Filtered:=False;
if TPr.Tag=1
then begin
Tavto.ADOTable1.Edit;
TAvto.ADOTable1obchiy_obem.Text:= inttostr(Strtoint(TAvto.ADOTable1obem_vmechaemogo_gruza.Text)+strtoint(Dpr.DBEdit5.Text));
TAvto.ADOTable1obchaya_gruzopodemnost.Text:= inttostr(Strtoint(TAvto.ADOTable1gruzopodemnost.Text)+strtoint(DPr.DBEdit4.Text));
TAvto.ADOTable1gosnomer_pricepa.Text:=DPr.DBEdit1.Text;
TAvto.ADOTable1.Post;
TPr.ADOTable1zp.Text:='1';
TPr.ADOTable1.Post;
DPr.Close;
end
else begin
TPr.ADOTable1zp.Text:='0';
TPr.ADOTable1.Post;
DPr.Close;
end;
except
showmessage('ѕрицеп с данным госномером уже существует!');
end;
end;

procedure TDPr.Button2Click(Sender: TObject);
begin
TPr.ADOTable1.Cancel;
DPr.Close;
end;

procedure TDPr.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0','1','2','3','4','5','6','7','8','9',char(8)])
then
key:=#0;
end;

procedure TDPr.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0','1','2','3','4','5','6','7','8','9',char(8)])
then
key:=#0;
end;

end.
