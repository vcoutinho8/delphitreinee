object frmDiscionario: TfrmDiscionario
  Left = 0
  Top = 0
  Caption = 'frmDiscionario'
  ClientHeight = 388
  ClientWidth = 471
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 96
    Top = 8
    Width = 19
    Height = 13
    Caption = 'CPF'
  end
  object Label2: TLabel
    Left = 240
    Top = 8
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Memo1: TMemo
    Left = 97
    Top = 51
    Width = 336
    Height = 232
    TabOrder = 0
  end
  object btn_AddOrSet: TButton
    Left = 16
    Top = 196
    Width = 75
    Height = 25
    Caption = 'AddOrSetValue'
    TabOrder = 1
    OnClick = btn_AddOrSetClick
  end
  object btn_containsValue: TButton
    Left = 16
    Top = 166
    Width = 75
    Height = 25
    Caption = 'ContainsValue'
    TabOrder = 2
    OnClick = btn_containsValueClick
  end
  object btn_containsKey: TButton
    Left = 16
    Top = 135
    Width = 75
    Height = 25
    Caption = 'ContainsKey'
    TabOrder = 3
    OnClick = btn_containsKeyClick
  end
  object btn_trimExcess: TButton
    Left = 16
    Top = 104
    Width = 75
    Height = 25
    Caption = 'TrimExcess'
    TabOrder = 4
  end
  object btn_remove: TButton
    Left = 16
    Top = 73
    Width = 75
    Height = 25
    Caption = 'Remove'
    TabOrder = 5
    OnClick = btn_removeClick
  end
  object btn_TryGetValue: TButton
    Left = 16
    Top = 42
    Width = 75
    Height = 25
    Caption = 'TryGetValue'
    TabOrder = 6
    OnClick = btn_TryGetValueClick
  end
  object btn_add: TButton
    Left = 16
    Top = 11
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 7
    OnClick = btn_addClick
  end
  object Edit1: TEdit
    Left = 97
    Top = 24
    Width = 137
    Height = 21
    TabOrder = 8
  end
  object btn_OnValueNotify: TButton
    Left = 16
    Top = 351
    Width = 75
    Height = 25
    Caption = 'OnValueNotify'
    TabOrder = 9
    OnClick = btn_OnValueNotifyClick
  end
  object btn_OnKeyNotify: TButton
    Left = 16
    Top = 320
    Width = 75
    Height = 25
    Caption = 'OnKeyNotify'
    TabOrder = 10
    OnClick = btn_OnKeyNotifyClick
  end
  object btn_clear: TButton
    Left = 16
    Top = 289
    Width = 75
    Height = 25
    Caption = 'Clear'
    TabOrder = 11
    OnClick = btn_clearClick
  end
  object btn_value: TButton
    Left = 16
    Top = 258
    Width = 75
    Height = 25
    Caption = 'Lista Value'
    TabOrder = 12
    OnClick = btn_valueClick
  end
  object btn_key: TButton
    Left = 16
    Top = 227
    Width = 75
    Height = 25
    Caption = 'Lista key'
    TabOrder = 13
    OnClick = btn_keyClick
  end
  object Edit2: TEdit
    Left = 240
    Top = 24
    Width = 193
    Height = 21
    TabOrder = 14
  end
end
