unit untConnection;

interface

uses
  System.IniFiles, FireDAC.Comp.Client;

type
  TConnection = class
  private
    FIniFile: TIniFile;

    procedure escreverIni;
  public
    constructor create(AExeName: String);
    destructor destroy;

    procedure conectar(var AFDConnection: TFDConnection);
  end;

implementation

uses
  System.SysUtils, Vcl.Forms;

const
  Secao: String = 'Dados';

  { TConnection }

procedure TConnection.conectar(var AFDConnection: TFDConnection);
begin
  try
    with AFDConnection.Params do
    begin
      Values['Database']  := FIniFile.ReadString(Secao, 'Database', '');
      Values['User_Name'] := FIniFile.ReadString(Secao, 'User_Name', '');
      Values['Password']  := FIniFile.ReadString(Secao, 'Password', '');
      Values['DriverID']  := FIniFile.ReadString(Secao, 'DriverID', '');
      Values['Server']    := FIniFile.ReadString(Secao, 'Server', '');
      Values['Port']      := FIniFile.ReadString(Secao, 'Port', '');
    end;

    AFDConnection.Connected := true;
  except
    on e: Exception do
      raise Exception.create(e.Message);
  end;

end;

constructor TConnection.create(AExeName: String);
var
  diretorioArquivo: String;
begin
  diretorioArquivo := ExtractFilePath(AExeName);

  FIniFile := TIniFile.create(diretorioArquivo + 'dbConn.ini');

  if not FileExists(FIniFile.FileName) then
    escreverIni;
end;

destructor TConnection.destroy;
begin
  FIniFile.Free;
end;

procedure TConnection.escreverIni;
begin
  try
    FIniFile.WriteString(Secao, 'Database', ExtractFilePath(FIniFile.FileName) +
      'Database\GAT.FDB');
    FIniFile.WriteString(Secao, 'User_Name', 'sysdba');
    FIniFile.WriteString(Secao, 'Password', 'masterkey');
    FIniFile.WriteString(Secao, 'DriverID', 'FB');
    FIniFile.WriteString(Secao, 'Server', 'localhost');
    FIniFile.WriteString(Secao, 'Port', '3050');
  except
    on e: Exception do
      raise Exception.create(e.Message);
  end;
end;

end.
