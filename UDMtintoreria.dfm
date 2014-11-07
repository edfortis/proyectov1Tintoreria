object DMtintoreria: TDMtintoreria
  OldCreateOrder = False
  Height = 227
  Width = 506
  object Conexion: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Data' +
      ' Source=tintoreria;Initial Catalog=tintoreria'
    LoginPrompt = False
    Left = 64
    Top = 64
  end
  object DSQUsuario: TDataSource
    DataSet = QClientes
    Left = 136
    Top = 80
  end
  object QClientes: TADOQuery
    Connection = Conexion
    Parameters = <>
    Left = 136
    Top = 32
  end
  object QGeneral: TADOQuery
    Connection = Conexion
    Parameters = <>
    Left = 200
    Top = 32
  end
  object TEmpleado: TADOTable
    Connection = Conexion
    CursorType = ctStatic
    LockType = ltReadOnly
    TableName = 'empleado'
    Left = 256
    Top = 32
  end
  object DSTEmpleado: TDataSource
    DataSet = TEmpleado
    Left = 256
    Top = 88
  end
end
