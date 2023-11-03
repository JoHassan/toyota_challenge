unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TaddEditEmployee = class(TForm)
    Label1: TLabel;
    firstNameEdit: TEdit;
    Label2: TLabel;
    lastNameEdit: TEdit;
    Label3: TLabel;
    emailEdit: TEdit;
    Label4: TLabel;
    extensionEdit: TEdit;
    Label5: TLabel;
    officeCodeEdit: TEdit;
    Label6: TLabel;
    jobTitleEdit: TEdit;
    Label8: TLabel;
    cancelBtn: TButton;
    confrimBtn: TButton;
    idSpinEdit: TSpinEdit;
    procedure confrimBtnClick(Sender: TObject);
    procedure cancelBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure addUser();
    procedure editUser();
  private
    { Private declarations }
  public
    { Public declarations }
    var toAdd:boolean;
  end;

var
  addEditEmployee: TaddEditEmployee;

implementation

{$R *.dfm}

uses dbmodule;

procedure TaddEditEmployee.addUser;
begin
  dbmodule.DataModule3.SQLQuery1.SQL.Clear;
  dbmodule.DataModule3.SQLQuery1.SQL.Add('INSERT INTO `classicmodels`.`employees` ');
  dbmodule.DataModule3.SQLQuery1.SQL.Add('(`employeeNumber`, `lastName`, `firstName`, `extension`, ');
  dbmodule.DataModule3.SQLQuery1.SQL.Add(' `email`, `officeCode`, `jobTitle`) ');
  dbmodule.DataModule3.SQLQuery1.SQL.Add('VALUES ('+IntToStr(idSpinEdit.Value)+', '''+lastNameEdit.text+''', ');
  dbmodule.DataModule3.SQLQuery1.SQL.Add(''''+firstNameEdit.text+''', '''+extensionEdit.text+''',');
  dbmodule.DataModule3.SQLQuery1.SQL.Add(''''+emailEdit.text+''', '''+officeCodeEdit.text+''', ');
  dbmodule.DataModule3.SQLQuery1.SQL.Add(''''+jobTitleEdit.text+''');');
  dbmodule.DataModule3.SQLQuery1.ExecSQL(TRUE);
end;

procedure TaddEditEmployee.cancelBtnClick(Sender: TObject);
begin
close;
end;

procedure TaddEditEmployee.confrimBtnClick(Sender: TObject);
var exit:boolean;
begin
exit:=false;
if idSpinEdit.Value= 0 then exit:= true;
if firstNameEdit.Text= '' then exit:= true;
if lastNameEdit.Text= '' then exit:= true;
if emailEdit.Text= '' then exit:= true;
if extensionEdit.Text= '' then exit:= true;
if officeCodeEdit.Text= '' then exit:= true;
if jobTitleEdit.Text= '' then exit:= true;
if (not exit) and dbmodule.DataModule3.SQLConnection1.connected then
  begin
  if toAdd then addUser else editUser;
  dbmodule.DataModule3.updateDataSet;
  close;
  end;

end;

procedure TaddEditEmployee.editUser;
begin
//UPDATE `classicmodels`.`employees` SET
//`employeeNumber` = '444', `lastName` = 'Kings',
//`firstName` = 'Toms', `extension` = 'x103s', `email` = 'tking@classicmodelcars.coms',
// `officeCode` = '4', `jobTitle` = 'Sales Reps'
//  WHERE (`employeeNumber` = '1619');
  dbmodule.DataModule3.SQLQuery1.SQL.Clear;
  dbmodule.DataModule3.SQLQuery1.SQL.Add('UPDATE `classicmodels`.`employees` SET ');
  dbmodule.DataModule3.SQLQuery1.SQL.Add('`employeeNumber` = '+IntToStr(idSpinEdit.Value)+', `lastName` = '''+lastNameEdit.text+''', ');
  dbmodule.DataModule3.SQLQuery1.SQL.Add('`firstName` = '''+firstNameEdit.text+''', ');
  dbmodule.DataModule3.SQLQuery1.SQL.Add('`extension` = '''+extensionEdit.text+''', `email` = '''+emailEdit.text+''', ');
  dbmodule.DataModule3.SQLQuery1.SQL.Add('`officeCode` = '''+officeCodeEdit.text+''', `jobTitle` = '''+jobTitleEdit.text+''' ');
  dbmodule.DataModule3.SQLQuery1.SQL.Add('WHERE (`employeeNumber` = '+dbmodule.DataModule3.employeeDataSetemployeeNumber.text+')');
  dbmodule.DataModule3.SQLQuery1.ExecSQL(TRUE);
end;

procedure TaddEditEmployee.FormCreate(Sender: TObject);
begin
dbmodule.DataModule3.connectSql;
end;


end.
