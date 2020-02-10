program Helpdesk;

uses
  Vcl.Forms,
  LoginForm4 in 'src\LoginForm4.pas' {LoginForm},
  Dashboard in 'src\Dashboard.pas' {DashForm},
  dm in 'src\Datam\dm.pas' {dm1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TLoginForm, LoginForm);
  Application.CreateForm(TDashForm, DashForm);
  Application.CreateForm(Tdm1, dm1);
  Application.Run;
end.
