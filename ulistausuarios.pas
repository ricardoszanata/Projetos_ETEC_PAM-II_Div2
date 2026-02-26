unit ulistausuarios;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView;

type
  Tfrmlistausuarios = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    Button1: TButton;
    Button2: TButton;
    ListView1: TListView;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlistausuarios: Tfrmlistausuarios;

implementation

{$R *.fmx}

uses umodulo;

end.
