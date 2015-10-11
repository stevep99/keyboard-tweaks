
; suspend/resume hotkeys

F9::Suspend , On
F10::Suspend , Off

; include Extend layer

#Include ..\ExtendLayer\caps_layer_dh.ahk

#InputLevel 1
CapsLock::F22
#InputLevel 0

backspace::lshift

; include AltGr layer

#Include ..\AltGr\altgr_programmer_angle.ahk

#InputLevel 1
RAlt::F20
#InputLevel 0

; sticky shift

#Include ..\Misc\sticky_shift.ahk

; launchers

; #Include ..\Misc\launch.ahk

; set right-alt to be shift

;RAlt::RShift

