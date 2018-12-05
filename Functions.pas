unit Functions;

{ ******************************************************* }
{
  { Scale Functions
  {
  { Copyright(c) 2018 Abdullah Ilgaz
  {
  { All rights reserved
  {
  { }
{ ******************************************************* }

interface

uses System.Classes, Vcl.Controls, Vcl.Forms, System.Math, Winapi.Windows, Types;

type
  TScaleScreen = (TLarger, TSmaller);

  // Calculates form.left
function CentreLeft(fw: integer): integer;
// Calculates form.top
function CentreTop(fh: integer): integer;
// Scall all components
procedure ScaleForm(AForm: TForm; AType: TScaleScreen);

const
  // default screen resolution
  // x value
  screenx = 1280;
  // y value
  screeny = 768;

implementation

/// <summary> Calculates form.left </summary>
function CentreLeft(fw: integer): integer;
var
  cx: integer;
begin
  cx := GetSystemMetrics(SM_CXSCREEN);
  result := (cx - fw) div 2;
end;

/// <summary> Calculates form.top </summary>
function CentreTop(fh: integer): integer;
var
  cy: integer;
begin
  cy := GetSystemMetrics(SM_CYSCREEN);
  result := (cy - fh) div 2;
end;

/// <summary> Scall all components </summary>
procedure ScaleForm(AForm: TForm; AType: TScaleScreen);
var
  scx, scy: integer; // Screen X, Screen Y
  ratio: double; // Scale ratio
begin
  // screen resolution x value
  scx := GetSystemMetrics(SM_CXSCREEN);
  // screen resolution y value
  scy := (GetSystemMetrics(SM_CYSCREEN));
  // scale ratio
  ratio := min(scx / screenx, scy / screeny);

  case AType of
    // make larger
    TLarger:
      AForm.scaleby(trunc(ratio * 50), 40);
    // make smaller
    TSmaller:
      AForm.scaleby(trunc(ratio * 50), 60);
  end;
  
  // to centre the form on the screen
  AForm.Left := CentreLeft(AForm.width);
  AForm.Top := CentreTop(AForm.Height);

end;

end.
