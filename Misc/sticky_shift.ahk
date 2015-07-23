
; Sticky Shift with 2-second timeout

RShift::
    GetKeyState, cp, CapsLock, T
	if cp = D 
	{
	  SetCapsLockState, AlwaysOff
	  return
	}
	  
	Send {RShift down}
	shiftWait := 1
	Input key, V M L1 T2, {F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{PrintScreen}{Pause}{AppsKey}{Alt}
	Send {RShift up}
	shiftWait := 0
Return

RShift Up::
  if shiftWait = 0
    Send {RShift up}
Return

LShift::
    GetKeyState, cp, CapsLock, T
	if cp = D
	{
	  SetCapsLockState, AlwaysOff
	  return
	}
	  
	Send {LShift down}
	shiftWait := 1
	Input key, V M L1 T2, {F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{PrintScreen}{Pause}{AppsKey}{Alt}
	Send {LShift up}
	shiftWait := 0
Return

LShift Up::
  if shiftWait = 0
    Send {LShift up}
Return
