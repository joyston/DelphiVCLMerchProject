object DataModule1: TDataModule1
  OnCreate = DataModuleCreate
  Height = 694
  Width = 963
  PixelsPerInch = 120
  object conn: TFDConnection
    ConnectionName = 'conn'
    Params.Strings = (
      'Database=merchandise'
      'User_Name=root'
      'Password=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 216
    Top = 313
  end
  object tblAllMerch: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = conn
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'merch'
    Left = 408
    Top = 264
  end
  object dsAllMerch: TDataSource
    DataSet = tblAllMerch
    Left = 560
    Top = 264
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\ASUS\Documents\Embarcadero\Studio\Projects\MerchVCL\Win' +
      '32\Debug\libmariadb.dll'
    Left = 176
    Top = 433
  end
end
