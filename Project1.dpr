program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {TPL},
  Unit3 in 'Unit3.pas' {TTTN},
  Unit4 in 'Unit4.pas' {TZad},
  Unit5 in 'Unit5.pas' {TAvto},
  Unit6 in 'Unit6.pas' {TPr},
  Unit7 in 'Unit7.pas' {TVod},
  Unit8 in 'Unit8.pas' {TDisp},
  Unit9 in 'Unit9.pas' {TTop},
  Unit10 in 'Unit10.pas' {TMex},
  Unit11 in 'Unit11.pas' {DAvto},
  Unit12 in 'Unit12.pas' {DPL},
  Unit13 in 'Unit13.pas' {DZad},
  Unit14 in 'Unit14.pas' {DDisp},
  Unit15 in 'Unit15.pas' {DMex},
  Unit16 in 'Unit16.pas' {DPr},
  Unit17 in 'Unit17.pas' {DTop},
  Unit18 in 'Unit18.pas' {DTTN},
  Unit19 in 'Unit19.pas' {DVod},
  Unit20 in 'Unit20.pas' {TPLS},
  Unit21 in 'Unit21.pas' {DPLS},
  Unit23 in 'Unit23.pas' {Form23},
  Unit24 in 'Unit24.pas' {Form24},
  Unit25 in 'Unit25.pas' {Form25},
  Unit22 in 'Unit22.pas' {Form22};

// Unit25 in 'Unit25.pas' {Form25}

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Transport';
  Application.HelpFile := 'D:\������_���\�����\EXAMPLE.HLP';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TTPL, TPL);
  Application.CreateForm(TTTTN, TTTN);
  Application.CreateForm(TTZad, TZad);
  Application.CreateForm(TTAvto, TAvto);
  Application.CreateForm(TTPr, TPr);
  Application.CreateForm(TTVod, TVod);
  Application.CreateForm(TTDisp, TDisp);
  Application.CreateForm(TTTop, TTop);
  Application.CreateForm(TTMex, TMex);
  Application.CreateForm(TDAvto, DAvto);
  Application.CreateForm(TDPL, DPL);
  Application.CreateForm(TDZad, DZad);
  Application.CreateForm(TDDisp, DDisp);
  Application.CreateForm(TDMex, DMex);
  Application.CreateForm(TDPr, DPr);
  Application.CreateForm(TDTop, DTop);
  Application.CreateForm(TDTTN, DTTN);
  Application.CreateForm(TDVod, DVod);
  Application.CreateForm(TTPLS, TPLS);
  Application.CreateForm(TDPLS, DPLS);
  Application.CreateForm(TForm23, Form23);
  Application.CreateForm(TForm24, Form24);
  Application.CreateForm(TForm25, Form25);
  Application.CreateForm(TForm25, Form25);
  Application.CreateForm(TForm22, Form22);
  Application.Run;
end.
