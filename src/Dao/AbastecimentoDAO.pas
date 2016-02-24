unit AbastecimentoDAO;

interface

uses
  BaseDAO, System.Generics.Collections, Abastecimento, AbastecimentoHelper, untDatabaseConnection;

type
  TAbastecimentoDAO = class(TBaseDAO)
  public
    constructor create;
    destructor destroy;

    procedure inserir(AAbastecimento: TAbastecimento); overload;
    procedure carregar; override;
  end;

implementation

uses
  FireDAC.Comp.Client, Vcl.Forms;

{ TAbastecimentoDAO }

procedure TAbastecimentoDAO.carregar;
begin
    dtGat.qryRelatorio.Open('select a.data, t.descricao as tanque, b.descricao as bomba, sum(a.valor) as valor from abastecimento a ' +
      ' join bomba b on b.id = a.id_bomba ' +
      ' join tanque t on t.id = b.id_tanque ' +
      ' group by a.data, t.descricao, b.descricao ' +
      ' order by a.data, t.descricao');

end;

constructor TAbastecimentoDAO.create;
begin
  dtGat.conectar;
end;

destructor TAbastecimentoDAO.destroy;
begin
  dtGat.desconectar;
end;

procedure TAbastecimentoDAO.inserir(AAbastecimento: TAbastecimento);
begin
  dtGat.qryAbastecimento.execSQL(
  'INSERT INTO abastecimento(quantidade, valor, valor_imposto, id_bomba) values(:quantidade, :valortotal, :valorimposto, :bomba);',
    [AAbastecimento.Quantidade, AAbastecimento.ValorTotal, AAbastecimento.ValorImposto,AAbastecimento.Bomba.Id]);
end;

end.
