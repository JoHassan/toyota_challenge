unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, dbmodule,unit3,unit1;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    deleteBtn: TButton;
    EditBtn: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure prefillEditForm(addForm: TaddEditEmployee);
    procedure deleteBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button2Click(Sender: TObject);
var  addForm: TaddEditEmployee;
begin
addform:= TaddEditEmployee.Create(Application);
addForm.toAdd:= true;
addForm.ShowModal;
end;

procedure TForm2.deleteBtnClick(Sender: TObject);
var youSureForm:TForm1;
begin
 youSureForm:= TForm1.Create(Application);
 youSureForm.Show;
end;

procedure TForm2.EditBtnClick(Sender: TObject);
var  addForm: TaddEditEmployee;
begin
 addform:= TaddEditEmployee.Create(Application);
 addForm.toAdd:= false;
 prefillEditForm(addForm);
 addForm.ShowModal;
end;
procedure TForm2.prefillEditForm(addForm: TaddEditEmployee);

begin
if (dbmodule.DataModule3.SQLConnection1.connected) AND (dbmodule.DataModule3.employeeDataSet.IsEmpty= false) then
 begin
   addForm.idSpinEdit.Value:= dbmodule.DataModule3.employeeDataSetemployeeNumber.Text.ToInteger;
   addForm.firstNameEdit.Text:= dbmodule.DataModule3.employeeDataSetfirstName.Text;
   addForm.lastNameEdit.Text:=dbmodule.DataModule3.employeeDataSetlastName.Text;
   addForm.emailEdit.Text:= dbmodule.DataModule3.employeeDataSetemail.Text ;
   addForm.extensionEdit.Text:= dbmodule.DataModule3.employeeDataSetextension.Text;
   addForm.officeCodeEdit.Text:=dbmodule.DataModule3.employeeDataSetofficeCode.Text;
   addForm.jobTitleEdit.Text:=dbmodule.DataModule3.employeeDataSetjobTitle.Text;
 end;
end;
end.
