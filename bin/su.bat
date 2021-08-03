@echo off

setlocal EnableDelayedExpansion

if not "%1" == "" (
	runas /env /user:%1 cmd
) else (
	echo Please specify a username.
	echo Usage: su ^<username^>
)

@echo on
