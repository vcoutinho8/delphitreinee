unit projetoprincipal.main.view;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, gestaorhdelphi.view;

type
  TfrmPrincipal = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
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

end.
