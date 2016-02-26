
; suspend/resume hotkeys

F9::Suspend , On
F10::Suspend , Off

; include Extend layer

#Include ..\ExtendLayer\caps_layer_wide_dh.ahk

#InputLevel 1
sc038::F22     ; define Extend on left-alt
#InputLevel 0
 
sc03a::lalt    ; define left-alt on capslock

; include AltGr layer

#Include ..\AltGr\altgr_programmer_wide.ahk

#InputLevel 1
RAlt::F20    ; define right-alt on apps-key
#InputLevel 0

; additional thumb key configuration

AppsKey::RShift  ; define shift on apps-key
