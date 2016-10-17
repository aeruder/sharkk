# -*- coding: utf-8 -*-
module Sharkk
  module Mapping
    module KeyboardPage
      #04 Keyboard a and A
      A = Keycode.new(0x04, :keyboard).freeze
      #05 Keyboard b and B
      B = Keycode.new(0x05, :keyboard).freeze
      #06 Keyboard c and C
      C = Keycode.new(0x06, :keyboard).freeze
      #07 Keyboard d and D
      D = Keycode.new(0x07, :keyboard).freeze
      #08 Keyboard e and E
      E = Keycode.new(0x08, :keyboard).freeze
      #09 Keyboard f and F
      F = Keycode.new(0x09, :keyboard).freeze
      #0A Keyboard g and G
      G = Keycode.new(0x0A, :keyboard).freeze
      #0B Keyboard h and H
      H = Keycode.new(0x0B, :keyboard).freeze
      #0C Keyboard i and I
      I = Keycode.new(0x0C, :keyboard).freeze
      #0D Keyboard j and J
      J = Keycode.new(0x0D, :keyboard).freeze
      #0E Keyboard k and K
      K = Keycode.new(0x0E, :keyboard).freeze
      #0F Keyboard l and L
      L = Keycode.new(0x0F, :keyboard).freeze
      #10 Keyboard m and M
      M = Keycode.new(0x10, :keyboard).freeze
      #11 Keyboard n and N
      N = Keycode.new(0x11, :keyboard).freeze
      #12 Keyboard o and O
      O = Keycode.new(0x12, :keyboard).freeze
      #13 Keyboard p and P
      P = Keycode.new(0x13, :keyboard).freeze
      #14 Keyboard q and Q
      Q = Keycode.new(0x14, :keyboard).freeze
      #15 Keyboard r and R
      R = Keycode.new(0x15, :keyboard).freeze
      #16 Keyboard s and S
      S = Keycode.new(0x16, :keyboard).freeze
      #17 Keyboard t and T
      T = Keycode.new(0x17, :keyboard).freeze
      #18 Keyboard u and U
      U = Keycode.new(0x18, :keyboard).freeze
      #19 Keyboard v and V
      V = Keycode.new(0x19, :keyboard).freeze
      #1A Keyboard w and W
      W = Keycode.new(0x1A, :keyboard).freeze
      #1B Keyboard x and X
      X = Keycode.new(0x1B, :keyboard).freeze
      #1C Keyboard y and Y
      Y = Keycode.new(0x1C, :keyboard).freeze
      #1D Keyboard z and Z
      Z = Keycode.new(0x1D, :keyboard).freeze
      #1E Keyboard 1 and !
      KB1 = Keycode.new(0x1E, :keyboard).freeze
      #1F Keyboard 2 and @
      KB2 = Keycode.new(0x1F, :keyboard).freeze
      #20 Keyboard 3 and #
      KB3 = Keycode.new(0x20, :keyboard).freeze
      #21 Keyboard 4 and $
      KB4 = Keycode.new(0x21, :keyboard).freeze
      #22 Keyboard 5 and %
      KB5 = Keycode.new(0x22, :keyboard).freeze
      #23 Keyboard 6 and ^
      KB6 = Keycode.new(0x23, :keyboard).freeze
      #24 Keyboard 7 and &
      KB7 = Keycode.new(0x24, :keyboard).freeze
      #25 Keyboard 8 and *
      KB8 = Keycode.new(0x25, :keyboard).freeze
      #26 Keyboard 9 and (
      KB9 = Keycode.new(0x26, :keyboard).freeze
      #27 Keyboard 0 and )
      KB0 = Keycode.new(0x27, :keyboard).freeze
      #28 Keyboard Return (ENTER)
      Enter = Keycode.new(0x28, :keyboard).freeze
      Return = Keycode.new(0x28, :keyboard).freeze
      #29 Keyboard ESCAPE
      Escape = Keycode.new(0x29, :keyboard).freeze
      #2A Keyboard DELETE (Backspace)
      Backspace = Keycode.new(0x2A, :keyboard).freeze
      #2B Keyboard Tab
      Tab = Keycode.new(0x2B, :keyboard).freeze
      #2C Keyboard Spacebar
      Space = Keycode.new(0x2C, :keyboard).freeze
      #2D Keyboard - and (underscore)
      KBMinus = Keycode.new(0x2D, :keyboard).freeze
      #2E Keyboard = and +
      KBPlus = Keycode.new(0x2E, :keyboard).freeze
      #2F Keyboard [ and {
      LBracket = Keycode.new(0x2F, :keyboard).freeze
      #30 Keyboard ] and }
      RBracket = Keycode.new(0x30, :keyboard).freeze
      #31 Keyboard \ and |
      Backslash = Keycode.new(0x31, :keyboard).freeze
      #32 Keyboard Non-US # and ~
      #33 Keyboard ; and :
      Semicolon = Keycode.new(0x33, :keyboard).freeze
      #34 Keyboard ‘ and “
      Apostrophe = Keycode.new(0x34, :keyboard).freeze
      #35 Keyboard Grave Accent and Tilde
      Grave = Keycode.new(0x35, :keyboard).freeze
      #36 Keyboard, and <
      Comma = Keycode.new(0x36, :keyboard).freeze
      #37 Keyboard . and >
      Period = Keycode.new(0x37, :keyboard).freeze
      #38 Keyboard / and ?
      Frontslash = Keycode.new(0x38, :keyboard).freeze
      #39 Keyboard Caps Lock
      CapsLock = Keycode.new(0x39, :keyboard).freeze
      #3A Keyboard F1
      F1 = Keycode.new(0x3A, :keyboard).freeze
      #3B Keyboard F2
      F2 = Keycode.new(0x3B, :keyboard).freeze
      #3C Keyboard F3
      F3 = Keycode.new(0x3C, :keyboard).freeze
      #3D Keyboard F4
      F4 = Keycode.new(0x3D, :keyboard).freeze
      #3E Keyboard F5
      F5 = Keycode.new(0x3E, :keyboard).freeze
      #3F Keyboard F6
      F6 = Keycode.new(0x3F, :keyboard).freeze
      #40 Keyboard F7
      F7 = Keycode.new(0x40, :keyboard).freeze
      #41 Keyboard F8
      F8 = Keycode.new(0x41, :keyboard).freeze
      #42 Keyboard F9
      F9 = Keycode.new(0x42, :keyboard).freeze
      #43 Keyboard F10
      F10 = Keycode.new(0x43, :keyboard).freeze
      #44 Keyboard F11
      F11 = Keycode.new(0x44, :keyboard).freeze
      #45 Keyboard F12
      F12 = Keycode.new(0x45, :keyboard).freeze
      #46 Keyboard PrintScreen
      PrintScreen = Keycode.new(0x46, :keyboard).freeze
      #47 Keyboard Scroll Lock
      ScrollLock = Keycode.new(0x47, :keyboard).freeze
      #48 Keyboard Pause
      Pause = Keycode.new(0x48, :keyboard).freeze
      #49 Keyboard Insert
      Insert = Keycode.new(0x49, :keyboard).freeze
      #4A Keyboard Home
      Home = Keycode.new(0x4A, :keyboard).freeze
      #4B Keyboard PageUp
      PageUp = Keycode.new(0x4B, :keyboard).freeze
      #4C Keyboard Delete Forward
      Delete = Keycode.new(0x4C, :keyboard).freeze
      #4D Keyboard End
      End = Keycode.new(0x4D, :keyboard).freeze
      #4E Keyboard PageDown
      PageDown = Keycode.new(0x4E, :keyboard).freeze
      #4F Keyboard RightArrow
      RightArrow = Keycode.new(0x4F, :keyboard).freeze
      Right = Keycode.new(0x4F, :keyboard).freeze
      #50 Keyboard LeftArrow
      LeftArrow = Keycode.new(0x50, :keyboard).freeze
      Left = Keycode.new(0x50, :keyboard).freeze
      #51 Keyboard DownArrow
      DownArrow = Keycode.new(0x51, :keyboard).freeze
      Down = Keycode.new(0x51, :keyboard).freeze
      #52 Keyboard UpArrow
      UpArrow = Keycode.new(0x52, :keyboard).freeze
      Up = Keycode.new(0x52, :keyboard).freeze
      #53 Keypad Num Lock and Clear
      NumLock = Keycode.new(0x53, :keyboard).freeze
      #54 Keypad /
      KPDivide = Keycode.new(0x54, :keyboard).freeze
      #55 Keypad *
      KPMultiply = Keycode.new(0x55, :keyboard).freeze
      #56 Keypad -
      KPMinus = Keycode.new(0x56, :keyboard).freeze
      #57 Keypad +
      KPPlus = Keycode.new(0x57, :keyboard).freeze
      #58 Keypad ENTER
      KPEnter = Keycode.new(0x58, :keyboard).freeze
      #59 Keypad 1 and End
      KP1 = Keycode.new(0x59, :keyboard).freeze
      #5A Keypad 2 and Down Arrow
      KP2 = Keycode.new(0x5A, :keyboard).freeze
      #5B Keypad 3 and PageDn
      KP3 = Keycode.new(0x5B, :keyboard).freeze
      #5C Keypad 4 and Left Arrow
      KP4 = Keycode.new(0x5C, :keyboard).freeze
      #5D Keypad 5
      KP5 = Keycode.new(0x5D, :keyboard).freeze
      #5E Keypad 6 and Right Arrow
      KP6 = Keycode.new(0x5E, :keyboard).freeze
      #5F Keypad 7 and Home
      KP7 = Keycode.new(0x5F, :keyboard).freeze
      #60 Keypad 8 and Up Arrow
      KP8 = Keycode.new(0x60, :keyboard).freeze
      #61 Keypad 9 and PageUp
      KP9 = Keycode.new(0x61, :keyboard).freeze
      #62 Keypad 0 and Insert
      KP0 = Keycode.new(0x62, :keyboard).freeze
      #63 Keypad . and Delete
      KPDecimal = Keycode.new(0x63, :keyboard).freeze
      #64 Keyboard Non-US \ and |
      #65 Keyboard Application
      Application = Keycode.new(0x65, :keyboard).freeze
      #66 Keyboard Power
      Power = Keycode.new(0x66, :keyboard).freeze
      #67 Keypad =
      KPEqual = Keycode.new(0x67, :keyboard).freeze
      #68 Keyboard F13
      F13 = Keycode.new(0x68, :keyboard).freeze
      #69 Keyboard F14
      F14 = Keycode.new(0x69, :keyboard).freeze
      #6A Keyboard F15
      F15 = Keycode.new(0x6A, :keyboard).freeze
      #6B Keyboard F16
      F16 = Keycode.new(0x6B, :keyboard).freeze
      #6C Keyboard F17
      F17 = Keycode.new(0x6C, :keyboard).freeze
      #6D Keyboard F18
      F18 = Keycode.new(0x6D, :keyboard).freeze
      #6E Keyboard F19
      F19 = Keycode.new(0x6E, :keyboard).freeze
      #6F Keyboard F20
      F20 = Keycode.new(0x6F, :keyboard).freeze
      #70 Keyboard F21
      F21 = Keycode.new(0x70, :keyboard).freeze
      #71 Keyboard F22
      F22 = Keycode.new(0x71, :keyboard).freeze
      #72 Keyboard F23
      F23 = Keycode.new(0x72, :keyboard).freeze
      #73 Keyboard F24
      F24 = Keycode.new(0x73, :keyboard).freeze
      #74 Keyboard Execute
      Execute = Keycode.new(0x74, :keyboard).freeze
      #75 Keyboard Help
      Help = Keycode.new(0x75, :keyboard).freeze
      #76 Keyboard Menu
      Menu = Keycode.new(0x76, :keyboard).freeze
      #77 Keyboard Select
      Select = Keycode.new(0x77, :keyboard).freeze
      #78 Keyboard Stop
      Stop = Keycode.new(0x78, :keyboard).freeze
      #79 Keyboard Again
      Again = Keycode.new(0x79, :keyboard).freeze
      #7A Keyboard Undo
      Undo = Keycode.new(0x7A, :keyboard).freeze
      #7B Keyboard Cut
      Cut = Keycode.new(0x7B, :keyboard).freeze
      #7C Keyboard Copy
      Copy = Keycode.new(0x7C, :keyboard).freeze
      #7D Keyboard Paste
      Paste = Keycode.new(0x7D, :keyboard).freeze
      #7E Keyboard Find
      Find = Keycode.new(0x7E, :keyboard).freeze
      #7F Keyboard Mute
      Mute = Keycode.new(0x7F, :keyboard).freeze
      #80 Keyboard Volume Up
      VolumeUp = Keycode.new(0x80, :keyboard).freeze
      #81 Keyboard Volume Down
      VolumeDown = Keycode.new(0x81, :keyboard).freeze
      #82 Keyboard Locking Caps Lock
      #83 Keyboard Locking Num Lock
      #84 Keyboard Locking Scroll Lock
      #85 Keypad Comma
      #86 Keypad Equal Sign
      #87 Keyboard International1
      #88 Keyboard International2
      #89 Keyboard International3
      #8A Keyboard International4
      #8B Keyboard International5
      #8C Keyboard International6
      #8D Keyboard International7
      #8E Keyboard International8
      #8F Keyboard International9
      #90 Keyboard LANG1
      #91 Keyboard LANG2
      #92 Keyboard LANG3
      #93 Keyboard LANG4
      #94 Keyboard LANG5
      #95 Keyboard LANG6
      #96 Keyboard LANG7
      #97 Keyboard LANG8
      #98 Keyboard LANG9
      #99 Keyboard Alternate Erase
      #9A Keyboard SysReq/Attention
      #9B Keyboard Cancel
      #9C Keyboard Clear
      #9D Keyboard Prior
      #9E Keyboard Return
      #9F Keyboard Separator
      #A0 Keyboard Out
      #A1 Keyboard Oper
      #A2 Keyboard Clear/Again
      #A3 Keyboard CrSel/Props
      #A4 Keyboard ExSel
      #B0 Keypad 00
      KP00 = Keycode.new(0xB0, :keyboard).freeze
      #B1 Keypad 000
      KP000 = Keycode.new(0xB1, :keyboard).freeze
      #B2 Thousands Separator
      #B3 Decimal Separator
      #B4 Currency Unit
      #B5 Currency Sub-unit
      #B6 Keypad (
      #B7 Keypad )
      #B8 Keypad {
      #B9 Keypad }
      #BA Keypad Tab
      #BB Keypad Backspace
      #BC Keypad A
      #BD Keypad B
      #BE Keypad C
      #BF Keypad D
      #C0 Keypad E
      #C1 Keypad F
      #C2 Keypad XOR
      #C3 Keypad ^
      #C4 Keypad %
      #C5 Keypad <
      #C6 Keypad >
      #C7 Keypad &
      #C8 Keypad &&
      #C9 Keypad |
      #CA Keypad ||
      #CB Keypad :
      #CC Keypad #
      #CD Keypad Space
      #CE Keypad @
      #CF Keypad !
      #D0 Keypad Memory Store
      #D1 Keypad Memory Recall
      #D2 Keypad Memory Clear
      #D3 Keypad Memory Add
      #D4 Keypad Memory Subtract
      #D5 Keypad Memory Multiply
      #D6 Keypad Memory Divide
      #D7 Keypad +/-
      #D8 Keypad Clear
      #D9 Keypad Clear Entry
      #DA Keypad Binary
      #DB Keypad Octal
      #DC Keypad Decimal
      #DD Keypad Hexadecimal
      #E0 Keyboard LeftControl
      LeftControl = Keycode.new(0xE0, :keyboard).freeze
      LeftCtrl = Keycode.new(0xE0, :keyboard).freeze
      #E1 Keyboard LeftShift
      LeftShift = Keycode.new(0xE1, :keyboard).freeze
      #E2 Keyboard LeftAlt
      LeftAlt = Keycode.new(0xE2, :keyboard).freeze
      #E3 Keyboard Left GUI
      LeftGUI = Keycode.new(0xE3, :keyboard).freeze
      LeftWin = Keycode.new(0xE3, :keyboard).freeze
      LeftTux = Keycode.new(0xE3, :keyboard).freeze
      #E4 Keyboard RightControl
      RightControl = Keycode.new(0xE4, :keyboard).freeze
      RightCtrl = Keycode.new(0xE4, :keyboard).freeze
      #E5 Keyboard RightShift
      RightShift = Keycode.new(0xE5, :keyboard).freeze
      #E6 Keyboard RightAlt
      RightAlt = Keycode.new(0xE6, :keyboard).freeze
      #E7 Keyboard Right GUI
      RightGUI = Keycode.new(0xE7, :keyboard).freeze
      RightWin = Keycode.new(0xE7, :keyboard).freeze
      RightTux = Keycode.new(0xE7, :keyboard).freeze
    end
    module ConsumerPage
      #00 Unassigned
      Unassigned = Keycode.new(0x00, :consumer).freeze
      #01 Consumer Control
      ConsumerControl = Keycode.new(0x01, :consumer).freeze
      #02 Numeric Key Pad
      NumericKeyPad = Keycode.new(0x02, :consumer).freeze
      #03 Programmable Buttons
      ProgrammableButtons = Keycode.new(0x03, :consumer).freeze
      #04 Microphone
      Microphone = Keycode.new(0x04, :consumer).freeze
      #05 Headphone
      Headphone = Keycode.new(0x05, :consumer).freeze
      #06 Graphic Equalizer
      GraphicEqualizer = Keycode.new(0x06, :consumer).freeze
      #20 +10
      Plus10 = Keycode.new(0x20, :consumer).freeze
      #21 +100
      Plus100 = Keycode.new(0x21, :consumer).freeze
      #22 AM/PM
      AM_PM = Keycode.new(0x22, :consumer).freeze
      #31 Reset
      Reset = Keycode.new(0x31, :consumer).freeze
      #32 Sleep
      Sleep = Keycode.new(0x32, :consumer).freeze
      #33 Sleep After
      SleepAfter = Keycode.new(0x33, :consumer).freeze
      #34 Sleep Mode
      SleepMode = Keycode.new(0x34, :consumer).freeze
      #35 Illumination
      Illumination = Keycode.new(0x35, :consumer).freeze
      #36 Function Buttons
      FunctionButtons = Keycode.new(0x36, :consumer).freeze
      #40 Menu
      Menu = Keycode.new(0x40, :consumer).freeze
      #41 Menu Pick
      MenuPick = Keycode.new(0x41, :consumer).freeze
      #42 Menu Up
      MenuUp = Keycode.new(0x42, :consumer).freeze
      #43 Menu Down
      MenuDown = Keycode.new(0x43, :consumer).freeze
      #44 Menu Left
      MenuLeft = Keycode.new(0x44, :consumer).freeze
      #45 Menu Right
      MenuRight = Keycode.new(0x45, :consumer).freeze
      #46 Menu Escape
      MenuEscape = Keycode.new(0x46, :consumer).freeze
      #47 Menu Value Increase
      MenuValueIncrease = Keycode.new(0x47, :consumer).freeze
      #48 Menu Value Decrease
      MenuValueDecrease = Keycode.new(0x48, :consumer).freeze
      #60 Data On Screen
      DataOnScreen = Keycode.new(0x60, :consumer).freeze
      #61 Closed Caption
      ClosedCaption = Keycode.new(0x61, :consumer).freeze
      #62 Closed Caption Select
      ClosedCaptionSelect = Keycode.new(0x62, :consumer).freeze
      #63 VCR/TV
      VCR_TV = Keycode.new(0x63, :consumer).freeze
      #64 Broadcast Mode
      BroadcastMode = Keycode.new(0x64, :consumer).freeze
      #65 Snapshot
      Snapshot = Keycode.new(0x65, :consumer).freeze
      #66 Still
      Still = Keycode.new(0x66, :consumer).freeze
      #80 Selection
      Selection = Keycode.new(0x80, :consumer).freeze
      #81 Assign Selection
      AssignSelection = Keycode.new(0x81, :consumer).freeze
      #82 Mode Step
      ModeStep = Keycode.new(0x82, :consumer).freeze
      #83 Recall Last
      RecallLast = Keycode.new(0x83, :consumer).freeze
      #84 Enter Channel
      EnterChannel = Keycode.new(0x84, :consumer).freeze
      #85 Order Movie
      OrderMovie = Keycode.new(0x85, :consumer).freeze
      #86 Channel
      Channel = Keycode.new(0x86, :consumer).freeze
      #87 Media Selection
      MediaSelection = Keycode.new(0x87, :consumer).freeze
      #88 Media Select Computer
      MediaSelectComputer = Keycode.new(0x88, :consumer).freeze
      #89 Media Select TV
      MediaSelectTV = Keycode.new(0x89, :consumer).freeze
      #8A Media Select WWW
      MediaSelectWWW = Keycode.new(0x8A, :consumer).freeze
      #8B Media Select DVD
      MediaSelectDVD = Keycode.new(0x8B, :consumer).freeze
      #8C Media Select Telephone
      MediaSelectTelephone = Keycode.new(0x8C, :consumer).freeze
      #8D Media Select Program Guide
      MediaSelectProgramGuide = Keycode.new(0x8D, :consumer).freeze
      #8E Media Select Video Phone
      MediaSelectVideoPhone = Keycode.new(0x8E, :consumer).freeze
      #8F Media Select Games
      MediaSelectGames = Keycode.new(0x8F, :consumer).freeze
      #90 Media Select Messages
      MediaSelectMessages = Keycode.new(0x90, :consumer).freeze
      #91 Media Select CD
      MediaSelectCD = Keycode.new(0x91, :consumer).freeze
      #92 Media Select VCR
      MediaSelectVCR = Keycode.new(0x92, :consumer).freeze
      #93 Media Select Tuner
      MediaSelectTuner = Keycode.new(0x93, :consumer).freeze
      #94 Quit
      Quit = Keycode.new(0x94, :consumer).freeze
      #95 Help
      Help = Keycode.new(0x95, :consumer).freeze
      #96 Media Select Tape
      MediaSelectTape = Keycode.new(0x96, :consumer).freeze
      #97 Media Select Cable
      MediaSelectCable = Keycode.new(0x97, :consumer).freeze
      #98 Media Select Satellite
      MediaSelectSatellite = Keycode.new(0x98, :consumer).freeze
      #99 Media Select Security
      MediaSelectSecurity = Keycode.new(0x99, :consumer).freeze
      #9A Media Select Home
      MediaSelectHome = Keycode.new(0x9A, :consumer).freeze
      #9B Media Select Call
      MediaSelectCall = Keycode.new(0x9B, :consumer).freeze
      #9C Channel Increment
      ChannelIncrement = Keycode.new(0x9C, :consumer).freeze
      #9D Channel Decrement
      ChannelDecrement = Keycode.new(0x9D, :consumer).freeze
      #9E Media Select SAP
      MediaSelectSAP = Keycode.new(0x9E, :consumer).freeze
      #A0 VCR Plus
      VCRPlus = Keycode.new(0xA0, :consumer).freeze
      #A1 Once
      Once = Keycode.new(0xA1, :consumer).freeze
      #A2 Daily
      Daily = Keycode.new(0xA2, :consumer).freeze
      #A3 Weekly
      Weekly = Keycode.new(0xA3, :consumer).freeze
      #A4 Monthly
      Monthly = Keycode.new(0xA4, :consumer).freeze
      #B0 Play
      Play = Keycode.new(0xB0, :consumer).freeze
      #B1 Pause
      Pause = Keycode.new(0xB1, :consumer).freeze
      #B2 Record
      Record = Keycode.new(0xB2, :consumer).freeze
      #B3 Fast Forward
      FastForward = Keycode.new(0xB3, :consumer).freeze
      #B4 Rewind
      Rewind = Keycode.new(0xB4, :consumer).freeze
      #B5 Scan Next Track
      ScanNextTrack = Keycode.new(0xB5, :consumer).freeze
      #B6 Scan Previous Track
      ScanPreviousTrack = Keycode.new(0xB6, :consumer).freeze
      #B7 Stop
      Stop = Keycode.new(0xB7, :consumer).freeze
      #B8 Eject
      Eject = Keycode.new(0xB8, :consumer).freeze
      #B9 Random Play
      RandomPlay = Keycode.new(0xB9, :consumer).freeze
      #BA Select Disc
      SelectDisc = Keycode.new(0xBA, :consumer).freeze
      #BB Enter Disc
      EnterDisc = Keycode.new(0xBB, :consumer).freeze
      #BC Repeat
      Repeat = Keycode.new(0xBC, :consumer).freeze
      #BD Tracking
      Tracking = Keycode.new(0xBD, :consumer).freeze
      #BE Track Normal
      TrackNormal = Keycode.new(0xBE, :consumer).freeze
      #BF Slow Tracking
      SlowTracking = Keycode.new(0xBF, :consumer).freeze
      #C0 Frame Forward
      FrameForward = Keycode.new(0xC0, :consumer).freeze
      #C1 Frame Back
      FrameBack = Keycode.new(0xC1, :consumer).freeze
      #C2 Mark
      Mark = Keycode.new(0xC2, :consumer).freeze
      #C3 Clear Mark
      ClearMark = Keycode.new(0xC3, :consumer).freeze
      #C4 Repeat From Mark
      RepeatFromMark = Keycode.new(0xC4, :consumer).freeze
      #C5 Return To Mark
      ReturnToMark = Keycode.new(0xC5, :consumer).freeze
      #C6 Search Mark Forward
      SearchMarkForward = Keycode.new(0xC6, :consumer).freeze
      #C7 Search Mark Backwards
      SearchMarkBackwards = Keycode.new(0xC7, :consumer).freeze
      #C8 Counter Reset
      CounterReset = Keycode.new(0xC8, :consumer).freeze
      #C9 Show Counter
      ShowCounter = Keycode.new(0xC9, :consumer).freeze
      #CA Tracking Increment
      TrackingIncrement = Keycode.new(0xCA, :consumer).freeze
      #CB Tracking Decrement
      TrackingDecrement = Keycode.new(0xCB, :consumer).freeze
      #CC Stop/Eject
      Stop_Eject = Keycode.new(0xCC, :consumer).freeze
      #CD Play/Pause
      Play_Pause = Keycode.new(0xCD, :consumer).freeze
      #CE Play/Skip
      Play_Skip = Keycode.new(0xCE, :consumer).freeze
      #E0 Volume
      Volume = Keycode.new(0xE0, :consumer).freeze
      #E1 Balance
      Balance = Keycode.new(0xE1, :consumer).freeze
      #E2 Mute
      Mute = Keycode.new(0xE2, :consumer).freeze
      #E3 Bass
      Bass = Keycode.new(0xE3, :consumer).freeze
      #E4 Treble
      Treble = Keycode.new(0xE4, :consumer).freeze
      #E5 Bass Boost
      BassBoost = Keycode.new(0xE5, :consumer).freeze
      #E6 Surround Mode
      SurroundMode = Keycode.new(0xE6, :consumer).freeze
      #E7 Loudness
      Loudness = Keycode.new(0xE7, :consumer).freeze
      #E8 MPX
      MPX = Keycode.new(0xE8, :consumer).freeze
      #E9 Volume Increment
      VolumeIncrement = Keycode.new(0xE9, :consumer).freeze
      #EA Volume Decrement
      VolumeDecrement = Keycode.new(0xEA, :consumer).freeze
      #F0 Speed Select
      SpeedSelect = Keycode.new(0xF0, :consumer).freeze
      #F1 Playback Speed
      PlaybackSpeed = Keycode.new(0xF1, :consumer).freeze
      #F2 Standard Play
      StandardPlay = Keycode.new(0xF2, :consumer).freeze
      #F3 Long Play
      LongPlay = Keycode.new(0xF3, :consumer).freeze
      #F4 Extended Play
      ExtendedPlay = Keycode.new(0xF4, :consumer).freeze
      #F5 Slow
      Slow = Keycode.new(0xF5, :consumer).freeze
      #100 Fan Enable
      FanEnable = Keycode.new(0x100, :consumer).freeze
      #101 Fan Speed
      FanSpeed = Keycode.new(0x101, :consumer).freeze
      #102 Light Enable
      LightEnable = Keycode.new(0x102, :consumer).freeze
      #103 Light Illumination Level
      LightIlluminationLevel = Keycode.new(0x103, :consumer).freeze
      #104 Climate Control Enable
      ClimateControlEnable = Keycode.new(0x104, :consumer).freeze
      #105 Room Temperature
      RoomTemperature = Keycode.new(0x105, :consumer).freeze
      #106 Security Enable
      SecurityEnable = Keycode.new(0x106, :consumer).freeze
      #107 Fire Alarm
      FireAlarm = Keycode.new(0x107, :consumer).freeze
      #108 Police Alarm
      PoliceAlarm = Keycode.new(0x108, :consumer).freeze
      #109 Proximity
      Proximity = Keycode.new(0x109, :consumer).freeze
      #10A Motion
      Motion = Keycode.new(0x10A, :consumer).freeze
      #10B Duress Alarm
      DuressAlarm = Keycode.new(0x10B, :consumer).freeze
      #10C Holdup Alarm
      HoldupAlarm = Keycode.new(0x10C, :consumer).freeze
      #10D Medical Alarm
      MedicalAlarm = Keycode.new(0x10D, :consumer).freeze
      #150 Balance Right
      BalanceRight = Keycode.new(0x150, :consumer).freeze
      #151 Balance Left
      BalanceLeft = Keycode.new(0x151, :consumer).freeze
      #152 Bass Increment
      BassIncrement = Keycode.new(0x152, :consumer).freeze
      #153 Bass Decrement
      BassDecrement = Keycode.new(0x153, :consumer).freeze
      #154 Treble Increment
      TrebleIncrement = Keycode.new(0x154, :consumer).freeze
      #155 Treble Decrement
      TrebleDecrement = Keycode.new(0x155, :consumer).freeze
      #160 Speaker System
      SpeakerSystem = Keycode.new(0x160, :consumer).freeze
      #161 Channel Left
      ChannelLeft = Keycode.new(0x161, :consumer).freeze
      #162 Channel Right
      ChannelRight = Keycode.new(0x162, :consumer).freeze
      #163 Channel Center
      ChannelCenter = Keycode.new(0x163, :consumer).freeze
      #164 Channel Front
      ChannelFront = Keycode.new(0x164, :consumer).freeze
      #165 Channel Center Front
      ChannelCenterFront = Keycode.new(0x165, :consumer).freeze
      #166 Channel Side
      ChannelSide = Keycode.new(0x166, :consumer).freeze
      #167 Channel Surround
      ChannelSurround = Keycode.new(0x167, :consumer).freeze
      #168 Channel Low Frequency Enhancement
      ChannelLowFrequencyEnhancement = Keycode.new(0x168, :consumer).freeze
      #169 Channel Top
      ChannelTop = Keycode.new(0x169, :consumer).freeze
      #16A Channel Unknown
      ChannelUnknown = Keycode.new(0x16A, :consumer).freeze
      #170 Sub-channel
      Subchannel = Keycode.new(0x170, :consumer).freeze
      #171 Sub-channel Increment
      SubchannelIncrement = Keycode.new(0x171, :consumer).freeze
      #172 Sub-channel Decrement
      SubchannelDecrement = Keycode.new(0x172, :consumer).freeze
      #173 Alternate Audio Increment
      AlternateAudioIncrement = Keycode.new(0x173, :consumer).freeze
      #174 Alternate Audio Decrement
      AlternateAudioDecrement = Keycode.new(0x174, :consumer).freeze
      #180 Application Launch Buttons
      ApplicationLaunchButtons = Keycode.new(0x180, :consumer).freeze
      #181 AL Launch Button Configuration Tool
      ALLaunchButtonConfigurationTool = Keycode.new(0x181, :consumer).freeze
      #182 AL Programmable Button Configuration
      ALProgrammableButtonConfiguration = Keycode.new(0x182, :consumer).freeze
      #183 AL Consumer Control Configuration
      ALConsumerControlConfiguration = Keycode.new(0x183, :consumer).freeze
      #184 AL Word Processor
      ALWordProcessor = Keycode.new(0x184, :consumer).freeze
      #185 AL Text Editor
      ALTextEditor = Keycode.new(0x185, :consumer).freeze
      #186 AL Spreadsheet
      ALSpreadsheet = Keycode.new(0x186, :consumer).freeze
      #187 AL Graphics Editor
      ALGraphicsEditor = Keycode.new(0x187, :consumer).freeze
      #188 AL Presentation App
      ALPresentationApp = Keycode.new(0x188, :consumer).freeze
      #189 AL Database App
      ALDatabaseApp = Keycode.new(0x189, :consumer).freeze
      #18A AL Email Reader
      ALEmailReader = Keycode.new(0x18A, :consumer).freeze
      #18B AL Newsreader
      ALNewsreader = Keycode.new(0x18B, :consumer).freeze
      #18C AL Voicemail
      ALVoicemail = Keycode.new(0x18C, :consumer).freeze
      #18D AL Contacts/Address Book
      ALContacts_AddressBook = Keycode.new(0x18D, :consumer).freeze
      #18E AL Calendar/Schedule
      ALCalendar_Schedule = Keycode.new(0x18E, :consumer).freeze
      #18F AL Task/Project Manager
      ALTask_ProjectManager = Keycode.new(0x18F, :consumer).freeze
      #190 AL Log/Journal/Timecard
      ALLog_Journal_Timecard = Keycode.new(0x190, :consumer).freeze
      #191 AL Checkbook/Finance
      ALCheckbook_Finance = Keycode.new(0x191, :consumer).freeze
      #192 AL Calculator
      ALCalculator = Keycode.new(0x192, :consumer).freeze
      #193 AL A/V Capture/Playback
      ALA_VCapture_Playback = Keycode.new(0x193, :consumer).freeze
      #194 AL Local Machine Browser
      ALLocalMachineBrowser = Keycode.new(0x194, :consumer).freeze
      #195 AL LAN/WAN Browser
      ALLAN_WANBrowser = Keycode.new(0x195, :consumer).freeze
      #196 AL Internet Browser
      ALInternetBrowser = Keycode.new(0x196, :consumer).freeze
      #197 AL Remote Networking/ISP Connect
      ALRemoteNetworking_ISPConnect = Keycode.new(0x197, :consumer).freeze
      #198 AL Network Conference
      ALNetworkConference = Keycode.new(0x198, :consumer).freeze
      #199 AL Network Chat
      ALNetworkChat = Keycode.new(0x199, :consumer).freeze
      #19A AL Telephony/Dialer
      ALTelephony_Dialer = Keycode.new(0x19A, :consumer).freeze
      #19B AL Logon
      ALLogon = Keycode.new(0x19B, :consumer).freeze
      #19C AL Logoff
      ALLogoff = Keycode.new(0x19C, :consumer).freeze
      #19D AL Logon/Logoff
      ALLogon_Logoff = Keycode.new(0x19D, :consumer).freeze
      #19E AL Terminal Lock/Screensaver
      ALTerminalLock_Screensaver = Keycode.new(0x19E, :consumer).freeze
      #19F AL Control Panel
      ALControlPanel = Keycode.new(0x19F, :consumer).freeze
      #1A0 AL Command Line Processor/Run
      ALCommandLineProcessor_Run = Keycode.new(0x1A0, :consumer).freeze
      #1A1 AL Process/Task Manager
      ALProcess_TaskManager = Keycode.new(0x1A1, :consumer).freeze
      #1A2 AL Select Task/Application
      ALSelectTask_Application = Keycode.new(0x1A2, :consumer).freeze
      #1A3 AL Next Task/Application
      ALNextTask_Application = Keycode.new(0x1A3, :consumer).freeze
      #1A4 AL Previous Task/Application
      ALPreviousTask_Application = Keycode.new(0x1A4, :consumer).freeze
      #1A5 AL Preemptive Halt Task/Application
      ALPreemptiveHaltTask_Application = Keycode.new(0x1A5, :consumer).freeze
      #1A6 AL Integrated Help Center
      ALIntegratedHelpCenter = Keycode.new(0x1A6, :consumer).freeze
      #1A7 AL Documents
      ALDocuments = Keycode.new(0x1A7, :consumer).freeze
      #1A8 AL Thesaurus
      ALThesaurus = Keycode.new(0x1A8, :consumer).freeze
      #1A9 AL Dictionary
      ALDictionary = Keycode.new(0x1A9, :consumer).freeze
      #1AA AL Desktop
      ALDesktop = Keycode.new(0x1AA, :consumer).freeze
      #1AB AL Spell Check
      ALSpellCheck = Keycode.new(0x1AB, :consumer).freeze
      #1AC AL Grammar Check
      ALGrammarCheck = Keycode.new(0x1AC, :consumer).freeze
      #1AD AL Wireless Status
      ALWirelessStatus = Keycode.new(0x1AD, :consumer).freeze
      #1AE AL Keyboard Layout
      ALKeyboardLayout = Keycode.new(0x1AE, :consumer).freeze
      #1AF AL Virus Protection
      ALVirusProtection = Keycode.new(0x1AF, :consumer).freeze
      #1B0 AL Encryption
      ALEncryption = Keycode.new(0x1B0, :consumer).freeze
      #1B1 AL Screen Saver
      ALScreenSaver = Keycode.new(0x1B1, :consumer).freeze
      #1B2 AL Alarms
      ALAlarms = Keycode.new(0x1B2, :consumer).freeze
      #1B3 AL Clock
      ALClock = Keycode.new(0x1B3, :consumer).freeze
      #1B4 AL File Browser
      ALFileBrowser = Keycode.new(0x1B4, :consumer).freeze
      #1B5 AL Power Status
      ALPowerStatus = Keycode.new(0x1B5, :consumer).freeze
      #1B6 AL Image Browser
      ALImageBrowser = Keycode.new(0x1B6, :consumer).freeze
      #1B7 AL Audio Browser
      ALAudioBrowser = Keycode.new(0x1B7, :consumer).freeze
      #1B8 AL Movie Browser
      ALMovieBrowser = Keycode.new(0x1B8, :consumer).freeze
      #1B9 AL Digital Rights Manager
      ALDigitalRightsManager = Keycode.new(0x1B9, :consumer).freeze
      #1BA AL Digital Wallet
      ALDigitalWallet = Keycode.new(0x1BA, :consumer).freeze
      #1BC AL Instant Messaging
      ALInstantMessaging = Keycode.new(0x1BC, :consumer).freeze
      #1BD AL OEM Features/ Tips/Tutorial Browser
      ALOEMFeatures_Tips_TutorialBrowser = Keycode.new(0x1BD, :consumer).freeze
      #1BE AL OEM Help
      ALOEMHelp = Keycode.new(0x1BE, :consumer).freeze
      #1BF AL Online Community
      ALOnlineCommunity = Keycode.new(0x1BF, :consumer).freeze
      #1C0 AL Entertainment Content Browser
      ALEntertainmentContentBrowser = Keycode.new(0x1C0, :consumer).freeze
      #1C1 AL Online Shopping Browser
      ALOnlineShoppingBrowser = Keycode.new(0x1C1, :consumer).freeze
      #1C2 AL SmartCard Information/Help
      ALSmartCardInformation_Help = Keycode.new(0x1C2, :consumer).freeze
      #1C3 AL Market Monitor/Finance Browser
      ALMarketMonitor_FinanceBrowser = Keycode.new(0x1C3, :consumer).freeze
      #1C4 AL Customized Corporate News Browser
      ALCustomizedCorporateNewsBrowser = Keycode.new(0x1C4, :consumer).freeze
      #1C5 AL Online Activity Browser
      ALOnlineActivityBrowser = Keycode.new(0x1C5, :consumer).freeze
      #1C6 AL Research/Search Browser
      ALResearch_SearchBrowser = Keycode.new(0x1C6, :consumer).freeze
      #1C7 AL Audio Player
      ALAudioPlayer = Keycode.new(0x1C7, :consumer).freeze
      #200 Generic GUI Application Controls
      GenericGUIApplicationControls = Keycode.new(0x200, :consumer).freeze
      #201 AC New
      ACNew = Keycode.new(0x201, :consumer).freeze
      #202 AC Open
      ACOpen = Keycode.new(0x202, :consumer).freeze
      #203 AC Close
      ACClose = Keycode.new(0x203, :consumer).freeze
      #204 AC Exit
      ACExit = Keycode.new(0x204, :consumer).freeze
      #205 AC Maximize
      ACMaximize = Keycode.new(0x205, :consumer).freeze
      #206 AC Minimize
      ACMinimize = Keycode.new(0x206, :consumer).freeze
      #207 AC Save
      ACSave = Keycode.new(0x207, :consumer).freeze
      #208 AC Print
      ACPrint = Keycode.new(0x208, :consumer).freeze
      #209 AC Properties
      ACProperties = Keycode.new(0x209, :consumer).freeze
      #21A AC Undo
      ACUndo = Keycode.new(0x21A, :consumer).freeze
      #21B AC Copy
      ACCopy = Keycode.new(0x21B, :consumer).freeze
      #21C AC Cut
      ACCut = Keycode.new(0x21C, :consumer).freeze
      #21D AC Paste
      ACPaste = Keycode.new(0x21D, :consumer).freeze
      #21E AC Select All
      ACSelectAll = Keycode.new(0x21E, :consumer).freeze
      #21F AC Find
      ACFind = Keycode.new(0x21F, :consumer).freeze
      #220 AC Find and Replace
      ACFindandReplace = Keycode.new(0x220, :consumer).freeze
      #221 AC Search
      ACSearch = Keycode.new(0x221, :consumer).freeze
      #222 AC Go To
      ACGoTo = Keycode.new(0x222, :consumer).freeze
      #223 AC Home
      ACHome = Keycode.new(0x223, :consumer).freeze
      #224 AC Back
      ACBack = Keycode.new(0x224, :consumer).freeze
      #225 AC Forward
      ACForward = Keycode.new(0x225, :consumer).freeze
      #226 AC Stop
      ACStop = Keycode.new(0x226, :consumer).freeze
      #227 AC Refresh
      ACRefresh = Keycode.new(0x227, :consumer).freeze
      #228 AC Previous Link
      ACPreviousLink = Keycode.new(0x228, :consumer).freeze
      #229 AC Next Link
      ACNextLink = Keycode.new(0x229, :consumer).freeze
      #22A AC Bookmarks
      ACBookmarks = Keycode.new(0x22A, :consumer).freeze
      #22B AC History
      ACHistory = Keycode.new(0x22B, :consumer).freeze
      #22C AC Subscriptions
      ACSubscriptions = Keycode.new(0x22C, :consumer).freeze
      #22D AC Zoom In
      ACZoomIn = Keycode.new(0x22D, :consumer).freeze
      #22E AC Zoom Out
      ACZoomOut = Keycode.new(0x22E, :consumer).freeze
      #22F AC Zoom
      ACZoom = Keycode.new(0x22F, :consumer).freeze
      #230 AC Full Screen View
      ACFullScreenView = Keycode.new(0x230, :consumer).freeze
      #231 AC Normal View
      ACNormalView = Keycode.new(0x231, :consumer).freeze
      #232 AC View Toggle
      ACViewToggle = Keycode.new(0x232, :consumer).freeze
      #233 AC Scroll Up
      ACScrollUp = Keycode.new(0x233, :consumer).freeze
      #234 AC Scroll Down
      ACScrollDown = Keycode.new(0x234, :consumer).freeze
      #235 AC Scroll
      ACScroll = Keycode.new(0x235, :consumer).freeze
      #236 AC Pan Left
      ACPanLeft = Keycode.new(0x236, :consumer).freeze
      #237 AC Pan Right
      ACPanRight = Keycode.new(0x237, :consumer).freeze
      #238 AC Pan
      ACPan = Keycode.new(0x238, :consumer).freeze
      #239 AC New Window
      ACNewWindow = Keycode.new(0x239, :consumer).freeze
      #23A AC Tile Horizontally
      ACTileHorizontally = Keycode.new(0x23A, :consumer).freeze
      #23B AC Tile Vertically
      ACTileVertically = Keycode.new(0x23B, :consumer).freeze
      #23C AC Format
      ACFormat = Keycode.new(0x23C, :consumer).freeze
      #23D AC Edit
      ACEdit = Keycode.new(0x23D, :consumer).freeze
      #23E AC Bold
      ACBold = Keycode.new(0x23E, :consumer).freeze
      #23F AC Italics
      ACItalics = Keycode.new(0x23F, :consumer).freeze
      #240 AC Underline
      ACUnderline = Keycode.new(0x240, :consumer).freeze
      #241 AC Strikethrough
      ACStrikethrough = Keycode.new(0x241, :consumer).freeze
      #242 AC Subscript
      ACSubscript = Keycode.new(0x242, :consumer).freeze
      #243 AC Superscript
      ACSuperscript = Keycode.new(0x243, :consumer).freeze
      #244 AC All Caps
      ACAllCaps = Keycode.new(0x244, :consumer).freeze
      #245 AC Rotate
      ACRotate = Keycode.new(0x245, :consumer).freeze
      #246 AC Resize
      ACResize = Keycode.new(0x246, :consumer).freeze
      #247 AC Flip horizontal
      ACFliphorizontal = Keycode.new(0x247, :consumer).freeze
      #248 AC Flip Vertical
      ACFlipVertical = Keycode.new(0x248, :consumer).freeze
      #249 AC Mirror Horizontal
      ACMirrorHorizontal = Keycode.new(0x249, :consumer).freeze
      #24A AC Mirror Vertical
      ACMirrorVertical = Keycode.new(0x24A, :consumer).freeze
      #24B AC Font Select
      ACFontSelect = Keycode.new(0x24B, :consumer).freeze
      #24C AC Font Color
      ACFontColor = Keycode.new(0x24C, :consumer).freeze
      #24D AC Font Size
      ACFontSize = Keycode.new(0x24D, :consumer).freeze
      #24E AC Justify Left
      ACJustifyLeft = Keycode.new(0x24E, :consumer).freeze
      #24F AC Justify Center H
      ACJustifyCenterH = Keycode.new(0x24F, :consumer).freeze
      #250 AC Justify Right
      ACJustifyRight = Keycode.new(0x250, :consumer).freeze
      #251 AC Justify Block H
      ACJustifyBlockH = Keycode.new(0x251, :consumer).freeze
      #252 AC Justify Top
      ACJustifyTop = Keycode.new(0x252, :consumer).freeze
      #253 AC Justify Center V
      ACJustifyCenterV = Keycode.new(0x253, :consumer).freeze
      #254 AC Justify Bottom
      ACJustifyBottom = Keycode.new(0x254, :consumer).freeze
      #255 AC Justify Block V
      ACJustifyBlockV = Keycode.new(0x255, :consumer).freeze
      #256 AC Indent Decrease
      ACIndentDecrease = Keycode.new(0x256, :consumer).freeze
      #257 AC Indent Increase
      ACIndentIncrease = Keycode.new(0x257, :consumer).freeze
      #258 AC Numbered List
      ACNumberedList = Keycode.new(0x258, :consumer).freeze
      #259 AC Restart Numbering
      ACRestartNumbering = Keycode.new(0x259, :consumer).freeze
      #25A AC Bulleted List
      ACBulletedList = Keycode.new(0x25A, :consumer).freeze
      #25B AC Promote
      ACPromote = Keycode.new(0x25B, :consumer).freeze
      #25C AC Demote
      ACDemote = Keycode.new(0x25C, :consumer).freeze
      #25D AC Yes
      ACYes = Keycode.new(0x25D, :consumer).freeze
      #25E AC No
      ACNo = Keycode.new(0x25E, :consumer).freeze
      #25F AC Cancel
      ACCancel = Keycode.new(0x25F, :consumer).freeze
      #260 AC Catalog
      ACCatalog = Keycode.new(0x260, :consumer).freeze
      #261 AC Buy/Checkout
      ACBuy_Checkout = Keycode.new(0x261, :consumer).freeze
      #262 AC Add to Cart
      ACAddtoCart = Keycode.new(0x262, :consumer).freeze
      #263 AC Expand
      ACExpand = Keycode.new(0x263, :consumer).freeze
      #264 AC Expand All
      ACExpandAll = Keycode.new(0x264, :consumer).freeze
      #265 AC Collapse
      ACCollapse = Keycode.new(0x265, :consumer).freeze
      #266 AC Collapse All
      ACCollapseAll = Keycode.new(0x266, :consumer).freeze
      #267 AC Print Preview
      ACPrintPreview = Keycode.new(0x267, :consumer).freeze
      #268 AC Paste Special
      ACPasteSpecial = Keycode.new(0x268, :consumer).freeze
      #269 AC Insert Mode
      ACInsertMode = Keycode.new(0x269, :consumer).freeze
      #26A AC Delete
      ACDelete = Keycode.new(0x26A, :consumer).freeze
      #26B AC Lock
      ACLock = Keycode.new(0x26B, :consumer).freeze
      #26C AC Unlock
      ACUnlock = Keycode.new(0x26C, :consumer).freeze
      #26D AC Protect
      ACProtect = Keycode.new(0x26D, :consumer).freeze
      #26E AC Unprotect
      ACUnprotect = Keycode.new(0x26E, :consumer).freeze
      #26F AC Attach Comment
      ACAttachComment = Keycode.new(0x26F, :consumer).freeze
      #270 AC Delete Comment
      ACDeleteComment = Keycode.new(0x270, :consumer).freeze
      #271 AC View Comment
      ACViewComment = Keycode.new(0x271, :consumer).freeze
      #272 AC Select Word
      ACSelectWord = Keycode.new(0x272, :consumer).freeze
      #273 AC Select Sentence
      ACSelectSentence = Keycode.new(0x273, :consumer).freeze
      #274 AC Select Paragraph
      ACSelectParagraph = Keycode.new(0x274, :consumer).freeze
      #275 AC Select Column
      ACSelectColumn = Keycode.new(0x275, :consumer).freeze
      #276 AC Select Row
      ACSelectRow = Keycode.new(0x276, :consumer).freeze
      #277 AC Select Table
      ACSelectTable = Keycode.new(0x277, :consumer).freeze
      #278 AC Select Object
      ACSelectObject = Keycode.new(0x278, :consumer).freeze
      #279 AC Redo/Repeat
      ACRedo_Repeat = Keycode.new(0x279, :consumer).freeze
      #27A AC Sort
      ACSort = Keycode.new(0x27A, :consumer).freeze
      #27B AC Sort Ascending
      ACSortAscending = Keycode.new(0x27B, :consumer).freeze
      #27C AC Sort Descending
      ACSortDescending = Keycode.new(0x27C, :consumer).freeze
      #27D AC Filter
      ACFilter = Keycode.new(0x27D, :consumer).freeze
      #27E AC Set Clock
      ACSetClock = Keycode.new(0x27E, :consumer).freeze
      #27F AC View Clock
      ACViewClock = Keycode.new(0x27F, :consumer).freeze
      #280 AC Select Time Zone
      ACSelectTimeZone = Keycode.new(0x280, :consumer).freeze
      #281 AC Edit Time Zones
      ACEditTimeZones = Keycode.new(0x281, :consumer).freeze
      #282 AC Set Alarm
      ACSetAlarm = Keycode.new(0x282, :consumer).freeze
      #283 AC Clear Alarm
      ACClearAlarm = Keycode.new(0x283, :consumer).freeze
      #284 AC Snooze Alarm
      ACSnoozeAlarm = Keycode.new(0x284, :consumer).freeze
      #285 AC Reset Alarm
      ACResetAlarm = Keycode.new(0x285, :consumer).freeze
      #286 AC Synchronize
      ACSynchronize = Keycode.new(0x286, :consumer).freeze
      #287 AC Send/Receive
      ACSend_Receive = Keycode.new(0x287, :consumer).freeze
      #288 AC Send To
      ACSendTo = Keycode.new(0x288, :consumer).freeze
      #289 AC Reply
      ACReply = Keycode.new(0x289, :consumer).freeze
      #28A AC Reply All
      ACReplyAll = Keycode.new(0x28A, :consumer).freeze
      #28B AC Forward Msg
      ACForwardMsg = Keycode.new(0x28B, :consumer).freeze
      #28C AC Send
      ACSend = Keycode.new(0x28C, :consumer).freeze
      #28D AC Attach File
      ACAttachFile = Keycode.new(0x28D, :consumer).freeze
      #28E AC Upload
      ACUpload = Keycode.new(0x28E, :consumer).freeze
      #28F AC Download (Save Target As)
      ACDownload = Keycode.new(0x28F, :consumer).freeze
      #290 AC Set Borders
      ACSetBorders = Keycode.new(0x290, :consumer).freeze
      #291 AC Insert Row
      ACInsertRow = Keycode.new(0x291, :consumer).freeze
      #292 AC Insert Column
      ACInsertColumn = Keycode.new(0x292, :consumer).freeze
      #293 AC Insert File
      ACInsertFile = Keycode.new(0x293, :consumer).freeze
      #294 AC Insert Picture
      ACInsertPicture = Keycode.new(0x294, :consumer).freeze
      #295 AC Insert Object
      ACInsertObject = Keycode.new(0x295, :consumer).freeze
      #296 AC Insert Symbol
      ACInsertSymbol = Keycode.new(0x296, :consumer).freeze
      #297 AC Save and Close
      ACSaveandClose = Keycode.new(0x297, :consumer).freeze
      #298 AC Rename
      ACRename = Keycode.new(0x298, :consumer).freeze
      #299 AC Merge
      ACMerge = Keycode.new(0x299, :consumer).freeze
      #29A AC Split
      ACSplit = Keycode.new(0x29A, :consumer).freeze
      #29B AC Disribute Horizontally
      ACDisributeHorizontally = Keycode.new(0x29B, :consumer).freeze
      #29C AC Distribute Vertically
      ACDistributeVertically = Keycode.new(0x29C, :consumer).freeze
    end
  end
end
