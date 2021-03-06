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
    TEmpleado: TADOTable;
    DSTEmpleado: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
   function buscarPersona(Usuario:String;Contrasena:String):boolean;
  end;

var
  DMtintoreria: TDMtintoreria;
  nombre:String;
implementation

{$R *.dfm}
function TDMtintoreria.buscarPersona(usuario:String;contrasena:String):boolean;
var
rs:_Recordset;
cadena:String;
resultado:boolean;
begin
  cadena:='SELECT * FROM usuario WHERE nombre='+QuotedStr(usuario)+' AND contrasena='+QuotedStr(contrasena);
  QGeneral.Active:=false;
  QGeneral.SQL.Text:=cadena;
  QGeneral.Active:=true;
  if(QGeneral.RecordCount = 1) then
  begin
  resultado:=true;
  nombre:=QGeneral.FieldByName('nombre').Value;
  end
  else
  begin
  resultado:=false;
  Result:=resultado;
  end;
end;

end.
