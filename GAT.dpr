program GAT;

uses
  Vcl.Forms,
  untDatabaseConnection in 'src\Connection\untDatabaseConnection.pas' {dtGat: TDataModule},
  Tanque in 'src\Model\Tanque.pas',
  Bomba in 'src\Model\Bomba.pas',
  Abastecimento in 'src\Model\Abastecimento.pas',
  BaseDAO in 'src\Dao\BaseDAO.pas',
  AbastecimentoDAO in 'src\Dao\AbastecimentoDAO.pas',
  untConnection in 'src\Connection\untConnection.pas',
  untLancamento in 'src\View\untLancamento.pas' {fmLancamento},
  untPrincipal in 'src\View\untPrincipal.pas' {fmPrincipal},
  TanqueDAO in 'src\Dao\TanqueDAO.pas',
  untRelatorio in 'src\Report\untRelatorio.pas' {fmRelatorio},
  AbastecimentoHelper in 'src\Helper\AbastecimentoHelper.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdtGat, dtGat);
  Application.CreateForm(TfmPrincipal, fmPrincipal);
  Application.Run;
end.
