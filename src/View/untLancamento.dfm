object fmLancamento: TfmLancamento
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Lan'#231'amento de Abastecimento'
  ClientHeight = 243
  ClientWidth = 199
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 199
    Height = 243
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 1
    ExplicitTop = 1
    ExplicitWidth = 365
    ExplicitHeight = 72
    object Label1: TLabel
      Left = 16
      Top = 12
      Width = 32
      Height = 13
      Caption = 'Bomba'
    end
    object Label2: TLabel
      Left = 16
      Top = 68
      Width = 93
      Height = 13
      Caption = 'Quantidade (Litros)'
    end
    object Label3: TLabel
      Left = 16
      Top = 117
      Width = 60
      Height = 13
      Caption = 'Valor do litro'
    end
    object lkpBomba: TDBLookupComboBox
      Left = 16
      Top = 31
      Width = 161
      Height = 21
      KeyField = 'ID'
      ListField = 'DESCRICAO'
      ListFieldIndex = 1
      ListSource = dtGat.dsBomba
      TabOrder = 0
    end
    object edtQuantidade: TSpinEdit
      Left = 16
      Top = 87
      Width = 161
      Height = 22
      Ctl3D = True
      MaxValue = 0
      MinValue = 0
      ParentCtl3D = False
      TabOrder = 1
      Value = 1
    end
    object edtValor: TSpinEdit
      Left = 16
      Top = 136
      Width = 161
      Height = 22
      Ctl3D = True
      MaxValue = 0
      MinValue = 0
      ParentCtl3D = False
      TabOrder = 2
      Value = 1
    end
    object btnFinalizar: TButton
      Left = 32
      Top = 184
      Width = 121
      Height = 33
      Caption = 'Finalizar'
      ImageIndex = 2
      Images = fmPrincipal.ilMenuPrincipal
      ModalResult = 1
      TabOrder = 3
      OnClick = btnFinalizarClick
    end
  end
end
