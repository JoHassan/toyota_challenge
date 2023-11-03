object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Sei sicuro?'
  ClientHeight = 110
  ClientWidth = 357
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 357
    Height = 21
    Align = alTop
    Alignment = taCenter
    Caption = 'Vuoi davvero eliminare questo dipendente?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 334
  end
  object cancelBtn: TButton
    Left = 16
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Cancella'
    TabOrder = 0
    OnClick = cancelBtnClick
  end
  object confrimBtn: TButton
    Left = 258
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Conferma'
    DisabledImageName = 'confrimBtn'
    TabOrder = 1
    OnClick = confrimBtnClick
  end
end
