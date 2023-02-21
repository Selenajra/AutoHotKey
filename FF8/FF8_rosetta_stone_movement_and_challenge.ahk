#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#Persistent
#Warn
#SingleInstance force
#MaxHotkeysPerInterval 300
SendMode Input

ScriptEnabled := true

; F10 to exit
F10::
{
	ExitApp
}

; F9 to pause all functionality, useful for dungeons
F9::
{
	ScriptEnabled := !ScriptEnabled
}

; arrow keys
;  {Up}
;  {Down}
;  {Left}
;  {Right}


w::
{
; exit savegame room
	Send {Down Down}
	Sleep 2000
	Send {Down Up}
	Sleep 125
	
; load screen and walk to stairs
	Send {Left Down}
	Sleep 1600
	Send {Left Up}
	Sleep 125
	
; walk up stairs
	Send {Up Down}
	Sleep 2000
	Send {Up Up}
	Sleep 125
	
; load screen and start walking to next screen
	Send {Left Down}
	Sleep 2000
	Send {Left Up}
	Sleep 125
	Send {Down Down}
	Sleep 5000
	Send {Down Up}
	Sleep 125

; upright, then upleft

	Send {Right Down}
	Sleep 10
	Send {Up Down}
	Sleep 4000
	Send {Right Up}
	Sleep 10
	Send {Left Down}
	Sleep 2000
	Send {Up Up}
	Sleep 3500
	Send {Left Up}
	Sleep 10
	Send {Up Down}
	Sleep 10
	Send {Right Down}

; move inside room to talk to guy
	Sleep 3000
	Send {Right Up}
	Sleep 2000
	Send {Up Up}
	Sleep 10
	Send {Left Down}
	Sleep 500
	Send {Left Up}
	
; speed up, and loop through canceling games
	Sleep 40
	Send {F1 Down}
	Sleep 40
	Send {F1 Up}

; 49 -> rosetta stone
; 50 -> potion
; 51 -> hi-potion+
; 52 -> potion
; 53 -> potion
; 54 -> mega-potions
; 55 -> eye drops
; 56 -> eye drops
; 57 -> potion
; 58 -> potion
; 59 -> eye drops

	Loop, 49
	{
;start and cancel cardgame n times
		Send {s Down}
		Sleep 40
		Send {s Up}
		Sleep 700
		Send {c Down}
		Sleep 40
		Send {c Up}
		Sleep 500
		Send {s Down}
		Sleep 40
		Send {s Up}
		Sleep 700
	}
	
; start last cardgame

	Send {s Down}
	Sleep 40
	Send {s Up}
	Sleep 700
	Send {s Down}
	Sleep 40
	Send {s Up}
}


h:: $stop := 1
