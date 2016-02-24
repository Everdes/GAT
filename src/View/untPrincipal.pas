unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMenus, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, RLConsts;

type
  TfmPrincipal = class(TForm)
    ilMenuPrincipal: TImageList;
    actManager: TActionManager;
    ActionToolBar1: TActionToolBar;
    actLan�ar: TAction;
    actRelatorio: TAction;
    procedure actLan�arExecute(Sender: TObject);
    procedure actRelatorioExecute(Sender: TObject);
  private
    procedure carregarDados;
  public
    { Public declarations }
  end;

var
  fmPrincipal: TfmPrincipal;

implementation

{$R *.dfm}

uses untLancamento, untRelatorio, AbastecimentoDAO;

procedure TfmPrincipal.actLan�arExecute(Sender: TObject);
begin
  Application.CreateForm(TfmLancamento, fmLancamento);
  fmLancamento.ShowModal;

  FreeAndNil(fmLancamento);
end;

procedure TfmPrincipal.actRelatorioExecute(Sender: TObject);
begin
  Application.CreateForm(TfmRelatorio, fmRelatorio);

  carregarDados;

  fmRelatorio.RLReport.Preview;
end;

procedure TfmPrincipal.carregarDados;
var
  AbastecimentoDAO: TAbastecimentoDAO;
begin
  AbastecimentoDAO := TAbastecimentoDAO.create;

  AbastecimentoDAO.carregar;

  FreeAndNil(AbastecimentoDAO);
end;

initialization

RLConsts.SetVersion(3,71, 'B');

end.
