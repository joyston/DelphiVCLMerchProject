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
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 763
        Height = 411
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
            Visible = True
          end>
      end
    end
  end
end
