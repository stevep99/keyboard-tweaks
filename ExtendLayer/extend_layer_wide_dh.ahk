
; AutoHotKey script for defining an Extend layer (default is CapsLock)
; Hold Extend and press other keys to provide navigation and other fuctionality
; http://www.keyboard-layout-editor.com/#/gists/0906003d2ed2e5011779
;
; The script defines F22 as Extend, so you can apply to any key of your choice
; e.g. to use CapsLock, define:
; #InputLevel 1
; CapsLock::F22
; #InputLevel 0

#Persistent
SetCapsLockState, AlwaysOff

; digit row

F22 & SC001::
return

F22 & SC002::
  Send {Blind}{F1}
return

F22 & SC003::
  Send {Blind}{F2}
return

F22 & SC004::
  Send {Blind}{F3}
return

F22 & SC005::
  Send {Blind}{F4}
return

F22 & SC006::
  Send {Blind}{F5}
return

F22 & SC008::
  Send {Blind}{F6}
return

F22 & SC009::
  Send {Blind}{F7}
return

F22 & SC00A::
  Send {Blind}{F8}
return

F22 & SC00B::
  Send {Blind}{F9}
return

F22 & SC00C::
  Send {Blind}{F10}
return

F22 & SC00D::
  Send {Blind}{F11}
return

F22 & SC007::
  Send {Blind}{F12}
return

; top row

F22 & SC010::
  Send {Esc}
return

F22 & SC011::
  mouseclick, x1
  ;Send {Browser_Back}
return

F22 & SC012::
  Send {CtrlDown}{f}{CtrlUp}
return

F22 & SC013::
  mouseclick, x2
  ;Send {Browser_Forward}
return

F22 & SC014::
  Send {Insert}
return

F22 & SC015::
  Send {Blind}{PrintScreen}
return

F22 & SC016::
  Send {Blind}{PgUp}
return

F22 & SC017::
  Send {Blind}{Home}
return

F22 & SC018::
  Send {Blind}{Up}
return

F22 & SC019::
  Send {Blind}{End}
return

F22 & SC01A::
  Send {AppsKey}
return

; middle row

F22 & SC01E::
  Send {CtrlDown}{a}{CtrlUp}
return

F22 & SC01F::
  Send {Blind}{Tab}
return

F22 & SC020::
  Send {Blind}{ShiftDown}
return

F22 & SC020 Up::
  Send {ShiftUp}
return

F22 & SC021::
  Send {Blind}{CtrlDown}
return

F22 & SC021 Up::
  Send {CtrlUp}
return

F22 & SC022::
  Send {Blind}{AltDown}
return

F22 & SC022 Up::
  Send {AltUp}
return

F22 & SC023::
  Send {Insert}
return

F22 & SC024::
  Send {Blind}{PgDn}
return

F22 & SC025::
  Send {Blind}{Left}
return

F22 & SC026::
  Send {Blind}{Down}
return

F22 & SC027::
  Send {Blind}{Right}
return

F22 & SC028::
  Send {Blind}{Del}
return

F22 & SC02B::
  GetKeyState, cp, CapsLock, T
  if cp = D
    SetCapsLockState, AlwaysOff
  else
    SetCapsLockState, AlwaysOn
return

; bottom row

F22 & SC056::
  Send {CtrlDown}{z}{CtrlUp}
return

F22 & SC02C::
  Send {CtrlDown}{x}{CtrlUp}
return

F22 & SC02D::
  Send {CtrlDown}{c}{CtrlUp}
return

F22 & SC02E::
  Send {CtrlDown}{v}{CtrlUp}
return

F22 & SC02F::
  Send {CtrlDown}{v}{CtrlUp}
return

F22 & SC030::
return

F22 & SC031::
return

F22 & SC032::
  mouseclick, left
return

F22 & SC033::
  Send {Blind}{Backspace}
return

F22 & SC034::
  Send {Blind}{F13}
return

F22 & SC035::
  Send {Blind}{F14}
return

F22 & SC039::
  Send {Return}
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
