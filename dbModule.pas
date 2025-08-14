unit dbModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.IniFiles, Vcl.Dialogs,
  Vcl.Forms, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef;

type
  TDataModule1 = class(TDataModule)
    conn: TFDConnection;
     tblAllMerch: TFDTable;
    dsAllMerch: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ConnectToDB;
    procedure GetAllMerchWithQuantity;
  public
    { Public declarations }

  end;

var
  DB: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TDataModule1.ConnectToDB;
var
  ini: TIniFile;
begin
  ini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'dbconfig.ini');
  // ini := TIniFile.Create(ChangeFileExt(Application.ExeName + '.ini'));
  // ini := TIniFile.Create(ChangeFileExt(Application.ExeName, '.INI'));

  try
    try
      conn.Connected := false;
      conn.Params.Clear;
      conn.DriverName := ini.ReadString('DB-INFO', 'DriverID', '');
      conn.Params.values['Database'] := ini.ReadString('DB-INFO',
        'Database', '');
      conn.Params.values['Server'] := ini.ReadString('DB-INFO', 'Server', '');
      conn.Params.values['User_name'] := ini.ReadString('DB-INFO',
        'User_Name', '');
      conn.Params.values['Password'] := ini.ReadString('DB-INFO',
        'Password', '');
      conn.Params.values['Port'] := ini.ReadString('DB-INFO', 'Port', '');
      conn.Connected := true;
    except
      on E: Exception do
      begin
        ShowMessage(E.Message); // log this error
      end;
    end;
  finally
    ini.Free;
  end;
end;

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
  ConnectToDB;
  GetAllMerchWithQuantity;
end;

procedure TDataModule1.GetAllMerchWithQuantity;
//var     qry: TFDQuery;
begin
  try
//    qry := TFDQuery.Create(Self);
//    qry.Close;
//    qry.ExecSQL
//      ('select m.name, m.type, m.price, m.color, sum(s.quantity) as quantity ' +
//      'from merch m ' + 'inner join stock s ' + 'on m.id = s.merch_fkid ' +
//      'group by merch_fkid');
//    qry.Open;
//    tblAllMerch.Data := qry.RO
tblAllMerch.Close;
//tblAllMerch.ExecSQL('select m.name, m.type, m.price, m.color, sum(s.quantity) as quantity ' +
//      'from merch m ' + 'inner join stock s ' + 'on m.id = s.merch_fkid ' +
//      'group by merch_fkid');
      tblAllMerch.Open('select m.name, m.type, m.price, m.color, sum(s.quantity) as quantity ' +
      'from merch m ' + 'inner join stock s ' + 'on m.id = s.merch_fkid ' +
      'group by merch_fkid');
//    tblAllMerch.DataSource := qry.DataSource;
  finally
    //qry.DisposeOf;
  end;
end;

end.
