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
