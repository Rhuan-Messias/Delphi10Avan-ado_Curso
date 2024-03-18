unit u_animacao;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Effects,
  FMX.Filter.Effects, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects,
  FMX.Ani, FMX.Edit;

type
  TForm1 = class(TForm)
    Circle1: TCircle;
    Button1: TButton;
    FloatAnimation1: TFloatAnimation;
    txt_duracao: TEdit;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FloatAnimation1Process(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
begin
  FloatAnimation1.Enabled := true;
end;

procedure TForm1.FloatAnimation1Process(Sender: TObject);
var txt : double;
begin
  txt := StrtoFloat(txt_duracao.Text);
  FloatAnimation1.Duration := txt ;
end;

end.
