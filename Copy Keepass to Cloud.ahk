#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;Synchronize Keepass Password to Cloud Services

^F12::
	FileCopy, D:\September 2017.kdbx, D:\Cloud Storage\Google Drive\*.*, 1
	FileCopy, D:\September 2017.kdbx, D:\Cloud Storage\Dropbox\CryptoWallet and Passwords\*.*, 1
Return