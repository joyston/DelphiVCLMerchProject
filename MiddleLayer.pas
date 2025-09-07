unit MiddleLayer;

interface

type
  TMerch = class
  private
    fname: string;
    ftype: string;
    fcolor: string;
    fprice: Currency;

  public
    property Name: string read fname write fname;
    property Price: Currency read fprice write fprice;
    property MerchType: string read ftype write ftype;
    property Color: string read fcolor write fcolor;
  end;

  TStock = class(TMerch)
  private
    FIDMerch: integer;
    fSize: string;
    fquantity: Byte;
  public
    property IDMerch: integer read FIDMerch write FIDMerch;
    property Size: string read fSize write fSize;
    property Quantity: Byte read fquantity write fquantity;
  end;

implementation

end.
