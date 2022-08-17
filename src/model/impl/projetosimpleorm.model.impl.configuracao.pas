unit projetosimpleorm.model.impl.configuracao;

interface

uses
  LocalCache4D,
  System.SysUtils,
  projetosimpleorm.model.interfaces;

type
  TConfiguracao = class(TInterfacedObject, iConfiguracao)
  private
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iConfiguracao;

    function DriverId(Value: string): iConfiguracao; overload;
    function DriverId: string; overload;

    function Database(Value: string): iConfiguracao; overload;
    function Database: string; overload;

    function Username(Value: string): iConfiguracao; overload;
    function Username: string; overload;

    function Password(Value: string): iConfiguracao; overload;
    function Password: string; overload;

    function Port(Value: string): iConfiguracao; overload;
    function Port: string; overload;

    function Server(Value: string): iConfiguracao; overload;
    function Server: string; overload;

    function Schema(Value: string): iConfiguracao; overload;
    function Schema: string; overload;

    function Locking(Value: string): iConfiguracao; overload;
    function Locking: string; overload;
  end;

implementation

{ TConfiguracao }

constructor TConfiguracao.Create;
begin
  if not FileExists('SimpleORM.lc4') then
    LocalCache.SaveToStorage('SimpleORM.lc4');

  LocalCache.LoadDatabase('SimpleORM.lc4');
  LocalCache.Instance('Configuracao');
end;

function TConfiguracao.Database: string;
begin
  Result := LocalCache.GetItem('Database');
end;

function TConfiguracao.Database(Value: string): iConfiguracao;
begin
  Result := Self;
  LocalCache.SetItem('Database', Value);
end;

destructor TConfiguracao.Destroy;
begin
  LocalCache.SaveToStorage('SimpleORM.lc4');
  inherited;
end;

function TConfiguracao.DriverId: string;
begin
  Result := LocalCache.GetItem('DriverId');
end;

function TConfiguracao.DriverId(Value: string): iConfiguracao;
begin
  Result := Self;
  LocalCache.SetItem('DriverId', Value);
end;

function TConfiguracao.Locking(Value: string): iConfiguracao;
begin
  Result := Self;
  LocalCache.SetItem('Locking', Value);
end;

function TConfiguracao.Locking: string;
begin
  Result := LocalCache.GetItem('Locking');
end;

class function TConfiguracao.New: iConfiguracao;
begin

end;

function TConfiguracao.Password(Value: string): iConfiguracao;
begin
  Result := Self;
  LocalCache.SetItem('Password', Value);
end;

function TConfiguracao.Password: string;
begin
  Result := LocalCache.GetItem('Password');
end;

function TConfiguracao.Port: string;
begin
  Result := LocalCache.GetItem('Port');
end;

function TConfiguracao.Port(Value: string): iConfiguracao;
begin
  Result := Self;
  LocalCache.SetItem('Port', Value);
end;

function TConfiguracao.Schema: string;
begin
  Result := LocalCache.GetItem('Schema');
end;

function TConfiguracao.Schema(Value: string): iConfiguracao;
begin
  Result := Self;
  LocalCache.SetItem('Schema', Value);
end;

function TConfiguracao.Server(Value: string): iConfiguracao;
begin
  Result := Self;
  LocalCache.SetItem('Server', Value);
end;

function TConfiguracao.Server: string;
begin
  Result := LocalCache.GetItem('Server');
end;

function TConfiguracao.Username(Value: string): iConfiguracao;
begin
  Result := Self;
  LocalCache.SetItem('Username', Value);
end;

function TConfiguracao.Username: string;
begin
  Result := LocalCache.GetItem('Username');
end;

end.
