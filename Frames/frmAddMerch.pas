unit frmAddMerch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrame1 = class(TFrame)
    Label1: TLabel;
    edtName: TEdit;
    Label2: TLabel;
    edtPrice: TEdit;
    Label3: TLabel;
    edtColor: TEdit;
    rgType: TRadioGroup;
    btnSave: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
