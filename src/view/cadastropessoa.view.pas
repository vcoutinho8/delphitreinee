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
  cxGridCustomView, cxGrid;

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
    cdsDadosMatricula: TIntegerField;
    cdsDadosNome: TStringField;
    cdsDadosCargoAtual: TStringField;
    cdsDadosSalario: TCurrencyField;
    dsDados: TDataSource;
    cxGrid1DBTableView1Matricula: TcxGridDBColumn;
    cxGrid1DBTableView1Nome: TcxGridDBColumn;
    cxGrid1DBTableView1CargoAtual: TcxGridDBColumn;
    cxGrid1DBTableView1Salario: TcxGridDBColumn;
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
end;

procedure TfrmCadastroPessoa.BCadastroClick(Sender: TObject);
begin
  cdsDados.Append;
  cdsDadosMatricula.AsInteger  := StrToIntDef(cxTextMatricula.Text, 1);
  cdsDadosNOME.AsString     := cxTextNome.Text;
  cdsDadosCargoAtual.AsString := cxTextCargoAtual.Text;
  cdsDadosSalario.AsCurrency    := StrToCurrDef(cxTextSalario.Text, 1);
  cdsDados.Post;

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
