object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'SGC - Sistema Gerenciador de Clientes'
  ClientHeight = 517
  ClientWidth = 777
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MenuPrincipal
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object MenuPrincipal: TMainMenu
    Left = 24
    Top = 8
    object Principal1: TMenuItem
      Caption = 'Principal'
      object Sair1: TMenuItem
        Caption = 'Sair'
        OnClick = Sair1Click
      end
    end
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Clientes1: TMenuItem
        Caption = 'Clientes'
      end
      object Fornecedores1: TMenuItem
        Caption = 'Fornecedores'
      end
      object Produtos1: TMenuItem
        Caption = 'Produtos'
        OnClick = Produtos1Click
      end
    end
    object Produtos2: TMenuItem
      Caption = 'Estoque'
      object Movimentao1: TMenuItem
        Caption = 'Gerenciar Movimenta'#231#245'es'
        OnClick = Movimentao1Click
      end
      object Movimentao2: TMenuItem
        Caption = 'Consultar Movimenta'#231#245'es'
        OnClick = Movimentao2Click
      end
      object Saida1: TMenuItem
      end
    end
    object Caixa1: TMenuItem
      Caption = 'Caixa'
      object Caixa2: TMenuItem
        Caption = 'Movimento'
      end
    end
    object Pedidos1: TMenuItem
      Caption = 'Pedidos'
      object Pedidos2: TMenuItem
        Caption = 'Entradas'
      end
      object Imprimir1: TMenuItem
        Caption = 'Imprimir'
      end
    end
  end
end
