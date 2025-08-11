object DataModule1: TDataModule1
  OnCreate = DataModuleCreate
  Height = 694
  Width = 963
  PixelsPerInch = 120
  object conn: TFDConnection
    Params.Strings = (
      'DriverID=MySQL')
    Left = 216
    Top = 312
  end
  object tblAllMerch: TFDTable
    Connection = conn
    Left = 408
    Top = 264
  end
  object dsAllMerch: TDataSource
    DataSet = tblAllMerch
    Left = 560
    Top = 264
  end
end
