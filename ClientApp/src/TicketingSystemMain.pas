unit TicketingSystemMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ButtonGroup;

type
  TClient = class(TForm)
    Header: TPanel;
    pg1: TPageControl;
    DI_btn: TSpeedButton;
    DM_btn: TSpeedButton;
    Autre: TSpeedButton;
    UpdateTimer: TTimer;
    DIP: TTabSheet;
    DMP: TTabSheet;
    AP: TTabSheet;
    GB: TButtonGroup;
    pgA: TPageControl;
    FT: TTabSheet;
    FP: TTabSheet;
    FO: TTabSheet;
    procedure UpdateTimerTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Client: TClient;

implementation

{$R *.dfm}

procedure TClient.UpdateTimerTimer(Sender: TObject);
begin
  DM_btn.Width := Header.Width div 3;  // bah Yji l3ard Swa swa
  DI_btn.Width := Header.Width div 3;
  Autre.Width := Header.Width div 3;
end;

end.
