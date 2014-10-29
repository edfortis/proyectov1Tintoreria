unit UDMtintoreria;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDMtintoreria = class(TDataModule)
    Conexion: TADOConnection;
    DSQUsuario: TDataSource;
    QClientes: TADOQuery;
    QGeneral: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
   function buscarPersona(Usuario:String;Contrasena:String):boolean;
  end;

var
  DMtintoreria: TDMtintoreria;

implementation

{$R *.dfm}
function TDMtintoreria.buscarPersona(usuario:String;contrasena:String):boolean;
var
rs:_Recordset;
cadena:String;
resultado:boolean;
begin
  cadena:='SELECT * FROM usuario WHERE usuario='+QuotedStr(usuario)+' AND contraseña='+QuotedStr(contrasena);
  QGeneral.Active:=false;
  QGeneral.SQL.Text:=cadena;
  QGeneral.Active:=true;
  if(QGeneral.RecordCount= 1) then
  begin
  resultado:=true;
  end
  else
  begin
  resultado :=false;
  end;
end;

end.
