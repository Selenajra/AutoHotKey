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
; Top inventory slot open
; 2nd inventory slot has mega-potions in it (must have some! or script will break)
; have zero tents (so buying them will go into top slot)
; have call shop in the 4th ability slot
; have "Recov Med-RF" ability in the 2nd page, 1st ability slot
; shop to buy from is in the 2nd call shop slot
; have hi-speed off (script turns it on)


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

;	Send {F1 Down}
;	Sleep 40
;	Send {F1 Up}


; navigate to GF abilities
	Send {Down Down}
	var := WaitPixelColor(0xFFFFFF, 980, 340, 3000)
	Send {Down Up}
	Sleep 30
	
; open abilities
	Send {x Down}
	Sleep 30
	Send {x Up}
	var := WaitPixelColor(0x626262, 650, 250, 3000)
	Sleep 30

	Loop, 
	{
		
; open call shop ability
		Send {Down Down}
		var := WaitPixelColor(0xFFFFFF, 350, 410, 3000)
		Send {Down Up}
		Sleep 30
		
		Send {x Down}
		Sleep 30
		Send {x Up}
		var := WaitPixelColor(0xAAAAAA, 743, 242, 3000)
		Sleep 60

; navigate to 2nd shop (first is pet store)
		Send {Down Down}
		var := WaitPixelColor(0xFFFFFF, 710, 330, 3000)
		Send {Down Up}
		Sleep 60
		
		Send {x Down}
		Sleep 30
		Send {x Up}
		var := WaitPixelColor(0xFFFFFF, 350, 193, 3000)
		Sleep 30
		
; open buy
		Send {x Down}
		Sleep 30
		Send {x Up}
		var := WaitPixelColor(0xFFFFFF, 350, 340, 3000)
		Sleep 30
		
; navigate to tents
; use color of remedy cost "7" in "750" to key off successful move right
		Send {Right Down}
		var := WaitPixelColor(0xEDEDED, 933, 317, 3000)
		Send {Right Up}
		Sleep 30
		Send {Down Down}
		var := WaitPixelColor(0xFFFFFF, 350, 380, 3000)
		Send {Down Up}
		Sleep 30
		
; buy max tents
		Send {x Down}
		Sleep 30
		Send {x Up}
		var := WaitPixelColor(0x808080, 683, 369, 3000)
		Sleep 30
		Send {Up Down}
		var := WaitPixelColor(0xF5F5F5, 873, 405, 3000)
		Send {Up Up}
		Sleep 30
		Send {x Down}
		Sleep 30
		Send {x Up}
		var := WaitPixelColor(0x626262, 700, 400, 3000)
		Sleep 30
		
; exit buy, navigate to sell
		Send {c Down}
		Sleep 30
		Send {c Up}
		var := WaitPixelColor(0x000000, 600, 420, 3000)
		Sleep 30
		Send {Right Down}
		var := WaitPixelColor(0xFBFBFB, 459, 183, 3000)
		Send {Right Up}
		Sleep 30
		Send {x Down}
		Sleep 30
		Send {x Up}
		var := WaitPixelColor(0xFFFFFF, 349, 341, 3000)
		Sleep 30
		
; Sell max mega potions
		Send {Down Down}
		var := WaitPixelColor(0xFFFFFF, 351, 382, 3000)
		Send {Down Up}
		Sleep 30
		Send {x Down}
		Sleep 30
		Send {x Up}
		var := WaitPixelColor(0x414141, 713, 386, 3000)
		Sleep 30
		Send {Up Down}
		var := WaitPixelColor(0xF1F1F1, 920, 386, 3000)
		Send {Up Up}
		Sleep 30
		Send {x Down}
		Sleep 30
		Send {x Up}
		var := WaitPixelColor(0x626262, 682, 367, 3000)
		Sleep 30
		
; exit sell and shop, back to ability menu
		Send {c Down}
		Sleep 30
		Send {c Up}
		var := WaitPixelColor(0x000000, 682, 367, 3000)
		Sleep 30
		Send {c Down}
		Sleep 30
		Send {c Up}
		var := WaitPixelColor(0x626262, 682, 367, 3000)
		Sleep 30
		Send {c Down}
		Sleep 30
		Send {c Up}
		var := WaitPixelColor(0x000000, 1221, 280, 3000)
		Sleep 30
		
; navigate to "Recov Med-RF" (2nd page, first slot)
		Send {Right Down}
		var := WaitPixelColor(0xFFFFFF, 636, 268, 3000)
		Send {Right Up}
		Sleep 30
		Send {Up Down}
		var := WaitPixelColor(0xFFFFFF, 349, 287, 3000)
		Send {Up Up}
		Sleep 30
		

; open "Recov Med-RF"
		Send {x Down}
		Sleep 30
		Send {x Up}
		var := WaitPixelColor(0x838383, 781, 237, 3000)
		Sleep 30
		
; refine all tents
		Send {x Down}
		Sleep 30
		Send {x Up}
		var := WaitPixelColor(0x2A2A2A, 534, 282, 3000)
		Sleep 30
		Send {Down Down}
		var := WaitPixelColor(0xFDFDFD, 1039, 493, 3000)
		Send {Down Up}
		Sleep 30
		Send {x Down}
		Sleep 30
		Send {x Up}
		var := WaitPixelColor(0x000000, 852, 379, 3000)
		Sleep 30

; exit refine and move to first ability page
		Send {c Down}
		Sleep 30
		Send {c Up}
		var := WaitPixelColor(0xFCFCFC, 617, 278, 3000)
		Sleep 30
		Send {Right Down}
		var := WaitPixelColor(0x626262, 617, 279, 3000)
		Send {Right Up}
		Sleep 30
	}
}

e:: $stop := 1