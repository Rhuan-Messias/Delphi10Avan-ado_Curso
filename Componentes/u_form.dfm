object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 152
    Top = 80
    Width = 185
    Height = 41
    Caption = 'Panel1'
    TabOrder = 0
  end
  object CheckBox1: TCheckBox
    Left = 328
    Top = 384
    Width = 97
    Height = 17
    Caption = 'Habilitar Mouse'
    TabOrder = 1
    OnClick = CheckBox1Click
  end
  object FloatPanel1: TFloatPanel
    Left = 160
    Top = 216
    Width = 185
    Height = 41
    Caption = 'FloatPanel1'
    TabOrder = 2
    DesignMode = False
  end
end
