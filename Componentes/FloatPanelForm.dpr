program FloatPanelForm;

uses
  Vcl.Forms,
  u_form in 'u_form.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
