call TARGET.sh.bat
find /c "toto" example.txt > nul
if %errorlevel% equ 1 goto LABEL_BEGIN_79
goto LABEL_CLOSE_79_END
rem index : 79 popped : 0 previous_index 0
:LABEL_BEGIN_79
 
        C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal}**** titi ****{silver on black}
        echo.
        if "%TARGET%" == "1" goto LABEL_BEGIN_244
goto LABEL_CLOSE_244_END
rem index : 244 popped : 0 previous_index 82
:LABEL_BEGIN_244

                C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal}**** %TARGET% = 1 ****{silver on black}
                echo.
:LABEL_CLOSE_244
:LABEL_CLOSE_244_END
rem index : 403 popped : 244 previous_index 247ligne 84 

:LABEL_CLOSE_79
rem index : 411 popped : 79 previous_index 406ligne 84 
 
     
    goto LABEL_CLOSE_430
rem index : 430 popped : 79 previous_index 414
:LABEL_CLOSE_79_END
:LABEL_BEGIN_430

        C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal}**** toto ****{silver on black}
        echo.
        if "%TARGET%" == "2" goto LABEL_BEGIN_594
goto LABEL_CLOSE_594_END
rem index : 594 popped : 79 previous_index 433
:LABEL_CLOSE_79_END
:LABEL_BEGIN_594

                C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal}**** %TARGET% = 2 ****{silver on black}
                echo.
:LABEL_CLOSE_594
:LABEL_CLOSE_594_END
rem index : 753 popped : 594 previous_index 597ligne 84 

:LABEL_CLOSE_430
rem index : 761 popped : 430 previous_index 756ligne 84 
