#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#Persistent
#Warn
#SingleInstance force
#MaxHotkeysPerInterval 300
SendMode Input

ScriptEnabled := true

;
;
;  Note: Equip a greatsword for this to work
;	Note: Sett attack to "b" button for this to work
;
;

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

g::
{
	if (!ScriptEnabled) {
		Return
	}
	Loop,
	{
;attack with weapon (b)
		Send {b Down}
		Sleep 50
		Send {b Up}
		Sleep 50
		

	}
}

h:: $stop := 1
