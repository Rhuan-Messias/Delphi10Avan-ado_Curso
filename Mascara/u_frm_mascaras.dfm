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
  object mask1: TMascaras
    Left = 168
    Top = 240
    Width = 121
    Height = 23
    TabOrder = 0
    Text = ''
    Mascara = pJuridica
  end
  object RadioGroup1: TRadioGroup
    Left = 168
    Top = 104
    Width = 185
    Height = 105
    Caption = 'CNPJ / CPF'
    Items.Strings = (
      'Juridica'
      'Fisica')
    TabOrder = 1
    OnClick = RadioGroup1Click
  end
end
