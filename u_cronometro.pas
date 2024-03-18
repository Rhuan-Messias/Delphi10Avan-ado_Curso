unit u_cronometro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.MPlayer, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    t_tempo: TTimer;
    lb_minutos: TLabel;
    Label1: TLabel;
    lb_segundos: TLabel;
    MediaPlayer1: TMediaPlayer;
    btn_play: TSpeedButton;
    btn_abrir: TButton;
    OpenDialog1: TOpenDialog;
    txt_tempo: TEdit;
    procedure t_tempoTimer(Sender: TObject);
    procedure btn_playClick(Sender: TObject);
    procedure btn_abrirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

//Rotina para quando o timer for iniciado atraves do speedButton
procedure TForm1.btn_abrirClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
  // o arquivo selecionado no OD1, será repassado para o reprodutor MP1
    MediaPlayer1.FileName := OpenDialog1.FileName;
    btn_play.Enabled := true;
    lb_segundos.Caption := '0';
    lb_minutos.Caption := '0';
    txt_tempo.Text := '';
  end;

end;

procedure TForm1.btn_playClick(Sender: TObject);
begin
  t_tempo.Enabled := true;
end;

procedure TForm1.t_tempoTimer(Sender: TObject);
 var seg, min, cont:Integer;
begin
// o texto na propriedade caption do label é armazenado na variavel seg
//como a variavel é um inteiro, preciso converter strToInt
  seg := strToInt(lb_segundos.Caption);
  min := strToInt(lb_minutos.Caption);
  cont := seg+1;

  lb_segundos.Caption := intToStr(cont);

  if lb_segundos.Caption = '60' then
  begin
    lb_segundos.Caption := '0';
    lb_minutos.Caption := intToStr(StrToInt(lb_minutos.Caption) + 1);
  end;

  if lb_segundos.Caption = txt_tempo.Text then
  begin
    t_tempo.Enabled := false;
    mediaPlayer1.Open;
    MediaPlayer1.Play;
  end;


end;

end.
