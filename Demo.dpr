program Demo;

uses
  Forms,
  uMain in 'uMain.pas' {FrmMain},
  interfaces in 'src\interfaces.pas',
  CadastroEmpresaImpl in 'src\CadastroEmpresaImpl.pas',
  uLkJSON in 'lib\uLkJSON.pas';

{$R *.res}

begin
  //ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
