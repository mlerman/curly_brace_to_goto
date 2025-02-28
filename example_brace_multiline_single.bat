set VAL=123
set OK=0
if "%VAL%" == "123" 
    {{{ 
        set OK=1
    }}} 
if "%OK%" == "1" C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal} PASSED {silver on black}
echo.
if "%OK%" == "0" C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {red on white} FAILED {silver on black}
echo.

set OK=0
if "%VAL%" == "456" 
    {{{ 
        set OK=1
    }}} 
if "%OK%" == "0" C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal} PASSED {silver on black}
echo.
if "%OK%" == "1" C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {red on white} FAILED {silver on black}
echo.
