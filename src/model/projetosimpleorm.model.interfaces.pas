unit projetosimpleorm.model.interfaces;

interface

uses
  Data.DB;

type
  iConexao = interface
    ['{87C8BE8A-37CA-4045-9293-7A6CC0333878}']
    function Connect: TCustomConnection;
  end;

  iConfiguracao = interface
    ['{10791116-7D4F-42F5-8DFE-F91C3D31D812}']
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

end.
