; AutoHotKey script for typing characters useful to programmers
; http://www.keyboard-layout-editor.com/#/layouts/716faf8f505e914d342dbdf817c1f514

RAlt & F1::KeyHistory

; number row

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

; upper row

RAlt & SC010::
  Send {ShiftDown}{1}{ShiftUp}
return

RAlt & SC011::
  Send {ShiftDown}{2}{ShiftUp}
return

RAlt & SC012::
  Send {ShiftDown}{3}{ShiftUp}
return

RAlt & SC013::
  Send {ShiftDown}{4}{ShiftUp}
return

RAlt & SC014::
  Send {ShiftDown}{5}{ShiftUp}
return

RAlt & SC015::
  Send {ShiftDown}{6}{ShiftUp}
return

RAlt & SC016::
  Send {ShiftDown}{7}{ShiftUp}
return

RAlt & SC017::
  Send {ShiftDown}{8}{ShiftUp}
return

RAlt & SC018::
  Send {ShiftDown}{9}{ShiftUp}
return

RAlt & SC019::
  Send {ShiftDown}{0}{ShiftUp}
return

RAlt & SC01A::
  Send {«}
return

RAlt & SC01B::
  Send {»}
return

; middle row

RAlt & SC01E::
  Send {-}
return

RAlt & SC01F::
  GetKeyState, sh, Shift
  if sh = D
    Send {®}
  else
    Send {_}
return

RAlt & SC020::
  Send {=}
return

RAlt & SC021::
  Send {+}
return

RAlt & SC022::
  Send {#}
return

RAlt & SC023::
  Send {~}
return

RAlt & SC024::
  Send {{}
return

RAlt & SC025::
  Send {}}
return

RAlt & SC026::
  Send {[}
return

RAlt & SC027::
  Send {]}
return

RAlt & SC028::
  GetKeyState, sh, Shift
  if sh = D
    Gosub, DeadKeyUmlaut
  else
    Gosub, DeadKeyAccent
return

RAlt & SC02B:: Gosub, DeadKeyTilde

; lower row

RAlt & SC02C::
  GetKeyState, sh, Shift
  if sh = D
    Send Æ
  else
    Send æ
return

RAlt & SC02E::
  GetKeyState, sh, Shift
  if sh = D
    Send ¢
  else
    Send ©
return

RAlt & SC032::
  GetKeyState, sh, Shift
  if sh = D
    Send ·
  else
    Send µ
return

RAlt & SC033::
  GetKeyState, sh, Shift
  if sh = D
    Send Ç
  else
    Send ç
return

RAlt & SC034::Send …

RAlt & SC035::
  GetKeyState, sh, Shift
  if sh = D
    Send ¿
  else
    Send \
return

RAlt & SC056::
  GetKeyState, sh, Shift
  if sh = D 
    Send {|}
  else
    Send {\}
return

RAlt & Space::Send {Space}
	
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

DeadKeyAccent:
Input, TextEntry1, L1,{Esc}{Enter}{F1}{Down}{Up}
endKey=%ErrorLevel%
entry=%TextEntry1%
if entry = a
{
  GetKeyState, sh, Shift
  if sh = D
    Send Á
  else
    Send á
}
else if entry = e
{
  GetKeyState, sh, Shift
  if sh = D
    Send É
  else
    Send é
}
else if entry = i
{
  GetKeyState, sh, Shift
  if sh = D
    Send Í
  else
    Send í
}
else if entry = o
{
  GetKeyState, sh, Shift
  if sh = D
    Send Ó
  else
    Send ó
}
else if entry = u
{
  GetKeyState, sh, Shift
  if sh = D
    Send Ú
  else
    Send ú
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
