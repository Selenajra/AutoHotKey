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

	Send {F1 Down}
	Sleep 40
	Send {F1 Up}

; 49 -> rosetta stone
; 50 -> potion
; 51 -> hi-potion+
; 52 -> potion
; 53 -> potion
; 54 -> mega-potion
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

}

h:: $stop := 1