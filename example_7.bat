set VAL=123
if "%VAL%" == "456" goto LABEL_BEGIN_32
 goto LABEL_CLOSE_32_END
:LABEL_BEGIN_32
 
C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {red on white}**** FAILED ****{silver on black}
echo.
:LABEL_CLOSE_32

:LABEL_CLOSE_32_END
 

 if  "%VAL%" == "456" goto LABEL_CLOSE_151 
:LABEL_BEGIN_151

C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal}**** PASSED ****{silver on black}
echo.
:LABEL_CLOSE_151

:LABEL_CLOSE_151_END

