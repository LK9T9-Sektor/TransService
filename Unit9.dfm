object TTop: TTTop
  Left = 340
  Top = 164
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1058#1086#1087#1083#1080#1074#1086
  ClientHeight = 197
  ClientWidth = 329
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 22
    Top = 165
    Width = 123
    Height = 16
    Caption = #1055#1077#1088#1077#1093#1086#1076' '#1082' '#1075#1083#1072#1074#1085#1086#1081
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 0
    Width = 313
    Height = 120
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 8
    Top = 128
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 96
    Top = 128
    Width = 75
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 176
    Top = 128
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 160
    Top = 160
    Width = 41
    Height = 25
    Caption = 'OK'
    TabOrder = 4
    OnClick = Button4Click
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 264
    Top = 144
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = 'toplivo'
    Left = 296
    Top = 144
    object ADOTable1naimenovanie_topliva: TWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1087#1083#1080#1074#1072
      DisplayWidth = 27
      FieldName = 'naimenovanie_topliva'
      Size = 50
    end
    object ADOTable1cena_topliva: TWideStringField
      DisplayLabel = #1062#1077#1085#1072' '#1090#1086#1087#1083#1080#1074#1072
      DisplayWidth = 18
      FieldName = 'cena_topliva'
      Size = 50
    end
  end
end
