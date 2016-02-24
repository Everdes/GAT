object dtGat: TdtGat
  OldCreateOrder = False
  Height = 222
  Width = 380
  object fdConnection: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    LoginPrompt = False
    Left = 24
    Top = 16
  end
  object FDPhysFBDriverLink: TFDPhysFBDriverLink
    VendorLib = 'C:\Program Files\Firebird\Firebird_2_5\WOW64\fbclient.dll'
    Left = 184
    Top = 8
  end
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 296
    Top = 8
  end
  object qryAbastecimento: TFDQuery
    Connection = fdConnection
    Left = 32
    Top = 88
  end
  object dsAbastecimento: TDataSource
    DataSet = qryAbastecimento
    Left = 128
    Top = 88
  end
  object qryBomba: TFDQuery
    Connection = fdConnection
    SQL.Strings = (
      'select * from bomba')
    Left = 240
    Top = 88
  end
  object dsBomba: TDataSource
    DataSet = qryBomba
    Left = 328
    Top = 88
  end
  object qryRelatorio: TFDQuery
    Connection = fdConnection
    SQL.Strings = (
      
        'select a.data, t.descricao as tanque, b.descricao as bomba, a.va' +
        'lor from abastecimento a'
      'join bomba b on b.id = a.id_bomba'
      'join tanque t on t.id = b.id_tanque'
      'group by a.data, t.descricao, b.descricao, a.valor'
      'order by a.data, t.descricao')
    Left = 240
    Top = 144
  end
  object dsRelatorio: TDataSource
    DataSet = qryRelatorio
    Left = 328
    Top = 144
  end
end
