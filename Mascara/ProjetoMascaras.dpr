program ProjetoMascaras;

uses
  Vcl.Forms,
  u_frm_mascaras in 'u_frm_mascaras.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
