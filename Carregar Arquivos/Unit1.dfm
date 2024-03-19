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
  object Image1: TImage
    Left = 0
    Top = 8
    Width = 289
    Height = 305
  end
  object Memo1: TMemo
    Left = 295
    Top = 8
    Width = 330
    Height = 305
    TabOrder = 0
  end
  object btn_img: TButton
    Left = 80
    Top = 336
    Width = 129
    Height = 49
    Caption = 'Carregar Imagem'
    TabOrder = 1
    OnClick = btn_imgClick
  end
  object btn_txt: TButton
    Left = 319
    Top = 336
    Width = 129
    Height = 49
    Caption = 'Carregar Texto'
    TabOrder = 2
    OnClick = btn_txtClick
  end
  object btn_salvar: TButton
    Left = 479
    Top = 336
    Width = 129
    Height = 49
    Caption = 'Salvar'
    TabOrder = 3
    OnClick = btn_salvarClick
  end
  object dg_text: TOpenTextFileDialog
    Filter = 'Txt Image (*.txt)|*.txt|Docx(*.docx)|*.docx'
    Left = 336
    Top = 392
  end
  object dg_img: TOpenPictureDialog
    Left = 40
    Top = 400
  end
  object dg_salvar: TSaveDialog
    Filter = 'Txt Image (*.txt)|*.txt|Docx (*.docx)|*.docx'
    Left = 480
    Top = 376
  end
end
