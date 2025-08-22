object DataModule1: TDataModule1
  OnCreate = DataModuleCreate
  Height = 555
  Width = 770
  object conn: TFDConnection
    ConnectionName = 'conn'
    Params.Strings = (
      'Database=merchandise'
      'User_Name=root'
      'Password=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 173
    Top = 250
  end
  object tblAllMerch: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = conn
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'merch'
    Left = 326
    Top = 211
  end
  object dsAllMerch: TDataSource
    DataSet = tblAllMerch
    Left = 448
    Top = 211
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\ASUS\Documents\Embarcadero\Studio\Projects\MerchVCL\Win' +
      '32\Debug\libmariadb.dll'
    Left = 141
    Top = 346
  end
end
