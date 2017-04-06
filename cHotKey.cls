VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "cHotKey"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
'*************************************************************************
'**ģ �� ����cHotKey
'**˵    ��������ȫ���ȼ�
'**�� �� �ˣ������ http://www.m5home.com/
'**��    �ڣ�2006��7��19��
'**��    ����V1.0
'*************************************************************************
Option Explicit
Public Enum vbKeyAll                    'ö��ֵ,�ɸ����Լ���ʵ���������
'    vbKeyLButton = 1 '������
'    vbKeyRButton = 2 '����Ҽ�
'    vbKeyCancel = 3 'CANCEL ��
'    vbKeyMButton = 4 '����м�
'    vbKeyBack = 8 'BACKSPACE ��
'    vbKeyTab = 9 'TAB ��
'    vbKeyClear = 12 'CLEAR ��
'    vbKeyReturn = 13 ' ENTER ��
'    vbKeyShift = 16 'SHIFT ��
'    vbKeyControl = 17 'CTRL ��
'    vbKeyMenu = 18 ' �˵���
'    vbKeyPause = 19 'PAUSE ��
'    vbKeyCapital = 20 'CAPS LOCK ��
'    vbKeyEscape = 27 'ESC ��
'    vbKeySpace = 32 'SPACEBAR ��
'    vbKeyPageUp = 33 'PAGEUP ��
'    vbKeyPageDown = 34 'PAGEDOWN ��
'    vbKeyEnd = 35 'END ��
'    vbKeyHome = 36 'HOME ��
'    vbKeyLeft = 37 'LEFT ARROW ��
'    vbKeyUp = 38 'UP ARROW ��
'    vbKeyRight = 39 'RIGHT ARROW ��
'    vbKeyDown = 40 'DOWN ARROW ��
'    vbKeySelect = 41 'SELECT ��
'    vbKeyPrint = 42 'PRINT SCREEN ��
'    vbKeyExecute = 43 'EXECUTE ��
'    vbKeySnapshot = 44 'SNAP SHOT ��
'    vbKeyInser = 45 'INS ��
'    vbKeyDelete = 46 'DEL ��
'    vbKeyHelp = 47 'HELP ��
'    vbKeyNumlock = 144 'NUM LOCK ��
   
    vbKeyA = 65 'A ��
    vbKeyB = 66 'B ��
    vbKeyC = 67 'C ��
    vbKeyD = 68 'D ��
    vbKeyE = 69 'E ��
    vbKeyF = 70 'F ��
    vbKeyG = 71 'G ��
    vbKeyH = 72 'H ��
    vbKeyI = 73 'I ��
    vbKeyJ = 74 'J ��
    vbKeyK = 75 'K ��
    vbKeyL = 76 'L ��
    vbKeyM = 77 'M ��
    vbKeyN = 78 'N ��
    vbKeyO = 79 'O ��
    vbKeyP = 80 'P ��
    vbKeyQ = 81 'Q ��
    vbKeyR = 82 'R ��
    vbKeyS = 83 'S ��
    vbKeyT = 84 'T ��
    vbKeyU = 85 'U ��
    vbKeyV = 86 'V ��
    vbKeyW = 87 'W ��
    vbKeyX = 88 'X ��
    vbKeyY = 89 'Y ��
    vbKeyZ = 90 'Z ��
   
'    vbKey0 = 48 '0 ��
'    vbKey1 = 49 '1 ��
'    vbKey2 = 50 '2 ��
'    vbKey3 = 51 '3 ��
'    vbKey4 = 52 '4 ��
'    vbKey5 = 53 '5 ��
'    vbKey6 = 54 '6 ��
'    vbKey7 = 55 '7 ��
'    vbKey8 = 56 '8 ��
'    vbKey9 = 57 '9 ��
'    vbKeyNumpad0 = 96 '0 ��
'    vbKeyNumpad1 = 97 '1 ��
'    vbKeyNumpad2 = 98 '2 ��
'    vbKeyNumpad3 = 99 '3 ��
'    vbKeyNumpad4 = 100 '4 ��
'    vbKeyNumpad5 = 101 '5 ��
'    vbKeyNumpad6 = 102 '6 ��
'    vbKeyNumpad7 = 103 '7 ��
'    vbKeyNumpad8 = 104 ' 8 ��
'    vbKeyNumpad9 = 105 '9 ��
'    vbKeyMultiply = 106 '�˺� (*) ��
'    vbKeyAdd = 107 '�Ӻ� (+) ��
'    vbKeySeparator = 108 'ENTER ����������С�����ϣ�
'    vbKeySubtract = 109 '���� (-) ��
'    vbKeyDecimal = 110 'С���� (.) ��
'    vbKeyDivide = 111 '���� (/) ��
   
    vbKeyF1 = 112 'F1 ��
    vbKeyF2 = 113 'F2 ��
    vbKeyF3 = 114 'F3 ��
    vbKeyF4 = 115 'F4 ��
    vbKeyF5 = 116 'F5 ��
    vbKeyF6 = 117 'F6 ��
    vbKeyF7 = 118 'F7 ��
    vbKeyF8 = 119 'F8 ��
    vbKeyF9 = 120 'F9 ��
    vbKeyF10 = 121 'F10 ��
    vbKeyF11 = 122 'F11 ��
    vbKeyF12 = 123 'F12 ��
    vbKeyF13 = 124 'F13 ��
    vbKeyF14 = 125 'F14 ��
    vbKeyF15 = 126 'F15 ��
    vbKeyF16 = 127 'F16 ��
End Enum
Private Const MOD_CONTROL = &H2
Private Const MOD_ALT = &H1
Private Const MOD_SHIFT = &H4
Private Const PM_REMOVE = &H1
Private Const WM_HOTKEY = &H312
   
Private Type POINTAPI
    x As Long
    y As Long
End Type
Private Type Msg
    hWnd As Long
    Message As Long
    wParam As Long
    lParam As Long
    time As Long
    pt As POINTAPI
End Type
Private Declare Function RegisterHotKey Lib "user32" (ByVal hWnd As Long, ByVal id As Long, ByVal fsModifiers As Long, ByVal vk As Long) As Long
Private Declare Function UnregisterHotKey Lib "user32" (ByVal hWnd As Long, ByVal id As Long) As Long
Private Declare Function PeekMessage Lib "user32" Alias "PeekMessageA" (lpMsg As Msg, ByVal hWnd As Long, ByVal wMsgFilterMin As Long, ByVal wMsgFilterMax As Long, ByVal wRemoveMsg As Long) As Long
Private Declare Function WaitMessage Lib "user32" () As Long
Private Declare Function GlobalAddAtom Lib "kernel32" Alias "GlobalAddAtomA" (ByVal lpString As String) As Integer
Private Declare Function GlobalDeleteAtom Lib "kernel32" (ByVal nAtom As Integer) As Integer
Public Event HotKeyPress(ByVal HotKey As Long, ByVal hCtrl As Boolean, ByVal hAlt As Boolean, ByVal hShift As Boolean)
Dim HotKeys() As Long           '�ȼ�ֵ
Dim hCtrls() As Boolean         'Ctrl��״̬
Dim hAlts() As Boolean          'Alt��״̬
Dim hShifts() As Boolean        'Shift��״̬
Dim KeyAtom() As Integer        'ԭ��ֵ
Dim WithEvents CtlTimer As Timer        '����������ѭ���Ķ�ʱ��
Attribute CtlTimer.VB_VarHelpID = -1
Dim bCancel As Boolean
Dim mfrmHwnd As Long           '��������
Public Sub StartHotKeys(ByRef theTimer As Timer)
    '������Ϣ��ѭ��,��ʼ��׽�ȼ�
    'theTimer:һ����ʱ��
   
    bCancel = False
    Set CtlTimer = theTimer
    With CtlTimer
        .Enabled = False
        .Interval = 10
        .Tag = ""
        .Enabled = True
    End With
End Sub
Public Sub StopHotKeys()
    'ֹͣ��Ϣѭ��,ֹͣ��׽�ȼ�
   
    bCancel = True
    DoEvents
End Sub
Private Sub GetMessage()
    '��Ϣѭ��,��һ����ѭ��,��Ҫ�ɶ�ʱ������,�Ա���ù��̿�����������
    '�ڴ�ѭ�����жϷ��͵�Ŀ�������ȼ���Ϣ,�����¼�����
   
    Dim Message As Msg
    Dim I As Long
   
    Do While Not bCancel
        WaitMessage
        If PeekMessage(Message, mfrmHwnd, WM_HOTKEY, WM_HOTKEY, PM_REMOVE) Then
            Debug.Print "HotKeyMessage: " & Message.Message
            For I = 1 To UBound(KeyAtom)            '���ȼ���Ϣ��ʱ,�ж�һ�����ĸ��ȼ�,��������ֵ
                If KeyAtom(I) = Message.wParam Then     'wParam�����ԭ��ֵ
                    RaiseEvent HotKeyPress(HotKeys(I), hCtrls(I), hAlts(I), hShifts(I))
                    Exit For
                End If
            Next I
        End If
        DoEvents
    Loop
End Sub
Public Function AddHotKey(ByVal HotKey As vbKeyAll, Optional ByVal hCtrl As Boolean = False, Optional ByVal hAlt As Boolean = False, Optional ByVal hShift As Boolean = False) As Boolean
    '�����ȼ�
    '�������ֵ����,��ɹ�
    Dim I As Long
    Dim J As Long
    Dim K As Long
   
    AddHotKey = False
    I = InHotValue(HotKey)
   
    If I <> -1 Then      '��������Ѿ�����,���ж�һ�¿��Ƽ�
        If hCtrls(I) = hCtrl And hShifts(I) = hShift Then       '������Ƽ�Ҳ��ͬ,�Ǿ��Ѿ��������,�˳�
            Exit Function
        End If
    End If
   
    ReDim Preserve HotKeys(UBound(HotKeys) + 1)
    ReDim Preserve KeyAtom(UBound(KeyAtom) + 1)
    ReDim Preserve hCtrls(UBound(hCtrls) + 1)
    ReDim Preserve hAlts(UBound(hAlts) + 1)
    ReDim Preserve hShifts(UBound(hShifts) + 1)
   
    HotKeys(UBound(HotKeys)) = HotKey
    KeyAtom(UBound(KeyAtom)) = GlobalAddAtom(GetTmpStr(16))
    hCtrls(UBound(hCtrls)) = hCtrl
    hAlts(UBound(hAlts)) = hAlt
    hShifts(UBound(hShifts)) = hShift
   
    J = IIf(hCtrl = True, MOD_CONTROL, 0)       '��Ͽ��Ƽ�
    K = J
    J = IIf(hAlt = True, MOD_ALT, 0)
    K = IIf(J = 0, K, K Or J)
    J = IIf(hShift = True, MOD_SHIFT, 0)
    K = IIf(J = 0, K, K Or J)
   
    I = RegisterHotKey(mfrmHwnd, KeyAtom(UBound(KeyAtom)), K, HotKey)
    AddHotKey = I
   
    Debug.Print "HotKeyRegister:  " & I
   
    If I = 0 Then           'ע��ʧ��,��ɾ������ȼ�
        Call DelHotKey(HotKey, hCtrl, hAlt, hShift)
    End If
End Function
Public Function DelHotKey(ByVal HotKey As Long, Optional ByVal hCtrl As Boolean = False, Optional ByVal hAlt As Boolean = False, Optional ByVal hShift As Boolean = False) As Boolean
    'ɾ���ȼ�
    Dim I As Long
    Dim DelIndex As Long
   
    Dim tmpHotKeys() As Long                '����������
    Dim tmpKeyAtom() As Integer             '����������
    Dim tmphCtrls() As Boolean              '����������
    Dim tmphAlts() As Boolean                '����������
    Dim tmphShifts() As Boolean              '����������
   
    On Error Resume Next
   
    DelHotKey = False
    DelIndex = InHotValue(HotKey, hCtrl, hAlt, hShift)        'ȡ������
   
    If DelIndex = -1 Then Exit Function             '�ж��ȼ�
    If hCtrl <> hCtrls(DelIndex) Then Exit Function
    If hAlt <> hAlts(DelIndex) Then Exit Function
    If hShift <> hShifts(DelIndex) Then Exit Function
   
    UnregisterHotKey mfrmHwnd, KeyAtom(DelIndex)             '��ɾ���ȼ�
    GlobalDeleteAtom KeyAtom(DelIndex)                      '��ɾ��ԭ��
   
    ReDim tmpHotKeys(I)           '��ʼ����ʱ����
    ReDim tmpKeyAtom(I)
    ReDim tmphCtrls(I)
    ReDim tmphAlts(I)
    ReDim tmphShifts(I)
   
    For I = 1 To UBound(HotKeys)            '�����ݵ�����ʱ������
        If I <> DelIndex Then
            ReDim tmpHotKeys(UBound(tmpHotKeys) + 1)
            ReDim tmpKeyAtom(UBound(tmpKeyAtom) + 1)
            ReDim tmphCtrls(UBound(tmphCtrls) + 1)
            ReDim tmphAlts(UBound(tmphAlts) + 1)
            ReDim tmphShifts(UBound(tmphShifts) + 1)
           
            tmpHotKeys(UBound(tmpHotKeys)) = HotKeys(I)
            tmpKeyAtom(UBound(tmpKeyAtom)) = KeyAtom(I)
            tmphCtrls(UBound(tmphCtrls)) = hCtrls(I)
            tmphAlts(UBound(tmphAlts)) = hAlts(I)
            tmphShifts(UBound(tmphShifts)) = hShifts(I)
        End If
    Next I
   
    I = UBound(tmpHotKeys)
   
    ReDim HotKeys(I)           '�ض��������С,ԭ���ݲ�����
    ReDim KeyAtom(I)
    ReDim hCtrls(I)
    ReDim hAlts(I)
    ReDim hShifts(I)
    HotKeys = tmpHotKeys         '�ٰѵ���������ݵ���ԭ����
    KeyAtom = tmpKeyAtom
    hCtrls = tmphCtrls
    hAlts = tmphAlts
    hShifts = tmphShifts
   
    DelHotKey = True
End Function
Public Function ClsAllHotKey() As Boolean
    'ɾ�������ȼ�.
    Dim I As Long
   
    On Error Resume Next
   
    bCancel = True
    DoEvents
   
    For I = 1 To UBound(HotKeys)
        Call DelHotKey(HotKeys(I), hCtrls(I), hAlts(I), hShifts(I))
    Next I
End Function
Private Sub Class_Initialize()
    '���ʼ��
    Call CleanData
    bCancel = True
End Sub
Private Sub Class_Terminate()
    '������
    bCancel = True
    DoEvents
    Call ClsAllHotKey
    Call CleanData
End Sub
Private Sub CleanData()
    '�������
    ReDim HotKeys(0)
    ReDim KeyAtom(0)
    ReDim hCtrls(0)
    ReDim hAlts(0)
    ReDim hShifts(0)
End Sub
Private Function InHotValue(ByVal HotValue As Long, Optional ByVal hCtrl As Boolean = False, Optional ByVal hAlt As Boolean = False, Optional ByVal hShift As Boolean = False) As Long
    '�ж��ȼ�ֵ�Ƿ����
    '����ֵ:-1��ʾû�ж����,���򷵻�����ֵ
    Dim I As Long
   
    InHotValue = -1
   
    For I = 1 To UBound(HotKeys)
        If HotKeys(I) = HotValue Then       '���жϰ���
            If hCtrl = hCtrls(I) And _
               hAlt = hAlts(I) And _
               hShift = hShifts(I) Then         '���жϹ��ܼ�
                InHotValue = I
                Exit For
            End If
        End If
    Next I
End Function
Private Function GetTmpStr(ByVal NumValue As Long) As String
    '����ָ�����ȵ�����ַ���
    Dim I As Long
    Dim tmpStr As Long
   
    For I = 1 To NumValue
        Randomize
        tmpStr = Int(Rnd(1) * 70) + 60
        Select Case tmpStr
            Case 65 To 90, 97 To 122, 48 To 57
                If GetTmpStr = "" Then
                    GetTmpStr = Chr(tmpStr)
                Else
                    GetTmpStr = GetTmpStr & Chr(tmpStr)
                End If
        End Select
    Next I
End Function
Private Sub CtlTimer_Timer()
    '����������ѭ�����¼�.������������,����ռ��������Ĺ���
    CtlTimer.Enabled = False
    If CtlTimer.Tag = "1" Then Exit Sub
    CtlTimer.Tag = "1"
    Call GetMessage
End Sub
Public Property Get frmHwnd() As Long
    frmHwnd = mfrmHwnd
End Property
Public Property Let frmHwnd(ByVal vNewValue As Long)
    mfrmHwnd = vNewValue
End Property
