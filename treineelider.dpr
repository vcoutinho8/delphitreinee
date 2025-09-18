program treineelider;

uses
  Vcl.Forms,
  projetoprincipal.main.view in 'src\view\projetoprincipal.main.view.pas' {frmPrincipal},
  gestaorhdelphi.view in 'src\view\gestaorhdelphi.view.pas' {frmGestaodeRH},
  cadastropessoa.view in 'src\view\cadastropessoa.view.pas' {frmCadastroPessoa},
  pessoa.view in 'src\view\pessoa.view.pas',
  listadepessoas.view in 'src\view\listadepessoas.view.pas' {frmListaCadastro},
  atualizarinformacoes.view in 'src\view\atualizarinformacoes.view.pas' {frmAtualizarDados};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmAtualizarDados, frmAtualizarDados);
  Application.Run;
end.
