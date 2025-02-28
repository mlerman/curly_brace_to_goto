find /c "toto" example.txt > nul
if %errorlevel% equ 1 goto LABEL_BEGIN_60
 goto LABEL_CLOSE_60_END
:LABEL_BEGIN_60
 
        C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal}**** titi ****{silver on black}
        echo.
:LABEL_CLOSE_60

:LABEL_CLOSE_60_END
 
     
     goto LABEL_CLOSE_207
:LABEL_CLOSE_60_END
:LABEL_BEGIN_207

        C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal}**** toto ****{silver on black}
        echo.
:LABEL_CLOSE_207

:LABEL_CLOSE_207_END

