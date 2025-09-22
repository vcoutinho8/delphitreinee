object frmFila: TfrmFila
  Left = 0
  Top = 0
  Caption = 'frmFila'
  ClientHeight = 358
  ClientWidth = 462
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
  object Edit1: TEdit
    Left = 40
    Top = 24
    Width = 137
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object btn_peek: TButton
    Left = 40
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Peek'
    TabOrder = 1
    OnClick = btn_peekClick
  end
  object btn_extract: TButton
    Left = 40
    Top = 113
    Width = 75
    Height = 25
    Caption = 'Extract'
    TabOrder = 2
    OnClick = btn_extractClick
  end
  object btn_dequeue: TButton
    Left = 40
    Top = 82
    Width = 75
    Height = 25
    Caption = 'Dequeue'
    TabOrder = 3
    OnClick = btn_dequeueClick
  end
  object btn_enqueue: TButton
    Left = 40
    Top = 51
    Width = 75
    Height = 25
    Caption = 'Enqueue'
    TabOrder = 4
    OnClick = btn_enqueueClick
  end
  object btn_trimExcess: TButton
    Left = 40
    Top = 175
    Width = 75
    Height = 25
    Caption = 'TrimExcess'
    TabOrder = 5
    OnClick = btn_trimExcessClick
  end
  object btn_count: TButton
    Left = 40
    Top = 206
    Width = 75
    Height = 25
    Caption = 'Count'
    TabOrder = 6
    OnClick = btn_countClick
  end
  object Memo1: TMemo
    Left = 121
    Top = 51
    Width = 144
    Height = 211
    Lines.Strings = (
      'Memo1')
    TabOrder = 7
  end
  object btn_capacity: TButton
    Left = 40
    Top = 237
    Width = 75
    Height = 25
    Caption = 'Capacity'
    TabOrder = 8
    OnClick = btn_capacityClick
  end
end
