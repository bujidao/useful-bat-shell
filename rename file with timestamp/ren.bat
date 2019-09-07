@echo off

set YYYYmmdd=%date:~0,4%%date:~5,2%%date:~8,2%
set hhmiss=%time:~0,2%%time:~3,2%%time:~6,2%


dir/ad %~n1 >nul 2>nul&&(goto bFold)||(goto bFile)


:bFold
set "fold_name=%YYYYmmdd% %~n1"
ren %~n1 "%fold_name%"
exit


:bFile
set "file_name=%YYYYmmdd% %~n1%~x1"
ren %~nx1 "%file_name%"
exit


pause
