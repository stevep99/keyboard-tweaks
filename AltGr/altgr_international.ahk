
; AutoHotKey script for redefining AltGr key to allow typing of a wide variety of
; accented characters and symbols, similar to MS international layout but with 
; all additional characters entered via the AltGr key.

; UK layout: http://www.keyboard-layout-editor.com/#/layouts/03f9f4a0d2492d73a76362cdd4fd22c0
; US layout: http://www.keyboard-layout-editor.com/#/layouts/210278c3558d8477c4ac57e1af82ccf4

RAlt & `::
  GetKeyState, sh, Shift
  if sh = D
    Gosub DeadKeyTilde
  else
    Gosub DeadKeyGraveAccent
return
RAlt & 1::
  GetKeyState, sh, Shift
  if sh = D
    Send ¡
  else
    Send ¹
return
RAlt & 2::
  GetKeyState, sh, Shift
  if sh = D
    Gosub, DeadKeyUmlaut
  else
    Send ²
return
RAlt & 3::Send ³
RAlt & 4::
  GetKeyState, sh, Shift
  if sh = D
    Send ¤
  else
    Send €
return
RAlt & 5::
  GetKeyState, sh, Shift
  if sh = D
    Send £
  else
    Send €
return
RAlt & 6::
  GetKeyState, sh, Shift
  if sh = D
     Gosub, DeadKeyCircumflex
  else
    Send ¼
return
RAlt & 7::Send ½
RAlt & 8::Send ¾
RAlt & 9::Send ‘
RAlt & 0::Send ’
RAlt & -::
  GetKeyState, sh, Shift
  if sh = D
    Send ±
  else
    Send ¥
return
RAlt & =::
  GetKeyState, sh, Shift
  if sh = D
    Send ÷
  else
    Send ×
return

RAlt & q::
  GetKeyState, sh, Shift
  if sh = D
    Send Ä
  else
    Send ä
return
RAlt & w::
  GetKeyState, sh, Shift
  if sh = D
    Send Å
  else
    Send å
return
RAlt & e::
  GetKeyState, sh, Shift
  if sh = D
    Send É
  else
    Send é
return
RAlt & r::
  Send ®
return
RAlt & t::
  GetKeyState, sh, Shift
  if sh = D
    Send Þ
  else
    Send þ
return
RAlt & y::
  GetKeyState, sh, Shift
  if sh = D
    Send Ü
  else
    Send ü
return
RAlt & u::
  GetKeyState, sh, Shift
  if sh = D
    Send Ú
  else
    Send ú
return
RAlt & i::
  GetKeyState, sh, Shift
  if sh = D
    Send Í
  else
    Send í
return
RAlt & o::
  GetKeyState, sh, Shift
  if sh = D
    Send Ó
  else
    Send ó
return
RAlt & p::
  GetKeyState, sh, Shift
  if sh = D
    Send Ö
  else
    Send ö
return
RAlt & [::Send «
RAlt & ]::Send »

RAlt & a::
  GetKeyState, sh, Shift
  if sh = D
    Send Á
  else
    Send á
return
RAlt & s::
  GetKeyState, sh, Shift
  if sh = D
    Send §
  else
    Send ß
return
RAlt & d::
  GetKeyState, sh, Shift
  if sh = D
    Send Ð
  else
    Send ð
return
RAlt & f::
  GetKeyState, sh, Shift
  if sh = D
    Send {}}
  else
    Send {{}
return
RAlt & l::
  GetKeyState, sh, Shift
  if sh = D
    Send Ø
  else
    Send ø
return
RAlt & `;::
  GetKeyState, sh, Shift
  if sh = D
    Send °
  else
    Send ¶
return
RAlt & '::
  GetKeyState, sh, Shift
  if sh = D
    Gosub, DeadKeyUmlaut
  else
    Send "	
return
RAlt & #:: Gosub, DeadKeyTilde

RAlt & z::
  GetKeyState, sh, Shift
  if sh = D
    Send Æ
  else
    Send æ
return
RAlt & c::
  GetKeyState, sh, Shift
  if sh = D
    Send ¢
  else
    Send ©
return
RAlt & n::
  GetKeyState, sh, Shift
  if sh = D
    Send Ñ
  else
    Send ñ
return
RAlt & m::
  GetKeyState, sh, Shift
  if sh = D
    Send ·
  else
    Send µ
return
RAlt & .::Send …
RAlt & ,::
  GetKeyState, sh, Shift
  if sh = D
    Send Ç
  else
    Send ç
return
RAlt & \::Send ¬
RAlt & /::Send ¿

DeadKeyCircumflex:
Input, TextEntry1, L1,{Esc}{Enter}{F1}{Down}{Up}
endKey=%ErrorLevel%
entry=%TextEntry1%
GetKeyState, sh, Shift
if entry = a
{
  if sh = D
    Send Â
  else
    Send â
}
else if entry = e
{
  if sh = D
    Send Ê
  else
    Send ê
}
else if entry = i
{
  if sh = D
    Send Ê
  else
    Send ê
}
else if entry = o
{
  if sh = D
    Send Ô
  else
    Send ô
}
else if entry = u
{
  if sh = D
    Send Û
  else
    Send û
}
return

DeadKeyUmlaut:
Input, TextEntry1, L1,{Esc}{Enter}{F1}{Down}{Up}
endKey=%ErrorLevel%
entry=%TextEntry1%
GetKeyState, sh, Shift
if entry = a
{
  if sh = D
    Send Ä
  else
    Send ä
}
else if entry = e
{
  if sh = D
    Send Ë
  else
    Send ë
}
else if entry = i
{
  if sh = D
    Send Ï
  else
    Send ï
}
else if entry = o
{
  if sh = D
    Send Ö
  else
    Send ö
}
else if entry = u
{
  if sh = D
    Send Ü
  else
    Send ü
}
else if entry = y
{
  if sh = D
    Send Ÿ
  else
    Send ÿ
}
return

DeadKeyTilde:
Input, TextEntry1, L1,{Esc}{Enter}{F1}{Down}{Up}
endKey=%ErrorLevel%
entry=%TextEntry1%
GetKeyState, sh, Shift
if entry = a
{
  if sh = D
    Send Ã
  else
    Send ã
}
else if entry = n
{
  if sh = D
    Send Ñ
  else
    Send ñ
}
else if entry = o
{
  if sh = D
    Send Õ
  else
    Send õ
}
return

DeadKeyGraveAccent:
Input, TextEntry1, L1,{Esc}{Enter}{F1}{Down}{Up}
endKey=%ErrorLevel%
entry=%TextEntry1%
if entry = a
{
  GetKeyState, sh, Shift
  if sh = D
    Send À
  else
    Send à
}
else if entry = e
{
  GetKeyState, sh, Shift
  if sh = D
    Send È
  else
    Send è
}
else if entry = i
{
  GetKeyState, sh, Shift
  if sh = D
    Send Ì
  else
    Send ì
}
else if entry = o
{
  GetKeyState, sh, Shift
  if sh = D
    Send Ò
  else
    Send ò
}
else if entry = u
{
  GetKeyState, sh, Shift
  if sh = D
    Send Ù
  else
    Send ù
}
return

