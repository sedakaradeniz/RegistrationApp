object FormData: TFormData
  Left = 0
  Top = 0
  ClientHeight = 479
  ClientWidth = 779
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIForm
  TextHeight = 15
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\DelphiProjem\SQLLite_DB.db'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 104
    Top = 24
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from PersonalInformation')
    Left = 240
    Top = 32
    object FDQuery1ID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQuery1TC: TWideMemoField
      FieldName = 'TC'
      Origin = 'TC'
      Required = True
      BlobType = ftWideMemo
      DisplayValue = dvClip
    end
    object FDQuery1Name: TWideMemoField
      FieldName = 'Name'
      Origin = 'Name'
      Required = True
      BlobType = ftWideMemo
      DisplayValue = dvClip
    end
    object FDQuery1Surname: TWideMemoField
      FieldName = 'Surname'
      Origin = 'Surname'
      Required = True
      BlobType = ftWideMemo
      DisplayValue = dvClip
    end
    object FDQuery1Phone: TWideMemoField
      FieldName = 'Phone'
      Origin = 'Phone'
      Required = True
      BlobType = ftWideMemo
      DisplayValue = dvClip
    end
    object FDQuery1Gender: TWideMemoField
      FieldName = 'Gender'
      Origin = 'Gender'
      Required = True
      BlobType = ftWideMemo
      DisplayValue = dvClip
    end
    object FDQuery1Picture: TWideMemoField
      FieldName = 'Picture'
      Origin = 'Picture'
      BlobType = ftWideMemo
      DisplayValue = dvClip
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 360
    Top = 41
  end
end
