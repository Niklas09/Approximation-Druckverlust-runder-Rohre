unit Hinweis_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls;

type
  TIPS_1 = class(TForm)
    Label1: TLabel;
    Image1: TImage;
    Okay: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure OkayClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IPS_1: TIPS_1;

implementation

{$R *.dfm}


// Initialisierungen
procedure TIPS_1.FormCreate(Sender: TObject);
begin

end;

// OK-Button
procedure TIPS_1.OkayClick(Sender: TObject);
begin
  IPS_1.Close;
end;

end.
