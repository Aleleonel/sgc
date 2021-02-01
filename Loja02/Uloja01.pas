unit Uloja01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    MenuPrincipal: TMainMenu;
    Principal1: TMenuItem;
    Sair1: TMenuItem;
    Cadastros1: TMenuItem;
    Clientes1: TMenuItem;
    Fornecedores1: TMenuItem;
    Produtos1: TMenuItem;
    Produtos2: TMenuItem;
    Movimentao1: TMenuItem;
    Movimentao2: TMenuItem;
    Saida1: TMenuItem;
    Caixa1: TMenuItem;
    Caixa2: TMenuItem;
    Pedidos1: TMenuItem;
    Pedidos2: TMenuItem;
    Imprimir1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure Movimentao1Click(Sender: TObject);
    procedure Movimentao2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UCadProduto, UCadMovimentacao, UConsMovimentacoes;

procedure TfrmPrincipal.Movimentao1Click(Sender: TObject);
begin
  frmCadMovimentacao.ShowModal;
end;

procedure TfrmPrincipal.Movimentao2Click(Sender: TObject);
begin
  frmConsMovimentacoes.ShowModal;
end;

procedure TfrmPrincipal.Produtos1Click(Sender: TObject);
begin
frmCadProdutos.ShowModal;
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
