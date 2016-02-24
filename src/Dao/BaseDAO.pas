unit BaseDAO;

interface

uses
  System.Generics.Collections;

type
  TBaseDAO = class
  public
    procedure inserir(AObject: TObject); virtual; abstract;
    procedure carregar; virtual; abstract;
  end;

implementation

end.
