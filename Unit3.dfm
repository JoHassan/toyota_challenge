object addEditEmployee: TaddEditEmployee
  Left = 0
  Top = 0
  Caption = 'Aggiungi dipendente'
  ClientHeight = 320
  ClientWidth = 302
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 64
    Top = 16
    Width = 10
    Height = 15
    Alignment = taRightJustify
    Caption = 'Id'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 41
    Top = 56
    Width = 33
    Height = 15
    Alignment = taRightJustify
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 21
    Top = 96
    Width = 53
    Height = 15
    Alignment = taRightJustify
    Caption = 'Cognome'
  end
  object Label4: TLabel
    Left = 45
    Top = 136
    Width = 29
    Height = 15
    Alignment = taRightJustify
    Caption = 'Email'
  end
  object Label5: TLabel
    Left = 18
    Top = 176
    Width = 56
    Height = 15
    Alignment = taRightJustify
    Caption = 'Estensione'
  end
  object Label6: TLabel
    Left = 15
    Top = 216
    Width = 59
    Height = 15
    Alignment = taRightJustify
    Caption = 'Codice Uff.'
  end
  object Label8: TLabel
    Left = -11
    Top = 256
    Width = 85
    Height = 14
    Alignment = taRightJustify
    Caption = 'Inquadramento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object firstNameEdit: TEdit
    Left = 80
    Top = 53
    Width = 209
    Height = 23
    ImeName = 'Italian'
    TabOrder = 0
  end
  object lastNameEdit: TEdit
    Left = 80
    Top = 93
    Width = 209
    Height = 23
    ImeName = 'lastNameEdit'
    TabOrder = 1
  end
  object emailEdit: TEdit
    Left = 80
    Top = 133
    Width = 209
    Height = 23
    ImeName = 'Italian'
    TabOrder = 2
  end
  object extensionEdit: TEdit
    Left = 80
    Top = 173
    Width = 209
    Height = 23
    ImeName = 'Italian'
    TabOrder = 3
  end
  object officeCodeEdit: TEdit
    Left = 80
    Top = 213
    Width = 209
    Height = 23
    ImeName = 'officecodeEdit'
    TabOrder = 4
  end
  object jobTitleEdit: TEdit
    Left = 80
    Top = 253
    Width = 209
    Height = 23
    ImeName = 'Italian'
    TabOrder = 5
  end
  object cancelBtn: TButton
    Left = 8
    Top = 292
    Width = 75
    Height = 25
    Caption = 'Cancella'
    TabOrder = 6
    OnClick = cancelBtnClick
  end
  object confrimBtn: TButton
    Left = 214
    Top = 292
    Width = 75
    Height = 25
    Caption = 'Conferma'
    DisabledImageName = 'confrimBtn'
    TabOrder = 7
    OnClick = confrimBtnClick
  end
  object idSpinEdit: TSpinEdit
    Left = 80
    Top = 13
    Width = 209
    Height = 24
    MaxValue = 0
    MinValue = 0
    TabOrder = 8
    Value = 0
  end
end
