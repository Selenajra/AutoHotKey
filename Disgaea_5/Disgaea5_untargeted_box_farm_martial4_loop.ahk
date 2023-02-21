#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#Persistent
#Warn
#SingleInstance force
#MaxHotkeysPerInterval 300
SendMode Input

ScriptEnabled := true

;
;	note: not using hellfire anymore.  leaving name in notes though
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
		
; open char select
		Send {k Down}
		Sleep 125
		Send {k Up}
		Sleep 125
		
; select char
		Send {k Down}
		Sleep 125
		Send {k Up}
		Sleep 125

; select move
		Send {k Down}
		Sleep 125
		Send {k Up}
		Sleep 125

; move cursor (4, w)
		Send {w Down}
		Sleep 80
		Send {w Up}
		Sleep 125
		Send {w Down}
		Sleep 80
		Send {w Up}
		Sleep 125
		Send {w Down}
		Sleep 80
		Send {w Up}
		Sleep 125
		Send {w Down}
		Sleep 80
		Send {w Up}
		Sleep 125

; confirm move
		Send {k Down}
		Sleep 150
		Send {k Up}
		Sleep 200

; select char
		Send {k Down}
		Sleep 125
		Send {k Up}
		Sleep 125

; select special (2, s) (1, k)
		Send {s Down}
		Sleep 125
		Send {s Up}
		Sleep 125
		Send {s Down}
		Sleep 125
		Send {s Up}
		Sleep 125
		Send {k Down}
		Sleep 125
		Send {k Up}
		Sleep 125

; select first special (k, 1)
		Send {k Down}
		Sleep 125
		Send {k Up}
		Sleep 125
		
; confirm skill (k, 1)
		Send {k Down}
		Sleep 125
		Send {k Up}
		Sleep 125

; execute (i, 1), (k, 1)
		Send {i Down}
		Sleep 125
		Send {i Up}
		Sleep 125
		Send {k Down}
		Sleep 125
		Send {k Up}
		Sleep 125
		
; short wait, then cancel animation (i, 1)
		Sleep 1600
		Send {i Down}
		Sleep 125
		Send {i Up}
		Sleep 125

; medium wait, then continue bonus menu (k, 1)
		Sleep 6000
		Send {k Down}
		Sleep 125
		Send {k Up}
		Sleep 125

; medium wait, then continue mvp menu (k, 1)
		Sleep 4000
		Send {k Down}
		Sleep 125
		Send {k Up}
		Sleep 125

; short wait, then continue incase recruit popup
		Sleep 1000
		Send {k Down}
		Sleep 125
		Send {k Up}
		Sleep 125
	
; wait for stage menu to appear
		Sleep 3000
		
; select stage
		Send {k Down}
		Sleep 125
		Send {k Up}
		Sleep 125
		
; enter stage
		Send {k Down}
		Sleep 125
		Send {k Up}
		Sleep 125
		
; wait for stage to starting
		Sleep 7000
	}
}

h:: $stop := 1