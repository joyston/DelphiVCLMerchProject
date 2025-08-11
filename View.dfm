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
      object gridView: TStringGrid
        Left = 0
        Top = 0
        Width = 763
        Height = 411
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 761
        ExplicitHeight = 403
      end
      object DBGrid1: TDBGrid
        Left = 72
        Top = 168
        Width = 320
        Height = 120
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
    end
  end
  object dsAllMerch: TDataSource
    Left = 472
    Top = 216
  end
end
