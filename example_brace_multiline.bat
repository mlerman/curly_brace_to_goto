set VAL=123
rem ok rentre dans le else seulement
if not "%VAL%" == "123" 
    {{{ 
        C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {red on white}**** FAILED ****{silver on black}
        echo.
    }}} 
    else 
    {{{
        C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal}**** PASSED ****{silver on black}
        echo.
    }}}

echo.
if "%VAL%" == "123" 
    {{{ 
        C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal}**** PASSED ****{silver on black}
        echo.
    }}} 
    else 
    {{{
        C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {red on white}**** FAILED ****{silver on black}
        echo.
    }}}

