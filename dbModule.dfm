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
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\ASUS\Documents\Embarcadero\Studio\Projects\MerchVCL\Win' +
      '32\Debug\libmariadb.dll'
    Left = 176
    Top = 433
  end
  object dsQryMerch: TDataSource
    AutoEdit = False
    DataSet = tblMerch
    Left = 528
    Top = 216
  end
  object qryMerch: TFDQuery
    Active = True
    Connection = conn
    SQL.Strings = (
      'Select * from merch')
    Left = 392
    Top = 304
  end
  object tblStock: TFDTable
    Active = True
    IndexFieldNames = 'merch_fkid'
    MasterSource = dsQryMerch
    MasterFields = 'id'
    Connection = conn
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'merchandise.stock'
    Left = 392
    Top = 425
  end
  object dsStock: TDataSource
    DataSet = tblStock
    Left = 544
    Top = 432
  end
  object tblMerch: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = conn
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'merchandise.merch'
    Left = 392
    Top = 216
  end
end
