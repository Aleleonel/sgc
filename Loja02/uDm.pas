unit uDm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.Client, Data.DB,
  FireDAC.Comp.DataSet;

type
  TDM = class(TDataModule)
    conexao: TFDConnection;
    tbprodutos: TFDTable;
    dsProdutos: TDataSource;
    tbMovimentacoes: TFDTable;
    dsMovimentacoes: TDataSource;
    tbMovProdutos: TFDTable;
    dsMovProdutos: TDataSource;
    sqlAumentaEstoque: TFDCommand;
    sqlDiminuiEstoque: TFDCommand;
    sqlMovimentacoes: TFDQuery;
    dsSqlNovimentacoes: TDataSource;
    tbprodutosid: TFDAutoIncField;
    tbprodutosnome: TStringField;
    tbprodutosfabricante: TStringField;
    tbprodutosvalidate: TDateField;
    tbprodutosestoqueAtual: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
