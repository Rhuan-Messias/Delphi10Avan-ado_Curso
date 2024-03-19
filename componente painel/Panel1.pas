unit Panel1;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.ExtCtrls, Messages, Windows;

type
  TFloatPanel = class(TPanel)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    //Uma classe nativa, como String � TMsg. � preciso colocar a biblioteca
    // para usar essas duas fun��es abaixo
    procedure WM_MouseDown(var msg:TMsg); message WM_LBUTTONDOWN;
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Exemplos', [TFloatPanel]);
end;

{ TFloatPanel }

procedure TFloatPanel.WM_MouseDown(var msg: TMsg);
begin
  releasecapture;  // essa libera o mouse da aplicacao
  PostMessage(handle, WM_SYSCOMMAND, $F012, 0) // faz com que a janela acompanhe o mouse
end;

end.
