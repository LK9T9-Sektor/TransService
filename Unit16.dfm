object DPr: TDPr
  Left = 421
  Top = 236
  BorderStyle = bsNone
  Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1103' '#1087#1088#1080#1094#1077#1087#1086#1074
  ClientHeight = 216
  ClientWidth = 322
  Color = clBtnShadow
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
    Top = 8
    Width = 122
    Height = 16
    Caption = #1043#1086#1089#1085#1086#1084#1077#1088' '#1087#1088#1080#1094#1077#1087#1072
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
    Top = 40
    Width = 84
    Height = 16
    Caption = #1042#1080#1076' '#1087#1088#1080#1094#1077#1087#1072
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 72
    Width = 109
    Height = 16
    Caption = #1052#1086#1076#1077#1083#1100' '#1087#1088#1080#1094#1077#1087#1072
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 112
    Width = 126
    Height = 16
    Caption = #1043#1088#1091#1079#1086#1087#1086#1076#1098#1077#1084#1085#1086#1089#1090#1100
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 16
    Top = 144
    Width = 85
    Height = 16
    Caption = #1054#1073#1098#1077#1084' '#1075#1088#1091#1079#1072
    FocusControl = DBEdit5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 152
    Top = 8
    Width = 129
    Height = 21
    DataField = 'gosnomer_pricepa'
    DataSource = TPr.DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 152
    Top = 40
    Width = 129
    Height = 21
    DataField = 'vid_pricepa'
    DataSource = TPr.DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 152
    Top = 72
    Width = 129
    Height = 21
    DataField = 'model_pricepa'
    DataSource = TPr.DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 152
    Top = 104
    Width = 129
    Height = 21
    DataField = 'gruzopodemnost_pricepa'
    DataSource = TPr.DataSource1
    TabOrder = 3
    OnKeyPress = DBEdit4KeyPress
  end
  object DBEdit5: TDBEdit
    Left = 152
    Top = 136
    Width = 129
    Height = 21
    DataField = 'obem_gruza'
    DataSource = TPr.DataSource1
    TabOrder = 4
    OnKeyPress = DBEdit5KeyPress
  end
  object Button1: TButton
    Left = 8
    Top = 176
    Width = 129
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 160
    Top = 176
    Width = 129
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 6
    OnClick = Button2Click
  end
end
