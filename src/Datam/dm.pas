unit dm;

interface

uses
  System.SysUtils, System.Classes, sSkinManager, Data.DB, Data.Win.ADODB,
  System.Win.ScktComp;

type
  Tdm1 = class(TDataModule)
    skn: TsSkinManager;
    cnx: TADOConnection;
    Login_q: TADOQuery;
    User_table: TADOTable;
    User_ds: TDataSource;
    MaterialTable: TADOTable;
    Material_ds: TDataSource;
    TicketServer: TServerSocket;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm1: Tdm1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
