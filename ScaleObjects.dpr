program ScaleObjects;

uses
  Vcl.Forms,
  Main in 'Main.pas' {Form1},
  Functions in 'Functions.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
