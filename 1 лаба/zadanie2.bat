@echo off
md "%~1\%username%"
cd /d "%~1\%username%"
echo %cd%
For /F %%A In ('Date /T') Do (
	For /F %%B In ('Time /T') Do Echo %%A - %%B>>D:\Zadanie1\log.txt
)
pause