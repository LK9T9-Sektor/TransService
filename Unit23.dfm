object Form23: TForm23
  Left = 348
  Top = 198
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1042#1099#1073#1086#1088' '#1087#1088#1080#1085#1090#1077#1088#1072' '#1080' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072' '#1082#1086#1087#1080#1081
  ClientHeight = 133
  ClientWidth = 370
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ListBox1: TListBox
    Left = 16
    Top = 16
    Width = 249
    Height = 97
    ItemHeight = 13
    TabOrder = 0
  end
  object Button1: TButton
    Left = 272
    Top = 16
    Width = 75
    Height = 25
    Caption = #1055#1077#1095#1072#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 273
    Top = 56
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
    OnClick = Button2Click
  end
  object SpinEdit1: TSpinEdit
    Left = 274
    Top = 90
    Width = 79
    Height = 22
    MaxValue = 3
    MinValue = 1
    TabOrder = 3
    Value = 1
  end
end
