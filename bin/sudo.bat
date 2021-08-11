@echo off

if not "%1" == "" (
	set user=%1
	shift
	if not "%2" == "" (
		goto do
	) else (
		echo Please specify a program or command.
		echo Usage: su ^<username^> ^<cmd^>	
		goto end
	)
) else (
	echo Please specify a username.
	echo Usage: su ^<username^> ^<cmd^>
	goto end
)

:do
shift
set cmd=""
:loop
if "%0" neq "" (
	set cmd=%cmd% %0
	shift
	goto loop
)
if defined cmd set cmd=%cmd:"=%

runas /env /user:%user% "%cmd%"

:end
@echo on
