unit untLancamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.Mask, Vcl.Samples.Spin,
  Abastecimento;

type
  TfmLancamento = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lkpBomba: TDBLookupComboBox;
    edtQuantidade: TSpinEdit;
    edtValor: TSpinEdit;
    btnFinalizar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnFinalizarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FAbastecimento: TAbastecimento;

    procedure getDadosFromUI;
  public
    { Public declarations }
  end;

var
  fmLancamento: TfmLancamento;

implementation

{$R *.dfm}

uses untDatabaseConnection, TanqueDAO, AbastecimentoDAO, Bomba, untPrincipal;

procedure TfmLancamento.btnFinalizarClick(Sender: TObject);
var
  AbastecimentoDAO: TAbastecimentoDAO;
begin
  AbastecimentoDAO := TAbastecimentoDAO.create;

  try
    getDadosFromUI;

    AbastecimentoDAO.inserir(FAbastecimento);
  except
    on E: Exception do
      ShowMessage('Ocorreu o seguinte erro: ' + E.Message);
  end;

  FreeAndNil(AbastecimentoDAO);
end;

procedure TfmLancamento.FormCreate(Sender: TObject);
var
  TanqueDAO: TTanqueDAO;
begin
  FAbastecimento := TAbastecimento.create;

  TanqueDAO := TTanqueDAO.create;
  TanqueDAO.carregar;

  FreeAndNil(TanqueDAO);
end;

procedure TfmLancamento.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FAbastecimento);
end;

procedure TfmLancamento.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    SelectNext(ActiveControl, true, true);
end;

procedure TfmLancamento.getDadosFromUI;
begin
  with FAbastecimento do
  begin
    Bomba.Id := lkpBomba.ListFieldIndex;
    Bomba.Descricao := lkpBomba.Text;

    Quantidade := StrToFloat(edtQuantidade.Text);
    Valor := StrToFloat(edtQuantidade.Text) * StrToFloat(edtValor.Text);
  end;
end;

end.
