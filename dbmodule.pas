unit dbmodule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.SqlExpr, Data.DBXMySQL,
  Datasnap.DBClient, SimpleDS, System.ImageList, Vcl.ImgList, Vcl.Controls,
  Data.FMTBcd;

type
  TDataModule3 = class(TDataModule)
    SQLConnection1: TSQLConnection;
    employeeDataSet: TSimpleDataSet;
    DataSource1: TDataSource;
    SQLQuery1: TSQLQuery;
    employeeDataSetemployeeNumber: TIntegerField;
    employeeDataSetlastName: TStringField;
    employeeDataSetfirstName: TStringField;
    employeeDataSetextension: TStringField;
    employeeDataSetemail: TStringField;
    employeeDataSetofficeCode: TStringField;
    employeeDataSetreportsTo: TIntegerField;
    employeeDataSetjobTitle: TStringField;
  private
    { Private declarations }
  public
  procedure connectSql;
  procedure updateDataSet();
   { Public declarations }
  end;

var
  DataModule3: TDataModule3;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDataModule3 }


{ TDataModule3 }


procedure TDataModule3.connectSql;
begin
SQLConnection1.Connected:= true;
employeeDataSet.Active:= true;
end;


procedure TDataModule3.updateDataSet;
begin
employeeDataSet.MergeChangeLog;
employeeDataSet.ApplyUpdates(-1);
employeeDataSet.Refresh;

end;

end.
