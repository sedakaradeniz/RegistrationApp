unit DataModule;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TFormData = class(TForm)
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    FDQuery1ID: TFDAutoIncField;
    FDQuery1TC: TWideMemoField;
    FDQuery1Name: TWideMemoField;
    FDQuery1Surname: TWideMemoField;
    FDQuery1Phone: TWideMemoField;
    FDQuery1Gender: TWideMemoField;
    FDQuery1Picture: TWideMemoField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormData: TFormData;


implementation
 uses RegistrationForm, RegistrationList;

{$R *.dfm}

end.
