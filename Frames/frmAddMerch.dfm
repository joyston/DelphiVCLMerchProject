object Frame1: TFrame1
  Left = 0
  Top = 0
  Width = 364
  Height = 384
  TabOrder = 0
  object Label1: TLabel
    Left = 56
    Top = 48
    Width = 32
    Height = 15
    Caption = 'Name'
  end
  object Label2: TLabel
    Left = 56
    Top = 200
    Width = 26
    Height = 15
    Caption = 'Price'
  end
  object Label3: TLabel
    Left = 56
    Top = 248
    Width = 29
    Height = 15
    Caption = 'Color'
  end
  object edtName: TEdit
    Left = 152
    Top = 45
    Width = 177
    Height = 23
    TabOrder = 0
  end
  object edtPrice: TEdit
    Left = 152
    Top = 197
    Width = 177
    Height = 23
    NumbersOnly = True
    TabOrder = 1
  end
  object edtColor: TEdit
    Left = 152
    Top = 245
    Width = 177
    Height = 23
    TabOrder = 2
  end
  object rgType: TRadioGroup
    Left = 56
    Top = 86
    Width = 281
    Height = 97
    Caption = 'Type'
    ItemIndex = 0
    Items.Strings = (
      'Rubber'
      'Digital'
      'Polo')
    TabOrder = 3
  end
  object btnSave: TButton
    Left = 128
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 4
  end
end
