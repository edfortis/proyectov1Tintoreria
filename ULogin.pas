unit ULogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, pngimage, ExtCtrls;

type
  TFLogin = class(TForm)
    Label1: TLabel;
    TBUsuario: TEdit;
    Label2: TLabel;
    TBContrasena: TEdit;
    BTNIngresar: TBitBtn;
    Image1: TImage;
    procedure BTNIngresarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLogin: TFLogin;
  UsuarioID :Integer;
implementation
      uses UDMtintoreria, UPrincipal;
{$R *.dfm}

procedure TFLogin.BTNIngresarClick(Sender: TObject);
var query:String;
begin
    query:= 'SELECT * FROM usuario WHERE usuario like '+QuotedStr(TBUsuario.Text)+
    ' and contraseña =  '+QuotedStr(TBContrasena.Text);
    DMtintoreria.QClientes.Active:=false;
    DMtintoreria.QClientes.SQL.Text:=query;
    DMtintoreria.QClientes.Active:=true;
    if(DMtintoreria.QClientes.RecordCount > 0)then
    begin
         Application.CreateForm(TFPrincipal, FPrincipal);
         UsuarioID:=   DMtintoreria.QClientes.Recordset.Fields.Item('idusuario').Value;
         FLogin.Hide;
         FPrincipal.Show;


    end
    else begin
         ShowMessage('Clave o Contraseña Incorrecta');
    end;

end;



end.
