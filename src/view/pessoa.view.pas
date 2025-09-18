unit pessoa.view;

interface

type
TPessoa = class

  private
   FMatricula : Integer;
   FNome : String;
   FCargoAtual : String;
   FSalarioAtual : Currency;

  public
   property Matricula: Integer read FMatricula write FMatricula;
   property Nome: String read FNome write FNome;
   property CargoAtual: String read FCargoAtual write FCargoAtual;
   property SalarioAtual: Currency read FSalarioAtual write FSalarioAtual;

   procedure Cadastrar();
   procedure Consultar();
   procedure listarDependentes();
   procedure atualizarSalario(novoSalario : Double);
end;

implementation

{ TPessoa }

procedure TPessoa.Cadastrar;
begin

end;

procedure TPessoa.Consultar;
begin

end;

procedure TPessoa.atualizarSalario(novoSalario: Double);
begin

end;

procedure TPessoa.listarDependentes;
begin

end;

end.
