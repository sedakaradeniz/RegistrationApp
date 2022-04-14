unit RegistrationList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFormList = class(TForm)
    DBGrid1: TDBGrid;
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      ID:String;
  end;

var
  FormList: TFormList;
  ID:String;

implementation
uses RegistrationForm, DataModule;

{$R *.dfm}

procedure TFormList.DBGrid1DblClick(Sender: TObject);
begin
FormMain.Durum:=1;
ID:= dbgrid1.Fields[0].Value;
FormMain.EdtTC.Text:= dbgrid1.Fields[1].Value;
FormMain.EdtName.Text:= dbgrid1.Fields[2].Value;
FormMain.EdtSurname.Text:= dbgrid1.Fields[3].Value;
FormMain.EdtPhone.Text:= dbgrid1.Fields[4].Value;
FormMain.ComboBoxGender.Text:= dbgrid1.Fields[5].Value;
   close;
   FormMain.Button1.Caption:='Update';
   FormMain.Image1.Picture.LoadFromFile(dbgrid1.Fields[6].Value); // Burda yolu alýyorum ana formda resmi yüklüyorum

   FormMain.Show;
end;

end.
