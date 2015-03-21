
; suspend/resume hotkeys

F9::Suspend , On
F10::Suspend , Off

; include Extend layer

#Include ..\CapsLayer\caps_layer_wide.ahk

#InputLevel 1
CapsLock::F22
#InputLevel 0

; include AltGr layer

#Include ..\AltGr\altgr_programmer_wide.ahk

#InputLevel 1
RWin::F20
#InputLevel 0

; set right-alt to be shift

RAlt::RShift

