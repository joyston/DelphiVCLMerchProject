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
    ActivePage = tbAdd
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 769
    ExplicitHeight = 433
    object tbView: TTabSheet
      Caption = 'View'
      object dbgLive: TDBGrid
        Left = 0
        Top = 120
        Width = 763
        Height = 291
        Align = alClient
        DataSource = DataModule1.dsAllMerch
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
            FieldName = 'color'
            Title.Caption = 'Color'
            Visible = True
          end>
      end
      object dbgDetails: TDBGrid
        Left = 0
        Top = 0
        Width = 763
        Height = 120
        Align = alTop
        DataSource = DataModule1.dsQryMerch
        TabOrder = 1
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
            Title.Caption = 'Quantity'
            Width = 80
            Visible = True
          end>
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
        ExplicitWidth = 761
        ExplicitHeight = 403
      end
    end
  end
end
