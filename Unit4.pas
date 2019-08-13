unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls, ExtCtrls;

type
  TTZad = class(TForm)
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    DBGrid1: TDBGrid;
    ADOTable1kod_zadaniya: TWideStringField;
    ADOTable1data: TWideStringField;
    ADOTable1nomer_PL: TWideStringField;
    ADOTable1kod_voditelya: TWideStringField;
    ADOTable1adres_mesta_pogruzki: TWideStringField;
    ADOTable1adres_mesta_razgruzki: TWideStringField;
    ADOTable1naimenovanie_tovara: TWideStringField;
    ADOTable1kolichestvo_tovara: TWideStringField;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TZad: TTZad;

implementation

uses Unit13;

{$R *.dfm}

procedure TTZad.Button1Click(Sender: TObject);
begin
ADOTable1.Append;
DZad.Show;
end;

procedure TTZad.Button2Click(Sender: TObject);
begin
ADOTable1.Edit;
DZad.Show;
end;

procedure TTZad.Button3Click(Sender: TObject);
begin
if messagedlg('Вы действительно хотите удалить запись?',mtconfirmation,[mbyes,mbno],0)=mryes
then
begin
try
TZad.ADOtable1.Delete;
except
Showmessage('Данное задание закреплено за водителем! Удалить невозможно!');
end;
end;
end;

end.
