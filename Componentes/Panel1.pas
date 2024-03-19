unit Panel1;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.ExtCtrls, Messages, Windows;

type

  TFloatPanel = class(TPanel)

  private
    FDesignMode: boolean;
    procedure SetDesignMode(const Value: boolean);
    { Private declarations }
  protected
    { Protected declarations }
  public
    //Uma classe nativa, como String é TMsg. é preciso colocar a biblioteca
    // para usar essas duas funções abaixo
    procedure WM_MouseDown(var msg:TMsg); message WM_LBUTTONDOWN;
  published
    property DesignMode : boolean read FDesignMode write SetDesignMode;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Exemplos', [TFloatPanel]);
end;

{ TFloatPanel }

procedure TFloatPanel.SetDesignMode(const Value: boolean);
begin
  FDesignMode := Value;
end;

procedure TFloatPanel.WM_MouseDown(var msg: TMsg);
begin
  if not DesignMode then
  exit;

  releasecapture;  // essa libera o mouse da aplicacao
  PostMessage(handle, WM_SYSCOMMAND, $F012, 0) // faz com que a janela acompanhe o mouse
end;

end.
