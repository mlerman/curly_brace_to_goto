set VAL=123
if "%VAL%" == "456" {{{ 
echo on ne passe pas en 1.1
C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {red on white}**** FAILED 1.1 ****{silver on black}
echo.
}}} else {{{
echo on passe en 1.2
C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal}**** PASSED 1.2 show ****{silver on black}
echo.
}}}
echo.
echo on est entre 1. et 2.
if "%VAL%" == "123" {{{ 
echo on pass en 2.1
C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal}**** PASSED 2.1 show ****{silver on black}
echo.
}}} else {{{
echo on ne pass pas en 2.2
C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {red on white}**** FAILED 2.2 ****{silver on black}
echo.
}}}

