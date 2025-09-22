unit fila.view;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Contnrs,
  System.Generics.Collections;

type
  TfrmFila = class(TForm)
    Edit1: TEdit;
    btn_peek: TButton;
    btn_extract: TButton;
    btn_dequeue: TButton;
    btn_enqueue: TButton;
    btn_trimExcess: TButton;
    btn_count: TButton;
    Memo1: TMemo;
    btn_capacity: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btn_peekClick(Sender: TObject);
    procedure btn_extractClick(Sender: TObject);
    procedure btn_dequeueClick(Sender: TObject);
    procedure btn_enqueueClick(Sender: TObject);
    procedure btn_trimExcessClick(Sender: TObject);
    procedure btn_countClick(Sender: TObject);
    procedure btn_capacityClick(Sender: TObject);
  private
    { Private declarations }
    Queue : TQueue<string>;
  public
    { Public declarations }
  end;

var
  frmFila: TfrmFila;

implementation



{$R *.dfm}



procedure TfrmFila.btn_peekClick(Sender: TObject);
begin
  Memo1.Lines.Add(Queue.Peek);
end;

procedure TfrmFila.btn_trimExcessClick(Sender: TObject);
begin
  Queue.TrimExcess;
end;

procedure TfrmFila.btn_capacityClick(Sender: TObject);
begin
  Memo1.Lines.Add(Queue.Capacity.ToString)
end;

procedure TfrmFila.btn_countClick(Sender: TObject);
begin
   Memo1.Lines.Add(Queue.Count.ToString);
end;

procedure TfrmFila.btn_dequeueClick(Sender: TObject);
begin
   Memo1.Lines.Add(Queue.Dequeue);
end;

procedure TfrmFila.btn_enqueueClick(Sender: TObject);
begin
  Queue.Enqueue(Edit1.Text);
end;

procedure TfrmFila.btn_extractClick(Sender: TObject);
begin
  Memo1.Lines.Add(Queue.Extract);
end;



procedure TfrmFila.FormCreate(Sender: TObject);
begin
  Queue := TQueue<string>.Create;
end;

end.
