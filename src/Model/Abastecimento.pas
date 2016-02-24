unit Abastecimento;

interface

uses
  Bomba;

type

  TAbastecimento = class
  private
    FId: Integer;
    FQuantidade: Double;
    FValor: Double;
    FBomba: TBomba;
    function GetBomba: TBomba;
    function GetId: Integer;
    function GetQuantidade: Double;
    function GetValor: Double;
    procedure SetBomba(const Value: TBomba);
    procedure SetId(const Value: Integer);
    procedure SetQuantidade(const Value: Double);
    procedure SetValor(const Value: Double);

  public
    constructor create;
    destructor destroy;

    property Id: Integer read GetId write SetId;
    property Quantidade: Double read GetQuantidade write SetQuantidade;
    property Valor: Double read GetValor write SetValor;
    property Bomba: TBomba read GetBomba write SetBomba;
  end;

implementation

{ TAbastecimento }

constructor TAbastecimento.create;
begin
  FBomba := TBomba.Create;
end;

destructor TAbastecimento.destroy;
begin
  FBomba.Destroy;
end;

function TAbastecimento.GetBomba: TBomba;
begin
  Result := FBomba;
end;

function TAbastecimento.GetId: Integer;
begin
  Result := FId;
end;

function TAbastecimento.GetQuantidade: Double;
begin
  Result := FQuantidade;
end;

function TAbastecimento.GetValor: Double;
begin
  Result := FValor;
end;

procedure TAbastecimento.SetBomba(const Value: TBomba);
begin
  FBomba := Value;
end;

procedure TAbastecimento.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TAbastecimento.SetQuantidade(const Value: Double);
begin
  FQuantidade := Value;
end;

procedure TAbastecimento.SetValor(const Value: Double);
begin
  FValor := Value;
end;

end.
