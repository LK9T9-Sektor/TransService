unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls;

type
  TDZad = class(TForm)
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
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
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
  DZad: TDZad;

implementation

uses Unit4, Unit5;

{$R *.dfm}

procedure TDZad.Button1Click(Sender: TObject);
begin
if ((DBEdit1.Text='') or (DBEdit2.Text='') or (DBEdit3.Text='') or (DBEdit4.Text='') or (DBEdit5.Text='') or (DBEdit6.Text='') or (DBEdit7.Text='') or (DBEdit8.Text=''))
then Showmessage('Введите полные данные о задании!')
else

try
TZad.adotable1.post;
DZad.Close;

except
showmessage('Задание с данным кодом уже существует!');
end;
end;

procedure TDZad.Button2Click(Sender: TObject);
begin
TZad.ADOTable1.Cancel;
DZad.Close;
end;

end.
