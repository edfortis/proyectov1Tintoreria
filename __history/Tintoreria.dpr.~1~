program Tintoreria;

uses
  Forms,
  ULogin in 'ULogin.pas' {FLogin},
  UDMtintoreria in 'UDMtintoreria.pas' {DMtintoreria: TDataModule},
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UCatalogo in 'UCatalogo.pas' {FCatalogo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDMtintoreria, DMtintoreria);
  Application.CreateForm(TFPrincipal, FPrincipal);

  Application.Run;
end.
