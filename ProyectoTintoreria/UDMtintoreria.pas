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
  nombre:String;
implementation

{$R *.dfm}
function TDMtintoreria.buscarPersona(usuario:String;contrasena:String):boolean;
var
cadena:String;
rs:_Recordset; //Un conjunto de registros  para usarlo se usa ADODB
resultado:boolean;
begin
   cadena:='SELECT id_Usuario from Usuarios where Usuario='
   + QuotedStr(Usuario) + 'AND contraseña=' + QuotedStr(Contrasena);
   //PRIMERA FORMA
   Qgeneral.Active:=false;
   Qgeneral.SQL.Text:=cadena;
   Qgeneral.Active:=true;
if Qgeneral.RecordCount= 1 then
resultado:=true
else
resultado :=false;
//Segunda forma: a travez de la conexion
rs:=conexion.Execute(cadena);  //PARA obtener el conjunto de datos
if rs.RecordCount = 1 then
resultado:=true
else
resultado :=false;
result:=resultado; // buscarUsuario:=resultado es como un return en C
end;
end.
