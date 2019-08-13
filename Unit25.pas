unit Unit25;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, printers;

type
  TForm25 = class(TForm)
    ListBox1: TListBox;
    Button1: TButton;
    Button2: TButton;
    SpinEdit1: TSpinEdit;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form25: TForm25;
  e2:variant;
implementation

uses Unit20;

{$R *.dfm}

procedure TForm25.FormShow(Sender: TObject);
var
a:integer;
pr:TPrinter;
begin
listbox1.Items.Clear;
pr:=tprinter.create;
for a:=0 to pr.printers.Count-1
do
listbox1.items.add(pr.printers[a]);
pr.Free;
listbox1.itemindex:=0;
end;

procedure TForm25.Button1Click(Sender: TObject);
begin
if TPLS.tag=3
then begin
deletefile('c:\temp.tmp2');
TPLS.e2.activeworkbook.activesheet.printout(activeprinter:=listbox1.items[listbox1.itemindex],copies:=spinedit1.value);
TPLS.e2.workbooks.item[1].saveas('c:\temp.tmp2',ReadOnlyRecommended:=false);
TPLS.e2.quit;
TPLS.e2:=unassigned;
Form25.close;
end;
end;

procedure TForm25.Button2Click(Sender: TObject);
begin
if TPLS.Tag=3
then begin
deletefile('c:\temp.tmp2');
TPLS.e2.workbooks.item[1].saveas('c:\temp.tmp2',ReadOnlyRecommended:=false);
TPLS.e2.quit;
TPLS.e2:=unassigned;
Form25.close;
end;
end;

end.
