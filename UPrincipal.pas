unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Menus;

type
  TFPrincipal = class(TForm)
    BTNcatalogo: TBitBtn;
    BTNentregas: TBitBtn;
    BTNservicio: TBitBtn;
    LBienvenida: TLabel;

    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation
        uses  ULogin;
{$R *.dfm}



procedure TFPrincipal.FormShow(Sender: TObject);
begin
   Application.CreateForm(TFLogin, FLogin);
   FLogin.ShowModal;
end;

end.
