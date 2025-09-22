unit projetoprincipal.main.view;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, gestaorhdelphi.view,
  fila.view;

type
  TfrmPrincipal = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.Button1Click(Sender: TObject);

begin
  try
    if frmGestaodeRH = nil then
      frmGestaodeRH := TfrmGestaodeRH.Create(nil);
    frmGestaodeRH.ShowModal;
  finally
    FreeAndNil(frmGestaodeRH);
  end;
end;

procedure TfrmPrincipal.Button2Click(Sender: TObject);

begin
  try
    if frmFila = nil then
      frmFila := TfrmFila.Create(nil);
    frmFila.ShowModal;
  finally
    FreeAndNil(frmFila);
  end;
end;

end.
