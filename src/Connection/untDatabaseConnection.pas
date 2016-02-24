unit untDatabaseConnection;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, Data.DB,
  FireDAC.Comp.Client, FireDAC.Phys.SQLite, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.FB, FireDAC.Phys.IBBase, FireDAC.VCLUI.Wait, FireDAC.Comp.UI,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TdtGat = class(TDataModule)
    fdConnection: TFDConnection;
    FDPhysFBDriverLink: TFDPhysFBDriverLink;
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
    qryAbastecimento: TFDQuery;
    dsAbastecimento: TDataSource;
    qryBomba: TFDQuery;
    dsBomba: TDataSource;
    qryRelatorio: TFDQuery;
    dsRelatorio: TDataSource;
  private
    procedure getConnection;
  public
    procedure conectar;
    procedure desconectar;
  end;

var
  dtGat: TdtGat;

implementation

uses
  untConnection, Vcl.Forms;

{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}
{ TdtGat }

procedure TdtGat.conectar;
begin
  if not fdConnection.Connected then
    getConnection;
end;

procedure TdtGat.desconectar;
begin
  fdConnection.Connected := false;
end;

procedure TdtGat.getConnection;
var
  connection: TConnection;
begin
  connection := TConnection.create(Application.ExeName);

  connection.conectar(fdConnection);
end;

end.
