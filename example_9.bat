set VAL=123
if "%VAL%" == "456" goto LABEL_BEGIN_32
 goto LABEL_CLOSE_32_END
:LABEL_BEGIN_32
 C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {red on white}**** FAILED ****{silver on black} && echo.
:LABEL_CLOSE_32

:LABEL_CLOSE_32_END
 
 if  "%VAL%" == "456" goto LABEL_CLOSE_152 
:LABEL_BEGIN_152
 C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal}**** PASSED ****{silver on black} && echo.
:LABEL_CLOSE_152

:LABEL_CLOSE_152_END

echo.
if "%VAL%" == "123" goto LABEL_BEGIN_294
 goto LABEL_CLOSE_294_END
:LABEL_BEGIN_294
 C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal}**** PASSED ****{silver on black} && echo.
:LABEL_CLOSE_294

:LABEL_CLOSE_294_END
 
 if  "%VAL%" == "123" goto LABEL_CLOSE_415 
:LABEL_BEGIN_415
 C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {red on white}**** FAILED ****{silver on black} && echo.
:LABEL_CLOSE_415

:LABEL_CLOSE_415_END


