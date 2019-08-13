unit Unit24;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, printers;

type
  TForm24 = class(TForm)
    ListBox1: TListBox;
    Button1: TButton;
    Button2: TButton;
    SpinEdit1: TSpinEdit;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form24: TForm24;
  e1:variant;
implementation

uses Unit2;

{$R *.dfm}

procedure TForm24.FormShow(Sender: TObject);
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

procedure TForm24.Button2Click(Sender: TObject);
begin
if TPL.Tag=2
then begin
deletefile('c:\temp.tmp1');
TPL.e1.workbooks.item[1].saveas('c:\temp.tmp1',ReadOnlyRecommended:=false);
TPL.e1.quit;
TPL.e1:=unassigned;
Form24.close;
end;
end;

procedure TForm24.Button1Click(Sender: TObject);
begin
if TPL.tag=2
then begin
deletefile('c:\temp.tmp1');
TPL.e1.activeworkbook.activesheet.printout(activeprinter:=listbox1.items[listbox1.itemindex],copies:=spinedit1.value);
TPL.e1.workbooks.item[1].saveas('c:\temp.tmp1',ReadOnlyRecommended:=false);
TPL.e1.quit;
TPL.e1:=unassigned;
Form24.close;
end;
end;

end.
