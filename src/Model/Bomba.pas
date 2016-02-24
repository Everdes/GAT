unit Bomba;

interface

uses
  Tanque;

type
  TBomba = class
  private
    FId: Integer;
    FDescricao: String;
    FTanque: TTanque;
    function GetDescricao: String;
    function GetId: Integer;
    function GetTanque: TTanque;
    procedure SetDescricao(const Value: String);
    procedure SetId(const Value: Integer);
    procedure SetTanque(const Value: TTanque);

  public
    property Id: Integer read GetId write SetId;
    property Descricao: String read GetDescricao write SetDescricao;
    property Tanque: TTanque read GetTanque write SetTanque;
  end;

implementation

{ TBomba }

function TBomba.GetDescricao: String;
begin
  Result := FDescricao;
end;

function TBomba.GetId: Integer;
begin
  Result := FId;
end;

function TBomba.GetTanque: TTanque;
begin
  Result := FTanque;
end;

procedure TBomba.SetDescricao(const Value: String);
begin
  FDescricao := Value;
end;

procedure TBomba.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TBomba.SetTanque(const Value: TTanque);
begin
  FTanque := Value;
end;

end.
