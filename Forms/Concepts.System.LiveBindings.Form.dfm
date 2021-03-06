object frmLiveBindings: TfrmLiveBindings
  Left = 177
  Top = 140
  ClientHeight = 532
  ClientWidth = 892
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  ShowHint = True
  OnResize = FormResize
  DesignSize = (
    892
    532)
  PixelsPerInch = 96
  TextHeight = 13
  object splVertical: TSplitter
    Left = 274
    Top = 0
    Width = 6
    Height = 513
    ExplicitLeft = 251
    ExplicitHeight = 459
  end
  object pnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 274
    Height = 513
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    object cbxControls: TComboBox
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 268
      Height = 21
      Margins.Bottom = 0
      Align = alTop
      Style = csDropDownList
      DropDownCount = 20
      TabOrder = 0
      OnChange = cbxControlsChange
    end
  end
  object pnlRight: TPanel
    Left = 280
    Top = 0
    Width = 612
    Height = 513
    Align = alClient
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    DesignSize = (
      612
      513)
    object lblLabel: TLabel
      Left = 6
      Top = 35
      Width = 104
      Height = 132
      Hint = 
        'The Font'#39's Size property is linked to the position of the trackb' +
        'ar component.'
      CustomHint = hntMain
      Alignment = taCenter
      AutoSize = False
      Caption = 'S'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
    object lblCompanyName: TLabel
      Left = 123
      Top = 129
      Width = 76
      Height = 13
      Caption = 'CompanyName:'
      FocusControl = edtCompanyName
    end
    object lblFirstName: TLabel
      Left = 123
      Top = 156
      Width = 52
      Height = 13
      Caption = 'FirstName:'
      FocusControl = edtFirstName
    end
    object lblLastName: TLabel
      Left = 123
      Top = 183
      Width = 47
      Height = 13
      Caption = 'LastName'
      FocusControl = edtLastName
    end
    object lblButtonCaption: TLabel
      Left = 6
      Top = 10
      Width = 111
      Height = 13
      Caption = 'Change buttoncaption:'
      FocusControl = edtButtonCaption
    end
    object trbTrackBar: TTrackBar
      Left = 116
      Top = 36
      Width = 483
      Height = 45
      CustomHint = hntMain
      Anchors = [akLeft, akTop, akRight]
      Max = 100
      Min = 8
      Frequency = 10
      Position = 8
      PositionToolTip = ptTop
      ShowSelRange = False
      TabOrder = 0
      OnChange = trbTrackBarChange
    end
    object grdMain: TStringGrid
      Tag = 3
      Left = 6
      Top = 240
      Width = 601
      Height = 267
      Anchors = [akLeft, akTop, akRight]
      ColCount = 3
      DefaultColWidth = 120
      FixedCols = 0
      RowCount = 101
      TabOrder = 1
      ColWidths = (
        120
        120
        120)
    end
    object edtLastName: TEdit
      Left = 205
      Top = 180
      Width = 164
      Height = 21
      TabOrder = 2
    end
  end
  object edtButtonCaption: TEdit
    Left = 403
    Top = 8
    Width = 212
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 2
  end
  object btnButton: TButton
    Left = 621
    Top = 5
    Width = 258
    Height = 25
    Anchors = [akTop, akRight]
    TabOrder = 3
  end
  object pbProgressBar: TProgressBar
    Left = 403
    Top = 72
    Width = 476
    Height = 17
    Hint = 
      'The Position property is linked to the Position property of the ' +
      'trackbar component.'
    CustomHint = hntMain
    Anchors = [akLeft, akTop, akRight]
    DoubleBuffered = False
    ParentDoubleBuffered = False
    Smooth = True
    TabOrder = 4
  end
  object sbrMain: TStatusBar
    Left = 0
    Top = 513
    Width = 892
    Height = 19
    Hint = 'Shows the panel'#39's width and height property values.'
    CustomHint = hntMain
    Panels = <>
    SimplePanel = True
    SimpleText = 'TPanel, Width: 348, Height: 440'
  end
  object edtCompanyName: TEdit
    Left = 485
    Top = 126
    Width = 164
    Height = 21
    TabOrder = 6
  end
  object edtFirstName: TEdit
    Left = 485
    Top = 153
    Width = 164
    Height = 21
    TabOrder = 7
  end
  object btnGenerateContact: TButton
    Left = 396
    Top = 95
    Width = 157
    Height = 25
    Action = actGenerateContact
    ImageMargins.Left = 4
    Images = dmResources.imlMain
    TabOrder = 8
  end
  object btnAlterContactCompany: TButton
    Left = 559
    Top = 95
    Width = 162
    Height = 25
    Action = actAlterContactCompany
    TabOrder = 9
  end
  object bndnvgtrNavigatorabsMain1: TBindNavigator
    Left = 286
    Top = 209
    Width = 220
    Height = 25
    DataSource = absMain
    Orientation = orHorizontal
    TabOrder = 10
  end
  object lstBindings: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 671
    Top = 120
    object lnkCaption: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = edtButtonCaption
      Track = True
      Component = btnButton
      ComponentProperty = 'Caption'
    end
    object bxpLabel: TBindExpression
      Category = 'Binding Expressions'
      ControlComponent = lblLabel
      SourceComponent = trbTrackBar
      SourceExpression = 'Position'
      ControlExpression = 'Font.Size'
      NotifyOutputs = False
      Direction = dirSourceToControl
    end
    object bxpProgressBar: TBindExpression
      Category = 'Binding Expressions'
      ControlComponent = pbProgressBar
      SourceComponent = trbTrackBar
      SourceExpression = 'Position'
      ControlExpression = 'Position'
      NotifyOutputs = False
      Direction = dirSourceToControl
    end
    object bxiExpressionItems: TBindExprItems
      Category = 'Binding Expressions'
      FormatExpressions = <
        item
          ControlExpression = 'pbMulti1.Position'
          SourceExpression = 'Position'
          Direction = dirBidirectional
        end
        item
          ControlExpression = 'pbMulti2.Posion'
          SourceExpression = 'Position'
        end>
      ClearExpressions = <>
      NotifyOutputs = False
    end
    object bxpStatusbar: TBindExpression
      Category = 'Binding Expressions'
      ControlComponent = sbrMain
      SourceComponent = pnlRight
      SourceExpression = 
        'ClassName() + '#39', Width: '#39' + ToStr(Width) + '#39', Height: '#39' + ToStr(' +
        'Height)'
      ControlExpression = 'SimpleText'
      NotifyOutputs = False
      Direction = dirSourceToControl
    end
    object lnkgrdtdtsrcabsMain: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = absMain
      GridControl = grdMain
      Columns = <
        item
          MemberName = 'AlphaColor1'
          Width = 120
        end
        item
          MemberName = 'ContactName1'
          Width = 120
        end
        item
          MemberName = 'ColorsName1'
          Width = 120
        end>
    end
  end
  object dgaMain: TDataGeneratorAdapter
    FieldDefs = <
      item
        Name = 'AlphaColor1'
        FieldType = ftUInteger
        Generator = 'AlphaColors'
        ReadOnly = False
      end
      item
        Name = 'ColorsName1'
        Generator = 'ColorsNames'
        ReadOnly = False
      end
      item
        Name = 'ContactName1'
        Generator = 'ContactNames'
        ReadOnly = False
      end>
    Active = True
    AutoPost = False
    RecordCount = 100
    Options = [loptAllowInsert, loptAllowDelete, loptAllowModify]
    Left = 736
    Top = 88
  end
  object absMain: TAdapterBindSource
    AutoActivate = True
    Adapter = dgaMain
    ScopeMappings = <>
    Left = 768
    Top = 120
  end
  object hntMain: TBalloonHint
    Images = dmResources.imlMain
    Left = 816
    Top = 120
  end
  object aclMain: TActionList
    Images = dmResources.imlMain
    Left = 720
    Top = 120
    object actGenerateContact: TAction
      Caption = 'Generate contact'
      ImageIndex = 967
      OnExecute = actGenerateContactExecute
    end
    object actAlterContactCompany: TAction
      Caption = 'Clear the contact'#39's company'
      OnExecute = actAlterContactCompanyExecute
    end
  end
end
