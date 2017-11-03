#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;AHK Script by Jon Marco
;Switches from Speaker to Earphones
;CTRL-Page UP = Speakers
;CTRL-Page Down = Earphones

^PgUp::
	Run, mmsys.cpl
	WinWait, Sound
	ControlSend, SysListView321, {Down 1}
	ControlClick, &Set Default
	ControlClick, OK
Return

^PgDn::
	Run, mmsys.cpl
	WinWait, Sound
	ControlSend, SysListView321, {Down 4}
	ControlClick, &Set Default
	ControlClick, OK
Return