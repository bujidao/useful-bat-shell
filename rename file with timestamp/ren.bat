@echo off

set YYYYmmdd=%date:~0,4%%date:~5,2%%date:~8,2%
if "%time:~0,2%" lss "10" (set hhmiss=0%time:~1,1%%time:~3,2%%time:~6,2%) else (set hhmiss=%time:~0,2%%time:~3,2%%time:~6,2%)


dir/ad %~n1 >nul 2>nul&&(goto bFold)||(goto bFile)


:bFold
set "fold_name=%YYYYmmdd%_%hhmiss% %~n1"
ren %~n1 "%fold_name%"
exit


:bFile
set "file_name=%YYYYmmdd%_%hhmiss% %~n1%~x1"
ren %~nx1 "%file_name%"
exit


pause
