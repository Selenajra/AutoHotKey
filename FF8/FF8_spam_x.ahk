#Include WaitPixelColor.ahk

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#Persistent
#Warn
#SingleInstance force
#MaxHotkeysPerInterval 300
SendMode Input

ScriptEnabled := true

;setup:
; this just spams x key


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


w::
{

	Loop, 
	{
		Send {x Down}
		Sleep 30
		Send {x Up}
		Sleep 30
		
	}
}

e:: $stop := 1