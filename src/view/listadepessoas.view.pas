unit listadepessoas.view;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls, cadastropessoa.view, pessoa.view, System.Generics.Collections,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, Datasnap.DBClient;

type
    TfrmListaCadastro = class(TForm)
    pnlFull: TPanel;
    pnlTop: TPanel;
    pnlLista: TPanel;
    pnlDown: TPanel;
    pnlList: TPanel;
    Image1: TImage;
    BVoltar: TSpeedButton;
    procedure BVoltarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    ListaPessoas: TList<TPessoa>;
    procedure AdicionarPessoa(Matricula, Nome, Cargo, Salario: String);
  end;

var
  frmListaCadastro: TfrmListaCadastro;

implementation

{$R *.dfm}

procedure TfrmListaCadastro.FormCreate(Sender: TObject);
begin
  ListaPessoas := TObjectList<TPessoa>.Create;
end;

procedure TfrmListaCadastro.FormDestroy(Sender: TObject);
begin
  FreeAndNil(ListaPessoas);
end;

procedure TfrmListaCadastro.AdicionarPessoa(Matricula, Nome, Cargo,
  Salario: String);
var
  P: TPessoa;
begin
  P := TPessoa.Create;
  P.Matricula := StrToIntDef(Matricula, 0);
  P.Nome := Nome;
  P.CargoAtual := Cargo;
  P.SalarioAtual := StrToCurrDef(Salario, 0);

  ListaPessoas.Add(P);
end;





procedure TfrmListaCadastro.BVoltarClick(Sender: TObject);
begin
  Close;
end;

end.
