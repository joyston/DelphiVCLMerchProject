object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 771
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 771
    Height = 441
    ActivePage = tbView
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 769
    ExplicitHeight = 433
    object tbView: TTabSheet
      Caption = 'View'
      object dbgDetails: TDBGrid
        Left = 0
        Top = 0
        Width = 763
        Height = 120
        Align = alTop
        DataSource = DataModule1.dsQryMerch
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'name'
            Title.Caption = 'Name'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'type'
            Title.Caption = 'Type'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'price'
            Title.Caption = 'Price'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'color'
            Title.Caption = 'Color'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'quantity'
            Title.Caption = 'Total Quantity'
            Width = 90
            Visible = True
          end>
      end
      object pnlStock: TPanel
        Left = 0
        Top = 120
        Width = 763
        Height = 291
        Align = alClient
        TabOrder = 1
        ExplicitWidth = 761
        ExplicitHeight = 283
        object dbgStock: TDBGrid
          Left = 1
          Top = 1
          Width = 232
          Height = 289
          Align = alLeft
          DataSource = DataModule1.dsStock
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'size'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'quantity'
              Width = 100
              Visible = True
            end>
        end
        object Panel1: TPanel
          Left = 233
          Top = 1
          Width = 529
          Height = 289
          Align = alClient
          TabOrder = 1
          ExplicitLeft = 239
          ExplicitTop = 6
          object Label1: TLabel
            Left = 42
            Top = 83
            Width = 23
            Height = 15
            Caption = 'Size:'
          end
          object Label2: TLabel
            Left = 16
            Top = 139
            Width = 49
            Height = 15
            Caption = 'Quantity:'
          end
          object Image1: TImage
            Left = 296
            Top = 41
            Width = 209
            Height = 224
          end
          object SpinEdit1: TSpinEdit
            Left = 96
            Top = 136
            Width = 121
            Height = 24
            MaxValue = 0
            MinValue = 0
            TabOrder = 0
            Value = 0
          end
          object btnUpdateStock: TButton
            Left = 64
            Top = 224
            Width = 75
            Height = 25
            Caption = 'Save'
            TabOrder = 1
          end
          object cbxSize: TComboBox
            Left = 96
            Top = 80
            Width = 71
            Height = 23
            TabOrder = 2
            Text = 'cbxSize'
            Items.Strings = (
              'S'
              'M'
              'L'
              'XL')
          end
        end
      end
    end
    object tbAdd: TTabSheet
      Caption = 'Add'
      ImageIndex = 1
      inline frameMerch: TFrame1
        Left = 0
        Top = 0
        Width = 763
        Height = 411
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 763
        ExplicitHeight = 411
        inherited btnSave: TButton
          OnClick = frameMerchbtnSaveClick
        end
      end
    end
  end
end
