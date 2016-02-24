unit TanqueDAO;

interface

uses
  BaseDAO, untDatabaseConnection, System.Generics.Collections, Tanque;

type
  TTanqueDAO = class(TBaseDAO)
  private
    FdtGat: TdtGat;
  public
    constructor create;
    destructor destroy;

    procedure carregar; override;
  end;

implementation

uses
  Vcl.Forms, Vcl.Dialogs;

{ TTanqueDAO }

procedure TTanqueDAO.carregar;
begin
  dtGat.qryBomba.Open('select * from bomba');
end;

constructor TTanqueDAO.create;
begin
  dtGat.conectar;
end;

destructor TTanqueDAO.destroy;
begin
  dtGat.desconectar;
end;

end.
