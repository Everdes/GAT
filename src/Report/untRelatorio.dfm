object fmRelatorio: TfmRelatorio
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio'
  ClientHeight = 632
  ClientWidth = 794
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport: TRLReport
    AlignWithMargins = True
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    AdjustableMargins = True
    DataSource = dtGat.dsRelatorio
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand2: TRLBand
      Left = 38
      Top = 83
      Width = 718
      Height = 35
      BandType = btColumnHeader
      object RLLabel2: TRLLabel
        Left = 18
        Top = 13
        Width = 203
        Height = 16
        Alignment = taCenter
        Caption = 'Tanque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 230
        Top = 13
        Width = 254
        Height = 16
        Alignment = taCenter
        Caption = 'Bomba'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 500
        Top = 13
        Width = 93
        Height = 16
        Alignment = taCenter
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = 608
        Top = 13
        Width = 87
        Height = 16
        Alignment = taCenter
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 32
        Width = 719
        Height = 1
      end
    end
    object RLBand1: TRLBand
      Left = 38
      Top = 118
      Width = 718
      Height = 38
      object RLDBText1: TRLDBText
        Left = 90
        Top = 16
        Width = 58
        Height = 16
        Alignment = taCenter
        DataField = 'TANQUE'
        DataSource = dtGat.dsRelatorio
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 331
        Top = 16
        Width = 52
        Height = 16
        Alignment = taCenter
        DataField = 'BOMBA'
        DataSource = dtGat.dsRelatorio
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 522
        Top = 16
        Width = 48
        Height = 16
        Alignment = taCenter
        DataField = 'VALOR'
        DataSource = dtGat.dsRelatorio
        DisplayMask = '0,000'
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 632
        Top = 16
        Width = 38
        Height = 16
        Alignment = taCenter
        DataField = 'DATA'
        DataSource = dtGat.dsRelatorio
        Text = ''
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 45
      BandType = btHeader
      object RLLabel5: TRLLabel
        Left = 227
        Top = 11
        Width = 298
        Height = 27
        Caption = 'Relat'#243'rio de Abastecimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial Black'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
    end
  end
end
