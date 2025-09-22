unit discionario.view;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  System.Generics.Collections;

type
  TPessoa = record
    Nome: String;
    CPF: String;
  end;

  TfrmDiscionario = class(TForm)

    Memo1: TMemo;
    btn_AddOrSet: TButton;
    btn_containsValue: TButton;
    btn_containsKey: TButton;
    btn_trimExcess: TButton;
    btn_remove: TButton;
    btn_TryGetValue: TButton;
    btn_add: TButton;
    Edit1: TEdit;
    btn_OnValueNotify: TButton;
    btn_OnKeyNotify: TButton;
    btn_clear: TButton;
    btn_value: TButton;
    btn_key: TButton;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure btn_addClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_TryGetValueClick(Sender: TObject);
    procedure btn_removeClick(Sender: TObject);
    procedure btn_containsKeyClick(Sender: TObject);
    procedure btn_containsValueClick(Sender: TObject);
    procedure btn_AddOrSetClick(Sender: TObject);
    procedure btn_keyClick(Sender: TObject);
    procedure btn_valueClick(Sender: TObject);
    procedure btn_clearClick(Sender: TObject);
    procedure btn_OnKeyNotifyClick(Sender: TObject);
    procedure btn_OnValueNotifyClick(Sender: TObject);
  private
    { Private declarations }
    discionario: TDictionary<String, TPessoa>;

    procedure KeyNotify(Sender: TObject; const Item: String; Action: TCollectionNotification);
    procedure ValueNotify(Sender: TObject; const Item: TPessoa; Action: TCollectionNotification);
  public
    { Public declarations }
  end;

var
  frmDiscionario: TfrmDiscionario;

implementation

{$R *.dfm}

procedure TfrmDiscionario.btn_addClick(Sender: TObject);
var
  Pessoa: TPessoa;
begin
  Pessoa.CPF := Edit1.Text;
  Pessoa.Nome := Edit2.Text;
  discionario.Add(Pessoa.CPF, Pessoa);
end;

procedure TfrmDiscionario.btn_AddOrSetClick(Sender: TObject);
var
  Pessoa: TPessoa;
begin
  Pessoa.CPF := Edit1.Text;
  Pessoa.Nome := Edit2.Text;
  discionario.AddOrSetValue(Pessoa.CPF, Pessoa);
end;

procedure TfrmDiscionario.btn_clearClick(Sender: TObject);
begin
  discionario.Clear;
end;

procedure TfrmDiscionario.btn_containsKeyClick(Sender: TObject);
begin
  if discionario.ContainsKey(Edit1.Text) then
    Memo1.Lines.Add('Usuario encontrado')
  else
    Memo1.Lines.Add('Usuario nao encontrado')
end;

procedure TfrmDiscionario.btn_containsValueClick(Sender: TObject);
var
  Pessoa: TPessoa;
begin
  Pessoa.CPF := Edit1.Text;
  Pessoa.Nome := Edit2.Text;

  if discionario.ContainsValue(Pessoa) then
    Memo1.Lines.Add('Usuario encontrado')
  else
    Memo1.Lines.Add('Usuario nao encontrado')
end;

procedure TfrmDiscionario.btn_keyClick(Sender: TObject);
var
  Key: string;
begin
  for Key in discionario.Keys do
    Memo1.Lines.Add(Key);
end;

procedure TfrmDiscionario.btn_OnKeyNotifyClick(Sender: TObject);
begin
  discionario.OnKeyNotify := KeyNotify;
end;

procedure TfrmDiscionario.btn_OnValueNotifyClick(Sender: TObject);
begin
  discionario.OnValueNotify := ValueNotify;
end;

procedure TfrmDiscionario.btn_removeClick(Sender: TObject);
begin
  discionario.Remove(Edit1.Text);
end;

procedure TfrmDiscionario.btn_TryGetValueClick(Sender: TObject);
var
  Pessoa: TPessoa;
begin
  if discionario.TryGetValue(Edit1.Text, Pessoa) then
    Memo1.Lines.Add(Pessoa.Nome + '-' + Pessoa.CPF)
  else
    Memo1.Lines.Add('Usuario nao encontrado');
end;

procedure TfrmDiscionario.btn_valueClick(Sender: TObject);
var
  Value: TPessoa;
begin
  for Value in discionario.Values do
    Memo1.Lines.Add(Value.Nome);
end;

procedure TfrmDiscionario.FormCreate(Sender: TObject);
begin
  discionario := TDictionary<string, TPessoa>.Create;
end;

procedure TfrmDiscionario.KeyNotify(Sender: TObject; const Item: String; Action: TCollectionNotification);
begin
  case Action of
    cnAdded:
      Memo1.Lines.Add('A Chave ' + Item + ' foi adicionada');
    cnRemoved:
      Memo1.Lines.Add('A Chave ' + Item + ' foi removida');
    cnExtracted:
      Memo1.Lines.Add('A Chave ' + Item + ' foi extraída');

  end;
end;

procedure TfrmDiscionario.ValueNotify(Sender: TObject; const Item: TPessoa; Action: TCollectionNotification);
begin
  case Action of
    cnAdded:
      Memo1.Lines.Add('O Value ' + Item.Nome + ' foi adicionada');
    cnRemoved:
      Memo1.Lines.Add('O Value ' + Item.Nome + ' foi removida');
    cnExtracted:
      Memo1.Lines.Add('O Value ' + Item.Nome + ' foi extraída');

  end;
end;

end.
