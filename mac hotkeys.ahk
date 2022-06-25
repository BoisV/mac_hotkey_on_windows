SetStoreCapslockMode, off
SetCapsLockState, AlwaysOff
SetTitleMatchMode 2
SendMode Input
!c::
	Send, ^{c}
Return

!v::
	Send, ^{v}
Return

!x::
	Send, ^{x}
Return

!a::
	Send, ^{a}
Return

!z::
	Send, ^{z}
Return

!s::
	Send, ^{s}
Return

!Left::
	Send, {Home}
Return

!Right::
	Send, {End}
Return

!d::
	Send, ^{d}
Return

!+Left::
	Send, +{Home}

!+Right::
	Send, +{End}

Alt::Return

Capslock::
	KeyWait, CapsLock
	If (A_TimeSinceThisHotkey > 300)
		SetTimer, mainp, -1
	Else
		If (GetKeyState("CapsLock", "T") == 1)
			SetTimer, mainp, -1
		Else
			Send ^{Space}
	; If GetKeyState("CapsLock", "T") = 0
	; 	If (A_TimeSinceThisHotkey > 300)
	; 		SetTimer, mainp, -1
	; 	Else
	; 		Send ^{Space}
	; Else
	; 	If (A_TimeSinceThisHotkey > 300)
	; 		SetTimer, mainp, -1
Return
mainp:
	Send, {CapsLock}
Return



