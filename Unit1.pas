unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, dbmodule;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    cancelBtn: TButton;
    confrimBtn: TButton;
    procedure confrimBtnClick(Sender: TObject);
    procedure cancelBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.cancelBtnClick(Sender: TObject);
begin
close;
end;

procedure TForm1.confrimBtnClick(Sender: TObject);
begin
if (dbmodule.DataModule3.SQLConnection1.connected) AND (dbmodule.DataModule3.employeeDataSet.IsEmpty= false) then
begin
  dbmodule.DataModule3.SQLQuery1.SQL.Clear;
  dbmodule.DataModule3.SQLQuery1.SQL.Add('DELETE FROM `classicmodels`.`employees`  ');
  dbmodule.DataModule3.SQLQuery1.SQL.Add('WHERE (`employeeNumber` ='+dbmodule.DataModule3.employeeDataSetemployeeNumber.text+') ');
  dbmodule.DataModule3.SQLQuery1.ExecSQL(TRUE);
  dbmodule.DataModule3.updateDataSet;
  close;
end;
end;

end.
