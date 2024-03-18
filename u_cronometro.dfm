object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 168
  ClientWidth = 306
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lb_minutos: TLabel
    Left = 100
    Top = 32
    Width = 22
    Height = 54
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 128
    Top = 32
    Width = 9
    Height = 54
    Caption = ':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lb_segundos: TLabel
    Left = 143
    Top = 32
    Width = 22
    Height = 54
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object btn_play: TSpeedButton
    Left = 100
    Top = 92
    Width = 24
    Height = 24
  end
  object MediaPlayer1: TMediaPlayer
    Left = 8
    Top = 130
    Width = 57
    Height = 30
    VisibleButtons = [btPlay, btPause]
    DoubleBuffered = True
    Visible = False
    ParentDoubleBuffered = False
    TabOrder = 0
  end
  object t_tempo: TTimer
    Left = 176
    Top = 48
  end
end
