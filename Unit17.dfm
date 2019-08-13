object DTop: TDTop
  Left = 420
  Top = 244
  BorderStyle = bsNone
  Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1103' '#1090#1086#1087#1083#1080#1074#1072
  ClientHeight = 142
  ClientWidth = 332
  Color = clGradientActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 157
    Height = 16
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1087#1083#1080#1074#1072
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 48
    Width = 91
    Height = 16
    Caption = #1062#1077#1085#1072' '#1090#1086#1087#1083#1080#1074#1072
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 184
    Top = 16
    Width = 121
    Height = 21
    DataField = 'naimenovanie_topliva'
    DataSource = TTop.DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 176
    Top = 48
    Width = 129
    Height = 21
    DataField = 'cena_topliva'
    DataSource = TTop.DataSource1
    TabOrder = 1
    OnKeyPress = DBEdit2KeyPress
  end
  object Button1: TButton
    Left = 40
    Top = 80
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 160
    Top = 80
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 3
    OnClick = Button2Click
  end
end
