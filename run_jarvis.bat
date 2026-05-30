@echo off
title Jarvis AI

:loop
net session >nul 2>&1
if %errorLevel% == 0 goto :run

echo Admin huquqi kerak. Iltimos "Ha" ni bosing...
powershell -Command ^
  "$result = (Start-Process '%~f0' -Verb RunAs -PassThru -Wait).ExitCode;" ^
  "if ($result -ne 0) { exit 1 }"

goto :loop

:run
start "" "%~dp0jarvis1.exe"
exit /b 0