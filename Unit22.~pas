unit Unit22;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm22 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form22: TForm22;

implementation

uses unit1;

{$R *.dfm}

procedure TForm22.Button1Click(Sender: TObject);
begin
if Form22.ComboBox1.Text='ƒиспетчер'
then
if Form22.Edit1.Text='1111'
then begin
Form1.n2.visible:=True;
Form1.n3.visible:=True;
Form1.n8.visible:=True;
Form1.n9.visible:=True;
Form1.n10.visible:=True;
Form1.n11.visible:=True;
Form1.n18.visible:=True;
Form1.n21.visible:=True;
Form22.Close;
Form1.AlphaBlend:=false;
{Form1.Visible:=true;}
end
else
Showmessage('¬веден неверный пароль')
else
if Form22.ComboBox1.Text='ћеханик'
then
if Form22.Edit1.Text='2222'
then begin
Form1.n2.visible:=False;
Form1.n3.visible:=False;
Form1.n8.visible:=False;
Form1.n9.visible:=False;
Form1.n10.visible:=False;
Form1.n11.visible:=False;
Form1.n18.visible:=False;
Form1.n21.visible:=False;
Form22.Close;
Form1.AlphaBlend:=false;
{Form1.Visible:=true; }
end
else
Showmessage('¬веден неверный пароль');
end;

procedure TForm22.Button2Click(Sender: TObject);
begin
Form22.Close;
Form1.Close;
end;

end.
