program Tintoreria;

uses
  Forms,
  ULogin in 'ULogin.pas' {FLogin},
  UDMtintoreria in 'UDMtintoreria.pas' {DMtintoreria: TDataModule},
  UPrincipal in 'UPrincipal.pas' {FPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
   Application.CreateForm(TFLogin, FLogin);

  Application.CreateForm(TDMtintoreria, DMtintoreria);
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.