object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'ScaleObjects Example Project'
  ClientHeight = 402
  ClientWidth = 393
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnLarger: TButton
    Left = 8
    Top = 8
    Width = 121
    Height = 89
    Caption = 'B'#252'y'#252'lt'
    TabOrder = 0
    OnClick = btnLargerClick
  end
  object btnSmaller: TButton
    Left = 135
    Top = 8
    Width = 121
    Height = 89
    Caption = 'K'#252#231#252'lt'
    TabOrder = 1
    OnClick = btnSmallerClick
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 226
    Width = 393
    Height = 176
    Align = alBottom
    Caption = #214'rnek Nesneler '
    TabOrder = 2
    ExplicitTop = 200
    ExplicitWidth = 371
    object Label1: TLabel
      Left = 16
      Top = 29
      Width = 72
      Height = 13
      Caption = 'Abdullah Ilgaz'
    end
    object CheckBox1: TCheckBox
      Left = 16
      Top = 48
      Width = 97
      Height = 17
      Caption = 'CheckBox1'
      TabOrder = 0
    end
    object RadioButton1: TRadioButton
      Left = 16
      Top = 71
      Width = 113
      Height = 17
      Caption = 'RadioButton1'
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 16
      Top = 93
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'Edit1'
    end
    object ComboBox1: TComboBox
      Left = 16
      Top = 120
      Width = 145
      Height = 21
      TabOrder = 3
      Text = 'ComboBox1'
    end
  end
end
