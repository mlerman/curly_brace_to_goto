set VAL=123
set PASS1.1=no
set PASS1.2=no
set PASS1.3=no
set PASS1.4=no
set PASS2.1=no
set PASS2.2=no
set PASS2.3=no
set PASS2.4=no
set PASS3.1=no
set PASS3.2=no
set PASS3.3=no
set PASS3.4=no
set PASS4.1=no
set PASS4.2=no
set PASS4.3=no
set PASS4.4=no
echo on est avant 1.
if "1" == "1" goto LABEL_BEGIN_287
 goto LABEL_CLOSE_287_END
:LABEL_BEGIN_287

    echo on passe dans 1.
    if "%VAL%" == "456_1" goto LABEL_BEGIN_343
 goto LABEL_CLOSE_343_END
:LABEL_BEGIN_343
 
    echo on ne passe pas dans 1.1
    C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {red on white}**** FAILED line 5 PASS1.1 ****{silver on black}
    echo.
    set PASS1.1=yes
:LABEL_CLOSE_343

:LABEL_CLOSE_343_END
 
 if  "%VAL%" == "456_1" goto LABEL_CLOSE_542 
:LABEL_BEGIN_542

    echo on passe dans 1.2
    C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal}**** PASSED line 8 PASS1.2 show ****{silver on black}
    echo.
    set PASS1.2=yes
:LABEL_CLOSE_542

:LABEL_CLOSE_542_END

    echo.
    echo on est entre 1.2 et 1.3
    if "%VAL%" == "123" goto LABEL_BEGIN_801
 goto LABEL_CLOSE_801_END
:LABEL_BEGIN_801
 
    echo on passe dans 1.3
    C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal}**** PASSED line 13 PASS1.3 show ****{silver on black}
    echo.
    set PASS1.3=yes
:LABEL_CLOSE_801

:LABEL_CLOSE_801_END
 
 if  "%VAL%" == "123" goto LABEL_CLOSE_1000 
:LABEL_BEGIN_1000

    echo on ne passe pas par 1.4
    C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {red on white}**** FAILED line 16 PASS1.4 ****{silver on black}
    echo.
    set PASS1.4=yes
:LABEL_CLOSE_1000

:LABEL_CLOSE_1000_END

:LABEL_CLOSE_287

:LABEL_CLOSE_287_END


 if  "1" == "1" goto LABEL_CLOSE_1202 
:LABEL_BEGIN_1202

    echo on ne passe pas en 2.
    if "%VAL%" == "456_2" goto LABEL_BEGIN_1263
 goto LABEL_CLOSE_1263_END
:LABEL_BEGIN_1263
 
    C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {red on white}**** FAILED line 23 PASS2.1 ****{silver on black}
    echo.
    set PASS2.1=yes
:LABEL_CLOSE_1263

:LABEL_CLOSE_1263_END
 
 if  "%VAL%" == "456_2" goto LABEL_CLOSE_1429 
:LABEL_BEGIN_1429

    C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal}**** PASSED line 26 PASS2.2 ****{silver on black}
    echo.
    set PASS2.2=yes
:LABEL_CLOSE_1429

:LABEL_CLOSE_1429_END

    echo.
    if "%VAL%" == "123" goto LABEL_BEGIN_1624
 goto LABEL_CLOSE_1624_END
:LABEL_BEGIN_1624
 
    C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal}**** PASSED line 31 PASS2.3 ****{silver on black}
    echo.
    set PASS2.3=yes
:LABEL_CLOSE_1624

:LABEL_CLOSE_1624_END
 
 if  "%VAL%" == "123" goto LABEL_CLOSE_1791 
:LABEL_BEGIN_1791

    C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {red on white}**** FAILED line 34 PASS2.4 ****{silver on black}
    echo.
    set PASS2.4=yes
:LABEL_CLOSE_1791

:LABEL_CLOSE_1791_END

:LABEL_CLOSE_1202

:LABEL_CLOSE_1202_END

echo on est entre 2. et 3.
if "1" NEQ "1" goto LABEL_BEGIN_1997
 goto LABEL_CLOSE_1997_END
:LABEL_BEGIN_1997

    echo on ne passe pas en 3.
    if "%VAL%" == "456_3" goto LABEL_BEGIN_2058
 goto LABEL_CLOSE_2058_END
:LABEL_BEGIN_2058
 
    C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {red on white}**** FAILED line 42 PASS3.1 ****{silver on black}
    echo.
    set PASS3.1=yes
:LABEL_CLOSE_2058

:LABEL_CLOSE_2058_END
 
 if  "%VAL%" == "456_3" goto LABEL_CLOSE_2224 
:LABEL_BEGIN_2224

    C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal}**** PASSED line 45 PASS3.2 ****{silver on black}
    echo.
    set PASS3.2=yes
:LABEL_CLOSE_2224

:LABEL_CLOSE_2224_END

    echo.
    if "%VAL%" == "123" goto LABEL_BEGIN_2419
 goto LABEL_CLOSE_2419_END
:LABEL_BEGIN_2419
 
    C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal}**** PASSED line 50 PASS3.3 ****{silver on black}
    echo.
    set PASS3.3=yes
:LABEL_CLOSE_2419

:LABEL_CLOSE_2419_END
 
 if  "%VAL%" == "123" goto LABEL_CLOSE_2586 
:LABEL_BEGIN_2586

    C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {red on white}**** FAILED line 53 PASS3.4 ****{silver on black}
    echo.
    set PASS3.4=yes
:LABEL_CLOSE_2586

:LABEL_CLOSE_2586_END

:LABEL_CLOSE_1997

:LABEL_CLOSE_1997_END


 if  "1" NEQ "1" goto LABEL_CLOSE_2755 
:LABEL_BEGIN_2755

    echo on devrait passer en 4. NE RENTRE PAS ICI 
    if "%VAL%" == "456_4" goto LABEL_BEGIN_2837
 goto LABEL_CLOSE_2837_END
:LABEL_BEGIN_2837
 
    echo on ne passe pas en 4.1
    C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {red on white}**** FAILED line 60 PASS4.1 ****{silver on black}
    echo.
    set PASS4.1=yes
:LABEL_CLOSE_2837

:LABEL_CLOSE_2837_END
 
 if  "%VAL%" == "456_4" goto LABEL_CLOSE_3035 
:LABEL_BEGIN_3035

    echo on devrait passer 4.2
    C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal}**** PASSED line 63 PASS4.2 show ****{silver on black}
    echo.
    set PASS4.2=yes
:LABEL_CLOSE_3035

:LABEL_CLOSE_3035_END

    echo.
    if "%VAL%" == "123" goto LABEL_BEGIN_3266
 goto LABEL_CLOSE_3266_END
:LABEL_BEGIN_3266
 
    echo on devrait passer en 4.3
    C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal}**** PASSED line 68 PASS4.3 show ****{silver on black}
    echo.
    set PASS4.3=yes
:LABEL_CLOSE_3266

:LABEL_CLOSE_3266_END
 
 if  "%VAL%" == "123" goto LABEL_CLOSE_3472 
:LABEL_BEGIN_3472

    echo on ne passe pas en 4.4
    C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {red on white}**** FAILED line 71 PASS4.4 ****{silver on black}
    echo.
    set PASS4.4=yes
:LABEL_CLOSE_3472

:LABEL_CLOSE_3472_END

:LABEL_CLOSE_2755

:LABEL_CLOSE_2755_END



echo PASS1.1 %PASS1.1% vs no
echo PASS1.2 %PASS1.2% vs yes
echo PASS1.3 %PASS1.3% vs yes
echo PASS1.4 %PASS1.4% vs no
echo PASS2.1 %PASS2.1% vs no
echo PASS2.2 %PASS2.2% vs no
echo PASS2.3 %PASS2.3% vs no
echo PASS2.4 %PASS2.4% vs no
echo PASS3.1 %PASS3.1% vs no
echo PASS3.2 %PASS3.2% vs no
echo PASS3.3 %PASS3.3% vs no
echo PASS3.4 %PASS3.4% vs no
echo PASS4.1 %PASS4.1% vs no
echo PASS4.2 %PASS4.2% vs yes
echo PASS4.3 %PASS4.3% vs yes
echo PASS4.4 %PASS4.4% vs no