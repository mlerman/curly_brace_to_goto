REM MIT License

REM Copyright (c) 2025 Mikhael Lerman checkthisresume.com

REM Permission is hereby granted, free of charge, to any person obtaining a copy
REM of this software and associated documentation files (the "Software"), to deal
REM in the Software without restriction, including without limitation the rights
REM to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
REM copies of the Software, and to permit persons to whom the Software is
REM furnished to do so, subject to the following conditions:

REM The above copyright notice and this permission notice shall be included in all
REM copies or substantial portions of the Software.

REM THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
REM IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
REM FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
REM AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
REM LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
REM OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
REM SOFTWARE.

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
if "1" == "1" 
{{{
    echo on passe dans 1.
    if "%VAL%" == "456_1" {{{ 
    echo on ne passe pas dans 1.1
    C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {red on white}**** FAILED line 5 PASS1.1 ****{silver on black}
    echo.
    set PASS1.1=yes
    }}} else {{{
    echo on passe dans 1.2
    C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal}**** PASSED line 8 PASS1.2 show ****{silver on black}
    echo.
    set PASS1.2=yes
    }}}
    echo.
    echo on est entre 1.2 et 1.3
    if "%VAL%" == "123" {{{ 
    echo on passe dans 1.3
    C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal}**** PASSED line 13 PASS1.3 show ****{silver on black}
    echo.
    set PASS1.3=yes
    }}} else {{{
    echo on ne passe pas par 1.4
    C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {red on white}**** FAILED line 16 PASS1.4 ****{silver on black}
    echo.
    set PASS1.4=yes
    }}}
}}}
else
{{{
    echo on ne passe pas en 2.
    if "%VAL%" == "456_2" {{{ 
    C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {red on white}**** FAILED line 23 PASS2.1 ****{silver on black}
    echo.
    set PASS2.1=yes
    }}} else {{{
    C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal}**** PASSED line 26 PASS2.2 ****{silver on black}
    echo.
    set PASS2.2=yes
    }}}
    echo.
    if "%VAL%" == "123" {{{ 
    C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal}**** PASSED line 31 PASS2.3 ****{silver on black}
    echo.
    set PASS2.3=yes
    }}} else {{{
    C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {red on white}**** FAILED line 34 PASS2.4 ****{silver on black}
    echo.
    set PASS2.4=yes
    }}}
}}}
echo on est entre 2. et 3.
if "1" NEQ "1"
{{{
    echo on ne passe pas en 3.
    if "%VAL%" == "456_3" {{{ 
    C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {red on white}**** FAILED line 42 PASS3.1 ****{silver on black}
    echo.
    set PASS3.1=yes
    }}} else {{{
    C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal}**** PASSED line 45 PASS3.2 ****{silver on black}
    echo.
    set PASS3.2=yes
    }}}
    echo.
    if "%VAL%" == "123" {{{ 
    C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal}**** PASSED line 50 PASS3.3 ****{silver on black}
    echo.
    set PASS3.3=yes
    }}} else {{{
    C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {red on white}**** FAILED line 53 PASS3.4 ****{silver on black}
    echo.
    set PASS3.4=yes
    }}}
}}}
else
{{{
    echo on passe en 4. NE RENTRE PAS ICI 
    if "%VAL%" == "456_4" {{{ 
    echo on ne passe pas en 4.1
    C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {red on white}**** FAILED line 60 PASS4.1 ****{silver on black}
    echo.
    set PASS4.1=yes
    }}} else {{{
    echo on passe 4.2
    C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal}**** PASSED line 63 PASS4.2 show ****{silver on black}
    echo.
    set PASS4.2=yes
    }}}
    echo.
    if "%VAL%" == "123" {{{ 
    echo on passe en 4.3
    C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal}**** PASSED line 68 PASS4.3 show ****{silver on black}
    echo.
    set PASS4.3=yes
    }}} else {{{
    echo on ne passe pas en 4.4
    C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {red on white}**** FAILED line 71 PASS4.4 ****{silver on black}
    echo.
    set PASS4.4=yes
    }}}
}}}


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
