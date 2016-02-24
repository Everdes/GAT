unit untRelatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, untDatabaseConnection, RLConsts;

type
  TfmRelatorio = class(TForm)
    RLReport: TRLReport;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel1: TRLLabel;
    RLBand1: TRLBand;
    RLBand3: TRLBand;
    RLLabel5: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDraw1: TRLDraw;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRelatorio: TfmRelatorio;

implementation

{$R *.dfm}

end.
