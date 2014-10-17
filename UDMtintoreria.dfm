object DMtintoreria: TDMtintoreria
  OldCreateOrder = False
  Height = 227
  Width = 506
  object Conexion: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Data' +
      ' Source=proyectotintoreria;Initial Catalog=tintoreria'
    LoginPrompt = False
    Left = 64
    Top = 64
  end
  object DSQUsuario: TDataSource
    Left = 136
    Top = 80
  end
  object QClientes: TADOQuery
    Connection = Conexion
    Parameters = <>
    Left = 136
    Top = 32
  end
end
