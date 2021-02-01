program loja01;

uses
  Vcl.Forms,
  Uloja01 in 'Uloja01.pas' {frmPrincipal},
  UCadProduto in 'UCadProduto.pas' {frmCadProdutos},
  UCadMovimentacao in 'UCadMovimentacao.pas' {frmCadMovimentacao},
  UConsMovimentacoes in 'UConsMovimentacoes.pas' {frmConsMovimentacoes},
  uDm in 'uDm.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmCadProdutos, frmCadProdutos);
  Application.CreateForm(TfrmCadMovimentacao, frmCadMovimentacao);
  Application.CreateForm(TfrmConsMovimentacoes, frmConsMovimentacoes);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
