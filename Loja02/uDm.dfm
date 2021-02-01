object DM: TDM
  OldCreateOrder = False
  Height = 534
  Width = 758
  object conexao: TFDConnection
    Params.Strings = (
      'User_Name=root'
      'Database=clientes'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 32
  end
  object tbprodutos: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = conexao
    UpdateOptions.UpdateTableName = 'clientes.produtos'
    TableName = 'clientes.produtos'
    Left = 128
    Top = 32
    object tbprodutosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
    end
    object tbprodutosnome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object tbprodutosfabricante: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fabricante'
      Origin = 'fabricante'
      Size = 30
    end
    object tbprodutosvalidate: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'validate'
      Origin = 'validate'
      EditMask = '##/##/####;1;_'
    end
    object tbprodutosestoqueAtual: TIntegerField
      FieldName = 'estoqueAtual'
      Origin = 'estoqueAtual'
    end
  end
  object dsProdutos: TDataSource
    DataSet = tbprodutos
    Left = 128
    Top = 88
  end
  object tbMovimentacoes: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = conexao
    UpdateOptions.UpdateTableName = 'clientes.movimentacoes'
    TableName = 'clientes.movimentacoes'
    Left = 240
    Top = 32
  end
  object dsMovimentacoes: TDataSource
    DataSet = tbMovimentacoes
    Left = 240
    Top = 88
  end
  object tbMovProdutos: TFDTable
    Connection = conexao
    UpdateOptions.UpdateTableName = 'clientes.movimentacoes_produtos'
    TableName = 'clientes.movimentacoes_produtos'
    Left = 352
    Top = 32
  end
  object dsMovProdutos: TDataSource
    DataSet = tbMovProdutos
    Left = 352
    Top = 88
  end
  object sqlAumentaEstoque: TFDCommand
    Connection = conexao
    ParamData = <
      item
        Name = 'pId'
      end
      item
        Name = 'pQtd'
      end>
    Left = 128
    Top = 160
  end
  object sqlDiminuiEstoque: TFDCommand
    Connection = conexao
    ParamData = <
      item
        Name = 'pId'
      end
      item
        Name = 'pQtd'
      end>
    Left = 128
    Top = 224
  end
  object sqlMovimentacoes: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM movimentacoes')
    Left = 248
    Top = 168
  end
  object dsSqlNovimentacoes: TDataSource
    DataSet = sqlMovimentacoes
    Left = 248
    Top = 224
  end
end
