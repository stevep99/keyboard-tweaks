; AutoHotKey script for defining an Extend layer (default is CapsLock)
; Hold Extend and press other keys to provide navigation and other fuctionality
;
; The script defines F24 as Extend, so you can apply to any key of your choice
; e.g. to use CapsLock, define:
#InputLevel 1
CapsLock::F24
#InputLevel 0

#Persistent
SetCapsLockState, AlwaysOff

; digit row

F24 & SC001::
return

F24 & SC002::
  Send {Blind}{F1}
return

F24 & SC003::
  Send {Blind}{F2}
return

F24 & SC004::
  Send {Blind}{F3}
return

F24 & SC005::
  Send {Blind}{F4}
return

F24 & SC006::
  Send {Blind}{F5}
return

F24 & SC007::
  Send {Blind}{F6}
return

F24 & SC008::
  Send {Blind}{F7}
return

F24 & SC009::
  Send {Blind}{F8}
return

F24 & SC00A::
  Send {Blind}{F9}
return

F24 & SC00B::
  Send {Blind}{F10}
return

F24 & SC00C::
  Send {Blind}{F11}
return

F24 & SC00D::
  Send {Blind}{F12}
return

; top row

F24 & SC010::
  Send {Esc}
return

F24 & SC011::
  mouseclick, x1
  ;Send {Browser_Back}
return

F24 & SC012::
  Send {CtrlDown}{f}{CtrlUp}
return

F24 & SC013::
  mouseclick, x2
  ;Send {Browser_Forward}
return

F24 & SC014::
  Send {Insert}
return

F24 & SC015::
return

F24 & SC016::
  Send {Blind}{PgUp}
return

F24 & SC017::
  Send {Blind}{Home}
return

F24 & SC018::
  Send {Blind}{Up}
return

F24 & SC019::
  Send {Blind}{End}
return

F24 & SC01A::
  GetKeyState, cp, CapsLock, T
  if cp = D
    SetCapsLockState, AlwaysOff
  else
    SetCapsLockState, AlwaysOn
return

; middle row

F24 & SC01E::
  Send {Blind}{LAltDown}
return

F24 & SC01E Up::
  Send {LAltUp}
return

F24 & SC01F::
  Send {Blind}{LWinDown}
return

F24 & SC01F Up::
  Send {LWinUp}
return

F24 & SC020::
  Send {Blind}{ShiftDown}
return

F24 & SC020 Up::
  Send {ShiftUp}
return

F24 & SC021::
  Send {Blind}{CtrlDown}
return

F24 & SC021 Up::
  Send {CtrlUp}
return

F24 & SC022::
  Send {Blind}{RAltDown}
return

F24 & SC022 Up::
  Send {RAltUp}
return

F24 & SC023::
return

F24 & SC024::
  Send {Blind}{PgDn}
return

F24 & SC025::
  Send {Blind}{Left}
return

F24 & SC026::
  Send {Blind}{Down}
return

F24 & SC027::
  Send {Blind}{Right}
return

F24 & SC028::
  Send {Blind}{Del}
return

; bottom row

F24 & SC056::
  Send {CtrlDown}{z}{CtrlUp}
return

F24 & SC02C::
  Send {CtrlDown}{x}{CtrlUp}
return

F24 & SC02D::
  Send {CtrlDown}{c}{CtrlUp}
return

F24 & SC02E::
  Send {CtrlDown}{c}{CtrlUp}
return

F24 & SC02F::
  Send {CtrlDown}{v}{CtrlUp}
return

F24 & SC030::
return

F24 & SC031::
  Send {Return}
return

F24 & SC032::
  Send {Blind}{PrintScreen}
return

F24 & SC033::
  Send {Blind}{Backspace}
return

F24 & SC034::
  Send {Blind}{Tab}
return

F24 & SC035::
  Send {AppsKey}
return

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
