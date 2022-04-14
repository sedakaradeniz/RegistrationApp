object FormList: TFormList
  Left = 0
  Top = 0
  Caption = 'Registration List'
  ClientHeight = 577
  ClientWidth = 911
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 911
    Height = 577
    Align = alClient
    DataSource = FormData.DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Name'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Surname'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Phone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Gender'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Picture'
        Visible = True
      end>
  end
end
