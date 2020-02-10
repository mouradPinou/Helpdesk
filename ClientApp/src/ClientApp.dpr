program ClientApp;

uses
  Vcl.Forms,
  TicketingSystemMain in 'TicketingSystemMain.pas' {Client};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TClient, Client);
  Application.Run;
end.
