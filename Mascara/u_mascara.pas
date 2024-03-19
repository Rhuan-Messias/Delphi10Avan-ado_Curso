unit u_mascara;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.StdCtrls, Vcl.Mask;

type
  Tmask = (pJuridica, pFisica);
  TMascaras = class(TMaskEdit)
  private
    FMascara: Tmask;
    procedure SetMascara(const Value: Tmask);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    property Mascara : Tmask read FMascara write SetMascara;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Exemplos', [TMascaras]);
end;

{ TMascaras }

procedure TMascaras.SetMascara(const Value: Tmask);
begin
  FMascara := Value;

  case Value of
    pJuridica:
      EditMask := '99.999.999/9999-99;1;_';
    pFisica:
      EditMask := '999.999.999-99;1;_';
  end;
end;

end.
