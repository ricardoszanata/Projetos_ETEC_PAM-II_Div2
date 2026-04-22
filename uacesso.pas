unit uacesso;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.Edit, FMX.Objects, FMX.Layouts, FMX.StdCtrls, System.JSON;

type
  Tfrmacesso = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    Layout5: TLayout;
    Image1: TImage;
    edtusuario: TEdit;
    edtsenha: TEdit;
    btnacessar: TSpeedButton;

  private
    { Private declarations }
    jsonobj: TJSONObject;
    procedure acessaUsuario();
  public
    { Public declarations }
  end;

var
  frmacesso: Tfrmacesso;

implementation

{$R *.fmx}

uses umodulo;

{ Tfrmacesso }

{ Tfrmacesso }

procedure Tfrmacesso.acessaUsuario;
begin
try
    jsonobj := TJSONObject.Create;
    jsonobj.AddPair('usuario', edtusuario.Text);
    jsonobj.AddPair('senha', edtsenha.Text);
    dm.RESTRequest1.Resource := '/usuarios/login.php?jsn={parametro}';

    dm.RESTRequest1.Execute;
finally

end;

end;

end.
