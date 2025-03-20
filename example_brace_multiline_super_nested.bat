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
set VAL2=456
set VAL_ELSE=789
set OK_ELSE=0
set OK=0
set OK_AFTER=0

if "0" == "0"
{{{
    if "1" == "1"
    {{{
        if "2" == "2"
        {{{
            if "3" == "3"
            {{{
                if "4" == "4"
                {{{
                    if "5" == "5"
                    {{{
                        if "6" == "6"
                        {{{
                            if "7" == "7"
                            {{{
                                if "8" == "8"
                                {{{
                                    if "8" == "8"
                                    {{{

                                        if "%VAL%" == "123" 
                                            {{{ 
                                                set OK=1
                                            if "%VAL2%" == "456" 
                                                {{{ 
                                                    set OK=2
                                                }}} 
                                            }}} 
										if "%VAL_ELSE%" == "NOT_789"
											{{{
												echo "*************** Failed ELSE ******************"
											}}}
										else 
											{{{
												set OK_ELSE=1
											}}}
                                    }}}
                                }}}
                            }}}
                        }}}
                    }}}
                }}}
            }}}
        }}}
    }}}    
}}}  

if "10" == "10"
{{{
	set OK_AFTER=1
}}}
  
    
if "%OK%" == "2" C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal} PASSED {silver on black}
echo.
if "%OK%" == "1" C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {red on white} FAILED {silver on black}
echo.
if "%OK%" == "0" C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {red on white} FAILED {silver on black}
echo.

if "%OK_ELSE%" == "0" C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {red on white} ELSE FAILED {silver on black}
echo.
if "%OK_ELSE%" == "1" C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal} ELSE PASSED {silver on black}
echo.

if "%OK_AFTER%" == "0" C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {red on white} AFTER FAILED {silver on black}
echo.
if "%OK_AFTER%" == "1" C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal} AFTER PASSED {silver on black}
echo.
