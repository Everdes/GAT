unit AbastecimentoHelper;

interface

uses Abastecimento;

type
  TAbastecimentoHelper = class helper for TAbastecimento
  private
    function GetValorImposto: Double;
    function GetValorTotal: Double;
  public
    property ValorImposto: Double read GetValorImposto;
    property ValorTotal: Double read GetValorTotal;
  end;

implementation

{ TAbastecimentoHelper }

function TAbastecimentoHelper.GetValorImposto: Double;
begin
  Result := ((Valor * 13) / 100);
end;

function TAbastecimentoHelper.GetValorTotal: Double;
begin
  Result := Valor + ValorImposto;
end;

end.
