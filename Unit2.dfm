object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 491
  ClientWidth = 678
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 678
    Height = 37
    Align = alTop
    Alignment = taCenter
    Caption = 'Dipendenti'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 132
  end
  object Panel1: TPanel
    Left = 584
    Top = 37
    Width = 94
    Height = 454
    Align = alRight
    TabOrder = 0
    object deleteBtn: TButton
      AlignWithMargins = True
      Left = 11
      Top = 195
      Width = 72
      Height = 72
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alTop
      Caption = 'Elimina'
      DisabledImageName = 'deleteBtn'
      TabOrder = 0
      OnClick = deleteBtnClick
      ExplicitLeft = 13
    end
    object EditBtn: TButton
      AlignWithMargins = True
      Left = 11
      Top = 103
      Width = 72
      Height = 72
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alTop
      Caption = 'Modifica'
      DisabledImageName = 'EditBtn'
      TabOrder = 1
      OnClick = EditBtnClick
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 82
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 11
      Top = 11
      Width = 72
      Height = 72
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alTop
      Cancel = True
      Caption = 'Aggiungi'
      DisabledImageName = 'addBtn'
      TabOrder = 2
      OnClick = Button2Click
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 82
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 37
    Width = 584
    Height = 454
    Align = alClient
    DataSource = DataModule3.DataSource1
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'employeeNumber'
        Title.Caption = 'Id'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lastName'
        Title.Caption = 'Congome'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'firstName'
        Title.Caption = 'Nome'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'extension'
        Title.Caption = 'Estensione'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Title.Caption = 'Email'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'officeCode'
        Title.Caption = 'Codice Uff.'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'reportsTo'
        Title.Caption = 'Reparto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jobTitle'
        Title.Caption = 'Inquadramento'
        Width = 100
        Visible = True
      end>
  end
end
