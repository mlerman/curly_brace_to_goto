set VAL=123
set VAL2=456
set OK=0
if "%VAL%" == "123" goto LABEL_BEGIN_54
 goto LABEL_CLOSE_54_END
:LABEL_BEGIN_54
 
        set OK=1
        
    if "%VAL2%" == "456" goto LABEL_BEGIN_110
 goto LABEL_CLOSE_110_END
:LABEL_BEGIN_110
 
            set OK=2
:LABEL_CLOSE_110

:LABEL_CLOSE_110_END

:LABEL_CLOSE_54

:LABEL_CLOSE_54_END
 
if "%OK%" == "2" C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal} PASSED {silver on black}
echo.
if "%OK%" == "1" C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {red on white} FAILED {silver on black}
echo.
if "%OK%" == "0" C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {red on white} FAILED {silver on black}
echo.
