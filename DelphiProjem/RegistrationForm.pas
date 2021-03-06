unit RegistrationForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,Vcl.Imaging.pngimage,Vcl.Imaging.jpeg, Vcl.Imaging.pnglang, Vcl.ExtCtrls,
  Vcl.StdCtrls, System.Notification;

type
  TFormMain = class(TForm)
    Image1: TImage;
    FileOpenDialog1: TFileOpenDialog;
    EdtTC: TEdit;
    EdtName: TEdit;
    EdtSurname: TEdit;
    EdtPhone: TEdit;
    ComboBoxGender: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Label6: TLabel;
    Button2: TButton;
    Label7: TLabel;
    procedure Image1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      Durum:integer;
  end;

var
  FormMain: TFormMain;


implementation

       uses RegistrationList,DataModule;

{$R *.dfm}

procedure TFormMain.Button1Click(Sender: TObject);
begin

if   EdtTC.Text='' then
begin
     showmessage('Please fill in the TC field.');
     EdtTC.SetFocus;
     exit;
end
 else if   EdtName.Text='' then
begin
     showmessage('Please fill in the Name field.');
     EdtName.SetFocus;
     exit;
end
else if   EdtSurname.Text='' then
begin
     showmessage('Please fill in the Surname field.');
     EdtSurname.SetFocus;
     exit;
end
else if   EdtPhone.Text='' then
begin
     showmessage('Please fill in the Phone field.');
     EdtPhone.SetFocus;
     Exit;
end
else if   ComboBoxGender.Text='' then
begin
     showmessage('Please fill in the Gender field.');
     ComboBoxGender.SetFocus;
     exit;
end;

if durum<>1 then  // Edite Girilen ilk kay?t

begin
FormData.FDQuery1.Close;
FormData.FDQuery1.Open ;
FormData.FDQuery1.Insert;
FormData.FDQuery1.FieldByName('TC').AsString:=EdtTC.Text;
FormData.FDQuery1.FieldByName('Name').AsString:= EdtName.Text;
FormData.FDQuery1.FieldByName('Surname').AsString:= EdtSurname.Text;
FormData.FDQuery1.FieldByName('Phone').AsString:= EdtPhone.Text;
FormData.FDQuery1.FieldByName('Gender').AsString:= ComboBoxGender.Text;
FormData.FDQuery1.FieldByName('Picture').AsString:= FileOpenDialog1.FileName;
FormData.FDQuery1.Post;
FormData.FDQuery1.Refresh;

showmessage('Registration Successful');

EdtTC.Clear;
EdtName.Clear;
EdtSurname.Clear;
EdtPhone.Clear;
ComboBoxGender.Text:='';
Image1.Picture.LoadFromFile('C:\DelphiProjem\Avatar.png');
label7.Visible:=True;

EdtTC.SetFocus;
end
else  // Grid alan?ndan Edite gelen kay?t g?ncelleme
begin

  FormData.FDQuery1.Close;
  FormData.FDQuery1.SQL.Clear;
FormData.FDQuery1.SQL.Add('UPDATE PersonalInformation SET TC="'+EdtTC.Text+'",Name="'+EdtName.Text+'",Surname="'+EdtSurname.Text+'",Phone="'+EdtPhone.Text+'", Gender="'+ComboBoxGender.Text+'",Picture="'+FileOpenDialog1.FileName+'"');
   FormData.FDQuery1.SQL.Add('WHERE ID="'+FormList.ID+'"');
   FormData.FDQuery1.ExecSQL;

   FormData.FDQuery1.Close;
  FormData.FDQuery1.SQL.Clear;
   FormData.FDQuery1.SQL.Add('select * from  PersonalInformation   ORDER BY ID');
   FormData.FDQuery1.Open;


showmessage('Update Successful');
Durum:=0;
Button1.Caption:='Save';

EdtTC.Clear;
EdtName.Clear;
EdtSurname.Clear;
EdtPhone.Clear;
ComboBoxGender.Text:='';
Image1.Picture.LoadFromFile('C:\DelphiProjem\Avatar.png');
label7.Visible:=True;

EdtTC.SetFocus;
  end;
end;
procedure TFormMain.Button2Click(Sender: TObject);
begin
FormList.DBGrid1.DataSource.DataSet.Close;
FormList.DBGrid1.DataSource.DataSet.Open;
FormList.Show;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
FormData := TFormData.Create( Self );

     FormData.FDConnection1.Connected;
FormData.FDQuery1.Open ;

end;

procedure TFormMain.Image1DblClick(Sender: TObject);
begin
FileOpenDialog1.Execute();
Image1.Picture.LoadFromFile(FileOpenDialog1.FileName);
Image1.Stretch:=True;

label7.Visible:=False;

end;

end.
