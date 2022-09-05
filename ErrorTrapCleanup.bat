::A simple batch program for cleaning up NRAAS ErrorTrap error logs
::dev0.01


@echo off
chdir /D "C:\%USERPROFILE%\Documents"

set targetDir="%USERPROFILE%\Documents\Electronic Arts\The Sims 3"
IF EXIST %targetDir% (
	cd %targetDir%) ELSE (
	echo "%targetDir% does not exist...")
cd

IF EXIST ScriptError*.xml (
	echo "NRAAS ErrorTrap logs founds..."
	del "ScriptError*.xml"
	echo "logs removed...") ELSE (
	echo "No NRAAS ErrorTrap logs found...")

pause

::


