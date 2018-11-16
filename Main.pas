unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Functions;

type
  TForm1 = class(TForm)
    btnLarger: TButton;
    btnSmaller: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    RadioButton1: TRadioButton;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    procedure btnLargerClick(Sender: TObject);
    procedure btnSmallerClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnLargerClick(Sender: TObject);
begin
  ScaleForm(Self,TScaleScreen.TLarger);
end;

procedure TForm1.btnSmallerClick(Sender: TObject);
begin
  ScaleForm(Self,TScaleScreen.TSmaller);
end;

end.
