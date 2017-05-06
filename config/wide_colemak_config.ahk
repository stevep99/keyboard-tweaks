
; suspend/resume hotkeys

F9::Suspend , On
F10::Suspend , Off

; main key mapping

#Include ..\keymap\colemak_wide.ahk

; Extend layer

#Include ..\ExtendLayer\extend_layer_wide.ahk

#InputLevel 1
sc03a::F22     ; define Extend on CapsLock
#InputLevel 0

; AltGr layer

#Include ..\AltGr\altgr_programmer_wide.ahk

#InputLevel 1
RWin::F20
#InputLevel 0
