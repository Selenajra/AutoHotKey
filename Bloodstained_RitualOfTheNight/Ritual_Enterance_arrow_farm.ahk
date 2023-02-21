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
;  Note: Equip summon wolf-thing spell for this to work
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
;walk out of save room
		Send {a Down}
		Sleep 2800
		Send {a Up}
		Sleep 50
;cast attack 3 times
		Send {f Down}
		Sleep 500
		Send {f Up}
		Sleep 500
		Send {f Down}
		Sleep 500
		Send {f Up}
		Sleep 500
		Send {f Down}
		Sleep 500
		Send {f Up}
		Sleep 500
;wait incase of levelup
		sleep 7000
		
;walk to pickup loot
		Send {a Down}
		Sleep 1800
		Send {a Up}
		Sleep 500
		
;walk back into save chamber
;		Send {d Down}
;		Sleep 4500
;		Send {d Up}
;		Sleep 500

		Send {d Down}
		Sleep 6500
		Send {d Up}
		Sleep 500
		
		Send {a Down}
		Sleep 1200
		Send {a Up}
		Sleep 500
		
		
;save	
		Send {w Down}
		Sleep 500
		Send {w Up}
		Sleep 500
		
		Send {Space Down}
		Sleep 500
		Send {Space Up}
		Sleep 500
		Send {Space Down}
		Sleep 500
		Send {Space Up}
		Sleep 500
		Send {Space Down}
		Sleep 500
		Send {Space Up}
		Sleep 2000
		
		Send {Space Down}
		Sleep 500
		Send {Space Up}
		Sleep 500

	}
}

h:: $stop := 1