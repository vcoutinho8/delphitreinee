unit atualizarinformacoes.view;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmAtualizarDados = class(TForm)
    pnlFull: TPanel;
    pnlOpcoes: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtMatricula: TEdit;
    edtNome: TEdit;
    edtCargo: TEdit;
    edtSalario: TEdit;
    cbListaFuncionarios: TComboBox;
    pnlTopOpcoes: TPanel;
    pnlRodaPe: TPanel;
    pnlTop: TPanel;
    pnlLogo: TPanel;
    Image1: TImage;
    BVoltar: TSpeedButton;
    procedure BVoltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtualizarDados: TfrmAtualizarDados;

implementation

{$R *.dfm}

procedure TfrmAtualizarDados.BVoltarClick(Sender: TObject);
begin
 Close;
end;

end.
