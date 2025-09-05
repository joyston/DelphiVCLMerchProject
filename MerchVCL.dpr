program MerchVCL;

uses
  Vcl.Forms,
  View in 'View.pas' {Form1},
  dbModule in 'dbModule.pas' {DataModule1: TDataModule},
  Vcl.Themes,
  Vcl.Styles,
  frmAddMerch in 'Frames\frmAddMerch.pas' {Frame1: TFrame},
  MiddleLayer in 'MiddleLayer.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glow');
  Application.CreateForm(TForm1, Form1);
  //Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
