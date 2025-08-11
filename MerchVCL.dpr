program MerchVCL;

uses
  Vcl.Forms,
  View in 'View.pas' {Form1},
  dbModule in 'dbModule.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  //Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
