@echo off

setlocal EnableDelayedExpansion

if not "%1" == "" (
	if not "%2" == "" (
		runas /env /user:%1 cmd
	) else (
		echo Please specify a program or command.
		echo Usage: su ^<username^> ^<cmd^>
	)
) else (
	echo Please specify a username.
	echo Usage: su ^<username^> ^<cmd^>
)

@echo on
