
; suspend/resume hotkeys

F9::Suspend , On
F10::Suspend , Off

; main key mapping

#Include ..\keymap\mod_dh_iso_wide.ahk

; Extend layer

#Include ..\ExtendLayer\extend_layer_wide_dh.ahk

#InputLevel 1
sc038::F24     ; define Extend on left-alt
#InputLevel 0

; AltGr layer

#Include ..\AltGr\altgr_programmer_wide.ahk

#InputLevel 1
; activate the AltGr symbols layer
RAlt::F20
; activate the symbols layer on Shift, and RAlt on Backspace (custom config for Ergo Pro)
;BackSpace::F20
;RAlt::RShift
#InputLevel 0

; additional custom configuration

;sc03a::lalt    ; define left-alt on capslock
;sc15B::lalt    ; define left-alt on leftwin
;sc03a::lwin    ; define left-win on capslock
