﻿
; suspend/resume hotkeys

F9::Suspend , On
F10::Suspend , Off

; main key mapping

#Include ..\keymap\colemak.ahk

; Extend layer

#Include ..\ExtendLayer\extend_layer_std.ahk

#InputLevel 1
sc03a::F24     ; define Extend on CapsLock
#InputLevel 0

; AltGr layer

#Include ..\AltGr\altgr_programmer_std.ahk

#InputLevel 1
RAlt::F20
#InputLevel 0

