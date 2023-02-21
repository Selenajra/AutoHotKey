#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#Persistent
#Warn
#SingleInstance force
#MaxHotkeysPerInterval 300
SendMode Input

ScriptEnabled := true

; F12 to exit
F12::
{
	ExitApp
}

; F11 to pause all functionality, useful for dungeons
F11::
{
	ScriptEnabled := !ScriptEnabled
}

g::
{
	if (!ScriptEnabled) {
		Return
	}
	$stop := 0
	Loop,
	{
		Send {LShift Down}
		Sleep 50
		Send {a Down}
		Sleep 8000
		Send {a Up}
		Sleep 50
		Send {s Down}
		Sleep 1200
		Send {s Up}
		Sleep 50
		Send {w Down}
		Sleep 1200
		Send {w Up}
		Sleep 50
		Send {d Down}
		Sleep 8000
		Send {d Up}
		Sleep 50
		Send {LShift Up}
		Sleep 50
		if ($stop)
		{
			return
		}
	}
}

h:: $stop := 1
