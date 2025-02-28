set VAL=123
if "%VAL%" == "456" goto LABEL_BEGIN_32
 goto LABEL_CLOSE_32_END
:LABEL_BEGIN_32
 
echo on pass en 1.1
C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {red on white}**** FAILED 1.1 ****{silver on black}
echo.
:LABEL_CLOSE_32

:LABEL_CLOSE_32_END
 
 if  "%VAL%" == "456" goto LABEL_CLOSE_174 
:LABEL_BEGIN_174

echo on ne pass pas en 1.2
C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal}**** PASSED 1.2 show ****{silver on black}
echo.
:LABEL_CLOSE_174

:LABEL_CLOSE_174_END

echo.
echo on est entre 1. et 2.
if "%VAL%" == "123" goto LABEL_BEGIN_376
 goto LABEL_CLOSE_376_END
:LABEL_BEGIN_376
 
echo on pass en 2.1
C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal}**** PASSED 2.1 show ****{silver on black}
echo.
:LABEL_CLOSE_376

:LABEL_CLOSE_376_END
 
 if  "%VAL%" == "123" goto LABEL_CLOSE_524 
:LABEL_BEGIN_524

echo on ne pass pas en 2.2
C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {red on white}**** FAILED 2.2 ****{silver on black}
echo.
:LABEL_CLOSE_524

:LABEL_CLOSE_524_END


