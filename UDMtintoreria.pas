unit UDMtintoreria;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDMtintoreria = class(TDataModule)
    Conexion: TADOConnection;
    DSQUsuario: TDataSource;
    QClientes: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMtintoreria: TDMtintoreria;

implementation

{$R *.dfm}

end.
