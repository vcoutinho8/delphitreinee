unit cadastropessoa.view;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, pessoa.view,
  Vcl.Imaging.pngimage, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, Data.DB,
  Datasnap.DBClient, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, dxDateRanges, dxScrollbarAnnotations, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Phys,
  FireDAC.Comp.Client, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys.PG, FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TfrmCadastroPessoa = class(TForm)
    pnlFull: TPanel;
    pnlEntrarSAir: TPanel;
    BCadastro: TSpeedButton;
    BSair2: TSpeedButton;
    pnlTop: TPanel;
    frmListaCadastro: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Image1: TImage;
    Label4: TLabel;
    cxTextMatricula: TcxTextEdit;
    cxTextNome: TcxTextEdit;
    cxTextCargoAtual: TcxTextEdit;
    cxTextSalario: TcxTextEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cdsDados: TClientDataSet;
    cdsDadosNome: TStringField;
    cdsDadosCargoAtual: TStringField;
    dsDados: TDataSource;
    cdsDadosMatricula: TIntegerField;
    cdsDadosSalario: TCurrencyField;
    FDConnection1: TFDConnection;
    cxGrid1DBTableView1Matricula: TcxGridDBColumn;
    cxGrid1DBTableView1Nome: TcxGridDBColumn;
    cxGrid1DBTableView1CargoAtual: TcxGridDBColumn;
    cxGrid1DBTableView1Salario: TcxGridDBColumn;
    FDQuery1: TFDQuery;
    procedure BSair2Click(Sender: TObject);
    procedure BCadastroClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  frmCadastroPessoa: TfrmCadastroPessoa;

implementation

uses
  listadepessoas.view;

{$R *.dfm}


procedure TfrmCadastroPessoa.FormCreate(Sender: TObject);
begin
  cdsDados.CreateDataSet;

  FDQuery1.SQL.Text := 'SELECT * FROM funcionario';
  FDQuery1.Open;

end;

procedure TfrmCadastroPessoa.BCadastroClick(Sender: TObject);
begin
 try
      FDQuery1.SQL.Text :=
    'INSERT INTO public.funcionario (matricula, nome, cargo, salario) ' +
    'VALUES (:matricula, :nome, :cargo, :salario)';

    FDQuery1.ParamByName('matricula').AsInteger := StrToInt(cxTextMatricula.Text);
    FDQuery1.ParamByName('nome').AsString := cxTextNome.Text;
    FDQuery1.ParamByName('cargo').AsString := cxTextCargoAtual.Text;
    FDQuery1.ParamByName('salario').AsCurrency := StrToCurr(cxTextSalario.Text);

    FDQuery1.ExecSQL;

    ShowMessage('Funcionario inserido com sucesso!');

    // Recarrega os dados
    FDQuery1.SQL.Text := 'SELECT * FROM funcionario';
    FDQuery1.Open;
  except
    on E: Exception do
      ShowMessage('Erro ao inserir: ' + E.Message);
  end;

  ShowMessage('Cadastro realizado com sucesso!' + sLineBreak +
              'Matricula: ' + (cxTextMatricula.Text) + sLineBreak +
              'Nome: ' + cxTextNome.Text + sLineBreak +
              'Cargo: ' + cxTextCargoAtual.Text + sLineBreak +
              'Salário: ' + (cxTextSalario.Text));

  // ModalResult := mrOK;
end;

procedure TfrmCadastroPessoa.BSair2Click(Sender: TObject);
begin
  Close;
end;



end.
