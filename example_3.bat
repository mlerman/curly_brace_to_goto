set VAL=123
rem ok rentre dans le else seulement
if not "%VAL%" == "123" goto LABEL_BEGIN_73
 goto LABEL_CLOSE_73_END
:LABEL_BEGIN_73
 
        C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {red on white}**** FAILED ****{silver on black}
        echo.
:LABEL_CLOSE_73

:LABEL_CLOSE_73_END
 
    
 if  not "%VAL%" == "123" goto LABEL_CLOSE_216 
:LABEL_BEGIN_216

        C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal}**** PASSED ****{silver on black}
        echo.
:LABEL_CLOSE_216

:LABEL_CLOSE_216_END


echo.
if "%VAL%" == "123" goto LABEL_BEGIN_376
 goto LABEL_CLOSE_376_END
:LABEL_BEGIN_376
 
        C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal}**** PASSED ****{silver on black}
        echo.
:LABEL_CLOSE_376

:LABEL_CLOSE_376_END
 
    
 if  "%VAL%" == "123" goto LABEL_CLOSE_520 
:LABEL_BEGIN_520

        C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {red on white}**** FAILED ****{silver on black}
        echo.
:LABEL_CLOSE_520

:LABEL_CLOSE_520_END


