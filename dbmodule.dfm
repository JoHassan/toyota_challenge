object DataModule3: TDataModule3
  Height = 480
  Width = 640
  object SQLConnection1: TSQLConnection
    DriverName = 'MySQL'
    Params.Strings = (
      'DriverUnit=Data.DBXMySQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver280.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXMySqlMetaDataCommandFactory,DbxMySQLDr' +
        'iver280.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMySqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMySQLDriver,Version=24.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverMYSQL'
      'LibraryName=dbxmys.dll'
      'LibraryNameOsx=libsqlmys.dylib'
      'VendorLib=LIBMYSQL.dll'
      'VendorLibWin64=libmysql.dll'
      'VendorLibOsx=libmysqlclient.dylib'
      'HostName=127.0.0.1'
      'Database=classicmodels'
      'User_Name=root'
      'Password=root'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=False'
      'BlobSize=-1'
      'ErrorResourceFile=')
    Connected = True
    Left = 304
    Top = 224
  end
  object employeeDataSet: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'select * from employees order by employeeNumber'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 464
    Top = 320
    object employeeDataSetemployeeNumber: TIntegerField
      FieldName = 'employeeNumber'
      Required = True
    end
    object employeeDataSetlastName: TStringField
      FieldName = 'lastName'
      Required = True
      Size = 50
    end
    object employeeDataSetfirstName: TStringField
      FieldName = 'firstName'
      Required = True
      Size = 50
    end
    object employeeDataSetextension: TStringField
      FieldName = 'extension'
      Required = True
      Size = 10
    end
    object employeeDataSetemail: TStringField
      FieldName = 'email'
      Required = True
      Size = 100
    end
    object employeeDataSetofficeCode: TStringField
      FieldName = 'officeCode'
      Required = True
      Size = 10
    end
    object employeeDataSetreportsTo: TIntegerField
      FieldName = 'reportsTo'
    end
    object employeeDataSetjobTitle: TStringField
      FieldName = 'jobTitle'
      Required = True
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = employeeDataSet
    Left = 520
    Top = 136
  end
  object SQLQuery1: TSQLQuery
    DataSource = DataSource1
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 432
    Top = 208
  end
end
