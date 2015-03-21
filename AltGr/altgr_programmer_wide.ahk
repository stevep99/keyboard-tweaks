; AutoHotKey script for providing additional layer of characters useful to programmers (default is AltGr)
; for use in conjunction with a "wide" layout
; http://www.keyboard-layout-editor.com/#/layouts/b8a1a2240bba6ba0f6e96b656e7f75e5
; The script defines F20 as the extra layer key, so you can apply to any key of your choice
; e.g. 
; #InputLevel 1
; RAlt::F20
; #InputLevel 0


F20 & F1::KeyHistory

; number row

F20 & SC001::
  GetKeyState, sh, Shift
  if sh = D
    Gosub DeadKeyTilde
  else
    Gosub DeadKeyGraveAccent
return

F20 & SC002::
  GetKeyState, sh, Shift
  if sh = D
    Send ¡
  else
    Send ¹
return

F20 & SC003::
  GetKeyState, sh, Shift
  if sh = D
    Gosub DeadKeyUmlaut
  else
    Send ²
return

F20 & SC004::Send ³

F20 & SC005::
  GetKeyState, sh, Shift
  if sh = D
    Send ¤
  else
    Send €
return

F20 & SC006::
  GetKeyState, sh, Shift
  if sh = D
    Send £
  else
    Send €
return

F20 & SC008::
  GetKeyState, sh, Shift
  if sh = D
    Send ¼
  else
     Gosub DeadKeyCircumflex
return

F20 & SC009::
  GetKeyState, sh, Shift
  if sh = D
	Send ½
  else
    Send 7
return

F20 & SC00A::
  GetKeyState, sh, Shift
  if sh = D
	Send ¾
  else
    Send 8
return

F20 & SC00B::
  GetKeyState, sh, Shift
  if sh = D
	Send ‘
  else
    Send 9
return

F20 & SC00C::
  GetKeyState, sh, Shift
  if sh = D
	Send ’
  else
    Send 0
return

F20 & SC00D::
  GetKeyState, sh, Shift
  if sh = D
    Send ±
  else
    Send ¥
return

F20 & SC007::
  GetKeyState, sh, Shift
  if sh = D
    Send ÷
  else
    Send ×
return

; upper row

F20 & SC010::
  Send {!}
return

F20 & SC011::
  Send {{}
return

F20 & SC012::
  Send {}}
return

F20 & SC013::
  Send {$}
return

F20 & SC014::
  Send {`%}
return

F20 & SC016::
  Send {^}
return

F20 & SC017::
  Send {4}
return

F20 & SC018::
  Send {5}
return

F20 & SC019::
  Send {6}
return

F20 & SC01A::
  Send {+}
return

F20 & SC01B:: 
  Gosub DeadKeyTilde
return

F20 & SC015::
  Send {«}
return

; middle row

F20 & SC01E::
  Send {_}
return

F20 & SC01F::
  GetKeyState, sh, Shift
  if sh = D
    Send {®}
  else
    Send {(}
return

F20 & SC020::
  Send {)}
return

F20 & SC021::
  Send {"}
return

F20 & SC022::
  Send {£}
return

F20 & SC024::
  Send {&}
return

F20 & SC025::
  Send {1}
return

F20 & SC026::
  Send {2}
return

F20 & SC027::
  Send {3}
return

F20 & SC028::
  Send {-}
return

F20 & SC02B::
  GetKeyState, sh, Shift
  if sh = D
    ; Gosub DeadKeyUmlaut
    Gosub DeadKeyAccent
  else
    ; Gosub DeadKeyAccent
	Send {=}
return

F20 & SC023::
  Send {»}
return

; lower row

F20 & SC056::
  Send {\}
return

F20 & SC02C::
  GetKeyState, sh, Shift
  if sh = D
    Send {¢}
  else
    Send {[}
return

F20 & SC02D::
  GetKeyState, sh, Shift
  if sh = D
    Send {©}
  else
    Send {]}
return

F20 & SC02E::
  GetKeyState, sh, Shift
  if sh = D
    Send {?}
  else
    Send {/}
return

F20 & SC02F::
  Send {|}
return

F20 & SC030::
  Send {¿}
return

F20 & SC032::
  Send {*}
return

F20 & SC033::
  GetKeyState, sh, Shift
  if sh = D
    Send {µ}
  else
    Send {?}
return

F20 & SC034::
  GetKeyState, sh, Shift
  if sh = D
    Send {·}
  else
    Send {0}
return

F20 & SC035::
  GetKeyState, sh, Shift
  if sh = D
    Send {…}
  else
    Send {.}
return

F20 & SC039::Send {Space}

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
