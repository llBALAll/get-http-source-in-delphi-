unit gethttp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComObj;

type
    TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Memo1: TMemo;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var http: variant;
begin
 http:=createoleobject('WinHttp.WinHttpRequest.5.1');
 http.open('GET', 'http://' + Edit1.Text , false);
 http.send;
 Memo1.Text := http.responsetext;
end;

end.
