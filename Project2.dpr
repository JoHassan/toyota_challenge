program Project2;

uses
  Vcl.Forms,
  Unit2 in 'Unit2.pas' {Form2},
  dbmodule in 'dbmodule.pas' {DataModule3: TDataModule},
  Unit3 in 'Unit3.pas' {addEditEmployee},
  Unit1 in 'Unit1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDataModule3, DataModule3);
  Application.CreateForm(TaddEditEmployee, addEditEmployee);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
