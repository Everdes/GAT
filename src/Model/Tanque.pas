unit Tanque;

interface

type
  TTanque = class
  private
    FId: Integer;
    FDescricao: String;

    function GetId: Integer;
    procedure SetId(const Value: Integer);
    function GetDescricao: String;
    procedure SetDescricao(const Value: String);
  public
    property Id: Integer read GetId write SetId;
    property Descricao: String read GetDescricao write SetDescricao;
  end;



implementation

{ TTanque }

function TTanque.GetDescricao: String;
begin
  Result := FDescricao;
end;

function TTanque.GetId: Integer;
begin
  Result := FId;
end;

procedure TTanque.SetDescricao(const Value: String);
begin
  FDescricao := Value;
end;

procedure TTanque.SetId(const Value: Integer);
begin
  FId := Value;
end;

end.
