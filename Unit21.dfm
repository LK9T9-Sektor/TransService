object DPLS: TDPLS
  Left = 421
  Top = 235
  BorderStyle = bsNone
  Caption = 'DPLS'
  ClientHeight = 181
  ClientWidth = 377
  Color = clActiveBorder
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
    Left = 8
    Top = 16
    Width = 107
    Height = 16
    Caption = #1042#1088#1077#1084#1103' '#1074#1086#1079#1074#1088#1072#1090#1072
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
    Width = 165
    Height = 16
    Caption = #1055#1086#1082#1072#1079#1072#1085#1080#1103' '#1087#1088#1080' '#1074#1086#1079#1074#1088#1072#1090#1077
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
    Top = 80
    Width = 147
    Height = 16
    Caption = #1054#1089#1090#1072#1090#1086#1082' '#1087#1088#1080' '#1074#1086#1079#1074#1088#1072#1090#1077
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 112
    Width = 15
    Height = 13
    Caption = 'akt'
    FocusControl = DBEdit4
    Visible = False
  end
  object DBEdit1: TDBEdit
    Left = 312
    Top = 16
    Width = 49
    Height = 21
    DataField = 'vremya_vozvrata'
    DataSource = TPLS.DataSource1
    TabOrder = 0
    Visible = False
  end
  object DBEdit2: TDBEdit
    Left = 184
    Top = 45
    Width = 129
    Height = 21
    DataField = 'pokazaniya_pri_vozvrate'
    DataSource = TPLS.DataSource1
    TabOrder = 1
    OnKeyPress = DBEdit2KeyPress
  end
  object DBEdit3: TDBEdit
    Left = 184
    Top = 80
    Width = 129
    Height = 21
    DataField = 'ostatok_pri_vozvrate'
    DataSource = TPLS.DataSource1
    TabOrder = 2
    OnKeyPress = DBEdit3KeyPress
  end
  object Button1: TButton
    Left = 16
    Top = 136
    Width = 137
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 248
    Top = 136
    Width = 107
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 4
    OnClick = Button2Click
  end
  object DBEdit4: TDBEdit
    Left = 48
    Top = 104
    Width = 41
    Height = 21
    DataField = 'akt'
    DataSource = TPLS.DataSource1
    TabOrder = 5
    Visible = False
  end
  object Edit1: TEdit
    Left = 184
    Top = 16
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 6
    Text = 'Edit1'
  end
end
