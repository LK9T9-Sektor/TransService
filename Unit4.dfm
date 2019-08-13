object TZad: TTZad
  Left = 487
  Top = 140
  Width = 870
  Height = 279
  Caption = #1047#1072#1076#1072#1085#1080#1077' '#1074#1086#1076#1080#1090#1077#1083#1102
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 857
    Height = 241
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 849
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
    Left = 16
    Top = 136
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 120
    Top = 136
    Width = 75
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 216
    Top = 136
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 3
    OnClick = Button3Click
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 48
    Top = 184
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = 'zad_voditelyu'
    Left = 96
    Top = 192
    object ADOTable1kod_zadaniya: TWideStringField
      DisplayLabel = #1050#1086#1076' '#1079#1072#1076#1072#1085#1080#1103
      DisplayWidth = 13
      FieldName = 'kod_zadaniya'
      Size = 50
    end
    object ADOTable1data: TWideStringField
      DisplayLabel = #1044#1072#1090#1072
      DisplayWidth = 9
      FieldName = 'data'
      Size = 50
    end
    object ADOTable1nomer_PL: TWideStringField
      DisplayLabel = #1053#1086#1084#1077#1088' '#1055#1051
      DisplayWidth = 12
      FieldName = 'nomer_PL'
      Size = 50
    end
    object ADOTable1kod_voditelya: TWideStringField
      DisplayLabel = #1050#1086#1076' '#1074#1086#1076#1080#1090#1077#1083#1103
      DisplayWidth = 16
      FieldName = 'kod_voditelya'
      Size = 50
    end
    object ADOTable1adres_mesta_pogruzki: TWideStringField
      DisplayLabel = #1040#1076#1088#1077#1089' '#1084#1077#1089#1090#1072' '#1087#1086#1075#1088#1091#1079#1082#1080
      DisplayWidth = 25
      FieldName = 'adres_mesta_pogruzki'
      Size = 50
    end
    object ADOTable1adres_mesta_razgruzki: TWideStringField
      DisplayLabel = #1040#1076#1088#1077#1089' '#1084#1077#1089#1090#1072' '#1088#1072#1079#1075#1088#1091#1079#1082#1080
      DisplayWidth = 24
      FieldName = 'adres_mesta_razgruzki'
      Size = 50
    end
    object ADOTable1naimenovanie_tovara: TWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1086#1077' '#1090#1086#1074#1072#1088#1072
      DisplayWidth = 23
      FieldName = 'naimenovanie_tovara'
      Size = 50
    end
    object ADOTable1kolichestvo_tovara: TWideStringField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1090#1086#1074#1072#1088#1072
      DisplayWidth = 21
      FieldName = 'kolichestvo_tovara'
      Size = 50
    end
  end
end
