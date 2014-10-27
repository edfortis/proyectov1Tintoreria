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
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation
        uses UDMtintoreria, ULogin;
{$R *.dfm}

procedure TFPrincipal.FormCreate(Sender: TObject);
begin
  LBienvenida.Caption:= 'Bienvenido:'+ IntToStr( ULogin.UsuarioID);
end;

end.
