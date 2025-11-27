unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    Image1: TImage;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Timer1Timer(Sender: TObject);
var X, Y : Integer;
begin
  Canvas.Brush.Color := clWhite;
  Canvas.FillRect(Canvas.ClipRect);
  Canvas.Draw(X, Y, Image1.Picture.Graphic);
  Inc(X);
  Inc(Y);
  if X >= ClientWidth - Image1.Width then
     X := 0;
  if Y >= ClientHeight - Image1.Height then
     Y := 0;
end;

end.
