unit View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Tabs, Vcl.ComCtrls, Vcl.Grids,
  Data.DB, Vcl.DBGrids, dbModule, frmAddMerch, MiddleLayer;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    tbView: TTabSheet;
    dbgLive: TDBGrid;
    dbgDetails: TDBGrid;
    tbAdd: TTabSheet;
    frameMerch: TFrame1;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frameMerchbtnSaveClick(Sender: TObject);
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
  if Assigned(DB) then
  begin
    DB.Free;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  if not Assigned(DB) then
  begin
    DB := TDataModule1.Create(Self);
    DB.conn.Connected := True;
    DB.tblMerch.Open;
    DB.tblStock.Open;

    // dsAllMerch.DataSet := db.tblAllMerch;
  end;
end;

procedure TForm1.frameMerchbtnSaveClick(Sender: TObject);
var
  newMerch: TMerch;
begin
  newMerch := TMerch.Create;
  try
    try
      if frameMerch.edtName.Text <> '' then
      begin
        newMerch.Name := frameMerch.edtName.Text;
      end
      else
      begin
        raise Exception.Create('Name not found');
        Abort;
      end;

      if frameMerch.rgType.ItemIndex <> -1 then
      begin
        if frameMerch.rgType.ItemIndex = 0 then
         newMerch.MerchType := 'Rubber'
        else if frameMerch.rgType.ItemIndex = 0 then
         newMerch.MerchType := frameMerch.rgType.Items[1]
        else
          newMerch.MerchType := frameMerch.rgType.Items[2];
      end
      else
      begin
        raise Exception.Create('Name not found');
        Abort;
      end;

      if frameMerch.edtPrice.Text <> '' then
      begin
        newMerch.Price := StrToCurr(frameMerch.edtPrice.Text)
      end
      else
      begin
        raise Exception.Create('Price not found');
        Abort;
      end;

      if frameMerch.edtColor.Text <> '' then
      begin
        newMerch.Color := frameMerch.edtColor.Text;
      end
      else
      begin
        raise Exception.Create('Color not found');
        Abort;
      end;

      if DB.InsertMerch(newMerch) then
        ShowMessage('Merch Inserted Successfully')
      else
        ShowMessage('Merch Insert was Not Successful');
    except
      on E: Exception do
        ShowMessage(E.Message)
    end;
  finally
    newMerch.Free;
  end;
end;

end.
