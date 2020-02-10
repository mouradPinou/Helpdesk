object Client: TClient
  Left = 0
  Top = 0
  Caption = 'Client'
  ClientHeight = 463
  ClientWidth = 761
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Calibri'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Header: TPanel
    Left = 0
    Top = 0
    Width = 761
    Height = 97
    Align = alTop
    TabOrder = 0
    object DI_btn: TSpeedButton
      Left = 1
      Top = 1
      Width = 128
      Height = 95
      Align = alLeft
      Caption = 'Demande intervention'
      ExplicitLeft = -5
      ExplicitTop = -4
    end
    object DM_btn: TSpeedButton
      Left = 129
      Top = 1
      Width = 128
      Height = 95
      Align = alLeft
      Caption = 'Demande Material'
      ExplicitLeft = 135
      ExplicitTop = -4
    end
    object Autre: TSpeedButton
      Left = 257
      Top = 1
      Width = 128
      Height = 95
      Align = alLeft
      Caption = 'Autre'
      ExplicitLeft = 385
      ExplicitTop = 2
    end
  end
  object pg1: TPageControl
    Left = 0
    Top = 97
    Width = 761
    Height = 366
    ActivePage = AP
    Align = alClient
    TabOrder = 1
    object DIP: TTabSheet
      Caption = 'DIP'
    end
    object DMP: TTabSheet
      Caption = 'DMP'
      ImageIndex = 1
    end
    object AP: TTabSheet
      Caption = 'AP'
      ImageIndex = 2
      object GB: TButtonGroup
        Left = 653
        Top = 0
        Height = 338
        Align = alRight
        Items = <>
        TabOrder = 0
        ExplicitLeft = 576
        ExplicitTop = 184
        ExplicitHeight = 100
      end
      object pgA: TPageControl
        Left = 0
        Top = 0
        Width = 653
        Height = 338
        ActivePage = FO
        Align = alClient
        TabOrder = 1
        object FT: TTabSheet
          Caption = 'FT'
        end
        object FP: TTabSheet
          Caption = 'FP'
          ImageIndex = 1
        end
        object FO: TTabSheet
          Caption = 'FO'
          ImageIndex = 2
        end
      end
    end
  end
  object UpdateTimer: TTimer
    OnTimer = UpdateTimerTimer
    Left = 376
    Top = 240
  end
end
