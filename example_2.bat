set VAL=123
set OK=0
if "%VAL%" == "123" goto LABEL_BEGIN_41
 goto LABEL_CLOSE_41_END
:LABEL_BEGIN_41
 
        set OK=1
:LABEL_CLOSE_41

:LABEL_CLOSE_41_END
 
if "%OK%" == "1" C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal} PASSED {silver on black}
echo.
if "%OK%" == "0" C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {red on white} FAILED {silver on black}
echo.

set OK=0
if "%VAL%" == "456" goto LABEL_BEGIN_329
 goto LABEL_CLOSE_329_END
:LABEL_BEGIN_329
 
        set OK=1
:LABEL_CLOSE_329

:LABEL_CLOSE_329_END
 
if "%OK%" == "0" C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal} PASSED {silver on black}
echo.
if "%OK%" == "1" C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {red on white} FAILED {silver on black}
echo.
