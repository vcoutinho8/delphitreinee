unit gestaorhdelphi.view;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, pngimage, Vcl.ExtDlgs,
  System.Classes, System.Generics.Collections, cadastropessoa.view, listadepessoas.view,
  atualizarinformacoes.view;

type
  TfrmGestaodeRH = class(TForm)
    pnlMain: TPanel;
    pnlTop: TPanel;
    pnlLogo: TPanel;
    pnlFuncoes: TPanel;
    BAtualizarSalario: TSpeedButton;
    BConsultar: TSpeedButton;
    BCadastrar: TSpeedButton;
    pnlSair: TPanel;
    BSair: TSpeedButton;
    Image1: TImage;
    Panel1: TPanel;
    pnlRodaPe: TPanel;
    procedure BSairClick(Sender: TObject);
    procedure BCadastrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BConsultarClick(Sender: TObject);
    procedure BAtualizarSalarioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGestaodeRH: TfrmGestaodeRH;
  // ListaPessoas: TList<TPessoa>;

implementation

{$R *.dfm}



procedure TfrmGestaodeRH.FormCreate(Sender: TObject);
begin
   // ListaPessoas := TList<TPessoa>.Create;
end;

procedure TfrmGestaodeRH.FormDestroy(Sender: TObject);
begin
{var
  Pessoa: TPessoa;
begin
  for Pessoa in ListaPessoas do
    Pessoa.Free;
  ListaPessoas.Free^;}
end;

procedure TfrmGestaodeRH.BAtualizarSalarioClick(Sender: TObject);
begin
  try
    if frmAtualizarDados = nil then
      frmAtualizarDados := TfrmAtualizarDados.Create(nil);
    frmAtualizarDados.ShowModal
  finally
    FreeAndNil(frmAtualizarDados);
  end;
end;

procedure TfrmGestaodeRH.BCadastrarClick(Sender: TObject);
begin
  try
    if frmCadastroPessoa = nil then
      frmCadastroPessoa := TfrmCadastroPessoa.Create(nil);
    frmCadastroPessoa.ShowModal
  finally
    FreeAndNil(frmCadastroPessoa);
  end;
end;

procedure TfrmGestaodeRH.BConsultarClick(Sender: TObject);
begin
  try
    if frmListaCadastro = nil then
      frmListaCadastro := TfrmListaCadastro.Create(nil);
      frmListaCadastro.ShowModal;
  finally
    FreeAndNil(frmListaCadastro);
  end;
end;

procedure TfrmGestaodeRH.BSairClick(Sender: TObject);
begin
 Close;
end;

end.
