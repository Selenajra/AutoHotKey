#Persistent
#Warn
#SingleInstance force
#MaxHotkeysPerInterval 300
SendMode Input

;                  vvvvv Enter your Scope modifier percentage here
ScopeMultiplier := -0.25
;                  ^^^^^
; Examples:
; -50% ==> -0.50
; 25% ==> 0.25
; Disclaimer: I'm not far enough into the game to test this out in-depth :)

; Base time to charge a shot is 250ms, add some buffer since it takes longer after a dodge
DodgeDelay := 250 * (1 - ScopeMultiplier)
ChargeTime := 250 * (1 - ScopeMultiplier) + DodgeDelay + 1

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

#IfWinActive, CrossCode Min

; Bind mouse side buttons to keys
XButton1::y
XButton2::h
MButton::u

~LButton::
{
	if (!ScriptEnabled) {
		Return
	}
	if (GetKeyState("RButton", "P")) {
		Return
	}
	SetTimer, StartContinuousFire, %ChargeTime%
}

~LButton Up::
{
	if (!ScriptEnabled) {
		Return
	}
	CancelActions()
}

~RButton::
{
	if (!ScriptEnabled) {
		Return
	}
	CancelActions()
	KeyWait, RButton
	if (GetKeyState("LButton", "P")) {
		Send {LButton down}
		SetTimer, StartContinuousFire, %ChargeTime%
	}
}

StartContinuousFire() {
	SetTimer, LeftClick, 100, -1
}

LeftClick()
{
	if (GetKeyState("LButton", "P")) {
		Send {LButton}
	} else {
		SetTimer, LeftClick, Off
	}
}

CancelActions()
{
	SetTimer, LeftClick, Off
	SetTimer, StartContinuousFire, Off
}
