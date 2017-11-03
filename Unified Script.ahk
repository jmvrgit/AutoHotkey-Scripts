#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

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

+Del::
	FileRecycle, %A_Desktop%\*.png
Return

^F12::
	FileCopy, D:\September 2017.kdbx, D:\Cloud Storage\Google Drive\*.*, 1
	FileCopy, D:\September 2017.kdbx, D:\Cloud Storage\Dropbox\CryptoWallet and Passwords\*.*, 1
Return

^Del::
	FileRecycleEmpty
Return