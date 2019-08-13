unit Unit23;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin,printers;

type
  TForm23 = class(TForm)
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

  Form23: TForm23;
  e:variant;
implementation

uses Unit3, Unit2, Unit20;

{$R *.dfm}

procedure TForm23.FormShow(Sender: TObject);
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

procedure TForm23.Button1Click(Sender: TObject);
begin
if TTTN.tag=1
then begin
deletefile('c:\temp.tmp');
TTTN.e.activeworkbook.activesheet.printout(activeprinter:=listbox1.items[listbox1.itemindex],copies:=spinedit1.value);
TTTN.e.workbooks.item[1].saveas('c:\temp.tmp',ReadOnlyRecommended:=false);
TTTN.e.quit;
TTTN.e:=unassigned;
Form23.close;
end;
{if TPL.tag=2
then begin
TPL.e1.activeworkbook.activesheet.printout(activeprinter:=listbox1.items[listbox1.itemindex],copies:=spinedit1.value);
TPL.e1.workbooks.item[1].saveas('c:\temp.tmp',ReadOnlyRecommended:=false);
deletefile('c:\temp.tmp');
TPL.e1.quit;
TPL.e1:=unassigned;
Form23.close;
end;
if TPLS.tag=3
then begin
TPLS.e2.activeworkbook.activesheet.printout(activeprinter:=listbox1.items[listbox1.itemindex],copies:=spinedit1.value);
TPLS.e2.workbooks.item[1].saveas('c:\temp.tmp',ReadOnlyRecommended:=false);
deletefile('c:\temp.tmp');
TPLS.e2.quit;
TPLS.e2:=unassigned;
Form23.close;
end;}
end;

procedure TForm23.Button2Click(Sender: TObject);
begin
if TTTN.Tag=1
then begin
deletefile('c:\temp.tmp');
TTTN.e.workbooks.item[1].saveas('c:\temp.tmp',ReadOnlyRecommended:=false);
TTTN.e.quit;
TTTN.e:=unassigned;
Form23.close;
end;
{if TPL.Tag=2
then begin
TPL.e1.workbooks.item[1].saveas('c:\temp.tmp',ReadOnlyRecommended:=false);
deletefile('c:\temp.tmp');
TPL.e1.quit;
TPL.e1:=unassigned;
Form23.close;
end;
if TPLS.Tag=3
then begin
TPLS.e2.workbooks.item[1].saveas('c:\temp.tmp',ReadOnlyRecommended:=false);
deletefile('c:\temp.tmp');
TPLS.e2.quit;
TPLS.e2:=unassigned;
Form23.close;
end;}
end;
end.
