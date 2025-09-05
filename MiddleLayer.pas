unit MiddleLayer;

interface

type
  TMerch = class
    private
      fname: string;
      ftype: string;
      fcolor: string;
      fprice: Currency;
      fquantity: Byte;
    public
      property Name: string read FName write FName;
      property Price: Currency read FPrice write FPrice;
      property MerchType: string read FType write FType;
      property Color: string read FColor write FColor;
      property Quantity: Byte read FQuantity write FQuantity;
  end;

implementation

end.
