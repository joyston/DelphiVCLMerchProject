unit View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Tabs, Vcl.ComCtrls, Vcl.Grids,
  Data.DB, Vcl.DBGrids, dbModule;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    tbView: TTabSheet;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation


{$R *.dfm}


procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(db) then
  begin
    db.Free;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  if not Assigned(db) then
  begin
    db := TDataModule1.Create(Self);
//    dsAllMerch.DataSet := db.tblAllMerch;
  end;
end;

end.
