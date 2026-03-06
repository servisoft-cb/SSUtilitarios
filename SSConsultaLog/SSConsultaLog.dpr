program SSConsultaLog;

uses
  Forms,
  uConsulta in 'uConsulta.pas' {fConsulta};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfConsulta, fConsulta);
  Application.Run;
end.
