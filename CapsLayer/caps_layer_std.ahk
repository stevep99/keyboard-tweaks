
; AutoHotKey script for redefining the Caps Lock key as dual-role modifier
; Hold Caps Lock and press other keys to provide an additional layer for navigation and other fuctionality
; Single press Caps Lock enables a sticky shift - next letter will be capitalized only

#Persistent
SetCapsLockState, AlwaysOff
global navLayer

*CapsLock::
  GetKeyState, sh, Shift
  GetKeyState, la, LAlt
  GetKeyState, ra, RAlt
  GetKeyState, ct, Control
  if sh = D
  {
    navLayer := 0
    SetCapsLockState, AlwaysOff
  } 
  else if ra = D
  {
    GetKeyState, cp, CapsLock, T
	if cp = D
	  SetCapsLockState, AlwaysOff
	else
      SetCapsLockState, On  
  } 
  else if la = D
  {
	if navLayer
	  navLayer := 0
	else
	  navLayer := 1  
    SetCapsLockState, AlwaysOff
  } 
  else if ct = D
  {  
    navLayer := 0
    SetCapsLockState, AlwaysOff
  } 
  else if navLayer
  {
	navLayer := 0
  }
  else
  {
;    Send {Backspace}
    SetCapsLockState, AlwaysOff
    Send {LShift down}
    Input key, V M L1 T2, {F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{CapsLock}{PrintScreen}{Pause}{AppsKey}{Alt}
    Send {LShift up}
  }
Return

; top row

*SC010::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Esc}
  else if navLayer
    Send {Esc}
  else
    Send {Blind}{SC010}
return

CapsLock & SC011::

*SC012::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {CtrlDown}{f}{CtrlUp}
  else if navLayer
    Send {CtrlDown}{f}{CtrlUp}
  else
    Send {Blind}{SC012}
return

CapsLock & SC013::
CapsLock & SC014::

*SC015::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{PgUp}
  else if navLayer
    Send {Blind}{PgUp}
  else
    Send {Blind}{SC015}
return

*SC016::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{Home}
  else if navLayer
    Send {Blind}{Home}
  else
    Send {Blind}{SC016}
return

*SC017::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{Up}
  else if navLayer
    Send {Blind}{Up}
  else
    Send {Blind}{SC017}
return

*SC018::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{End}
  else if navLayer
    Send {Blind}{End}
  else
    Send {Blind}{SC018}
return

*SC019::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{End}{;}
  else if navLayer
    Send {Blind}{End}{;}
  else
    Send {Blind}{SC019}
return

; middle row

*SC01E::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {CtrlDown}{y}{CtrlUp}
  else if navLayer
    Send {CtrlDown}{y}{CtrlUp}
  else
    Send {Blind}{SC01E}
return

*SC01F::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{Home}{Home}{ShiftDown}{Down}{ShiftUp}
  else if navLayer
    Send {Blind}{Home}{Home}{ShiftDown}{Down}{ShiftUp}
  else
    Send {Blind}{SC01F}
return

*SC020::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{ShiftDown}
  else if navLayer
    Send {Blind}{ShiftDown}
  else
    Send {Blind}{SC020}
return

*SC020 Up::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {ShiftUp}
  else if navLayer
    Send {ShiftUp}
return

*SC021::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{CtrlDown}
  else if navLayer
    Send {Blind}{CtrlDown}
  else
    Send {Blind}{SC021}
return

*SC021 Up::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {CtrlUp}
  else if navLayer
    Send {CtrlUp}
return

CapsLock & SC022::

*SC023::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{PgDn}
  else if navLayer
    Send {Blind}{PgDn}
  else
    Send {Blind}{SC023}
return

*SC024::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{Left}
  else if navLayer
    Send {Blind}{Left}
  else
    Send {Blind}{SC024}
return

*SC025::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{Down}
  else if navLayer
    Send {Blind}{Down}
  else
    Send {Blind}{SC025}
return

*SC026::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{Right}
  else if navLayer
    Send {Blind}{Right}
  else
    Send {Blind}{SC026}
return

*SC027::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{Backspace}
  else if navLayer
    Send {Blind}{Backspace}
  else
    Send {Blind}{SC027}
return

*SC028::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{Del}
  else if navLayer
    Send {Blind}{Del}
  else
    Send {Blind}{SC028}
return

; bottom row

*SC02C::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {CtrlDown}{z}{CtrlUp}
  else if navLayer
    Send {CtrlDown}{z}{CtrlUp}
  else
    Send {Blind}{SC02C}
return

*SC02D::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {CtrlDown}{x}{CtrlUp}
  else if navLayer
    Send {CtrlDown}{x}{CtrlUp}
  else
    Send {Blind}{SC02D}
return

*SC02E::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {CtrlDown}{c}{CtrlUp}
  else if navLayer
    Send {CtrlDown}{c}{CtrlUp}
  else
    Send {Blind}{SC02E}
return

*SC02F::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {CtrlDown}{v}{CtrlUp}
  else if navLayer
    Send {CtrlDown}{v}{CtrlUp}
  else
    Send {Blind}{SC02F}
return

CapsLock & SC030::
CapsLock & SC031::

*SC032::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Return}
  else if navLayer
    Send {Return}
  else
    Send {Blind}{SC032}
return

*SC034::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {CtrlDown}{Backspace}{CtrlUp}
  else if navLayer
    Send {CtrlDown}{Backspace}{CtrlUp}
  else
    Send {Blind}{SC034}
return

CapsLock & SC035::
CapsLock & SC036::

; RAlt cancel caps / nav layer

RAlt::
  GetKeyState, cp, CapsLock, T
  if navLayer 
  {
    navLayer := 0
  } 
  else if cp = D
  {
    SetCapsLockState, AlwaysOff
  } 
Return
