program Temporizador;

uses
  Vcl.Forms,
  u_cronometro in 'u_cronometro.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
