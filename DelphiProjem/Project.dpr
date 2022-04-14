program Project;

uses
  Vcl.Forms,
  RegistrationForm in 'RegistrationForm.pas' {FormMain},
  RegistrationList in 'RegistrationList.pas' {FormList},
  DataModule in 'DataModule.pas' {FormData};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormList, FormList);
  Application.CreateForm(TFormData, FormData);
  Application.Run;
end.
