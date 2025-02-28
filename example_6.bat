set VAL=123
set VAL2=456
set VAL_ELSE=789
set OK_ELSE=0
set OK=0
set OK_AFTER=0

if "0" == "0" goto LABEL_BEGIN_95
 goto LABEL_CLOSE_95_END
:LABEL_BEGIN_95

    if "1" == "1" goto LABEL_BEGIN_117
 goto LABEL_CLOSE_117_END
:LABEL_BEGIN_117

        if "2" == "2" goto LABEL_BEGIN_143
 goto LABEL_CLOSE_143_END
:LABEL_BEGIN_143

            if "3" == "3" goto LABEL_BEGIN_173
 goto LABEL_CLOSE_173_END
:LABEL_BEGIN_173

                if "4" == "4" goto LABEL_BEGIN_207
 goto LABEL_CLOSE_207_END
:LABEL_BEGIN_207

                    if "5" == "5" goto LABEL_BEGIN_245
 goto LABEL_CLOSE_245_END
:LABEL_BEGIN_245

                        if "6" == "6" goto LABEL_BEGIN_287
 goto LABEL_CLOSE_287_END
:LABEL_BEGIN_287

                            if "7" == "7" goto LABEL_BEGIN_333
 goto LABEL_CLOSE_333_END
:LABEL_BEGIN_333

                                if "8" == "8" goto LABEL_BEGIN_383
 goto LABEL_CLOSE_383_END
:LABEL_BEGIN_383

                                    if "8" == "8" goto LABEL_BEGIN_437
 goto LABEL_CLOSE_437_END
:LABEL_BEGIN_437


                                        if "%VAL%" == "123" goto LABEL_BEGIN_502
 goto LABEL_CLOSE_502_END
:LABEL_BEGIN_502
 
                                                set OK=1
                                            if "%VAL2%" == "456" goto LABEL_BEGIN_629
 goto LABEL_CLOSE_629_END
:LABEL_BEGIN_629
 
                                                    set OK=2
:LABEL_CLOSE_629

:LABEL_CLOSE_629_END

:LABEL_CLOSE_502

:LABEL_CLOSE_502_END
 
										if "%VAL_ELSE%" == "NOT_789" goto LABEL_BEGIN_836
 goto LABEL_CLOSE_836_END
:LABEL_BEGIN_836

												echo "*************** Failed ELSE ******************"
:LABEL_CLOSE_836

:LABEL_CLOSE_836_END

										
 if  "%VAL_ELSE%" == "NOT_789" goto LABEL_CLOSE_936 
:LABEL_BEGIN_936

												set OK_ELSE=1
:LABEL_CLOSE_936

:LABEL_CLOSE_936_END

:LABEL_CLOSE_437

:LABEL_CLOSE_437_END

:LABEL_CLOSE_383

:LABEL_CLOSE_383_END

:LABEL_CLOSE_333

:LABEL_CLOSE_333_END

:LABEL_CLOSE_287

:LABEL_CLOSE_287_END

:LABEL_CLOSE_245

:LABEL_CLOSE_245_END

:LABEL_CLOSE_207

:LABEL_CLOSE_207_END

:LABEL_CLOSE_173

:LABEL_CLOSE_173_END

:LABEL_CLOSE_143

:LABEL_CLOSE_143_END

:LABEL_CLOSE_117

:LABEL_CLOSE_117_END

:LABEL_CLOSE_95

:LABEL_CLOSE_95_END
  

if "10" == "10" goto LABEL_BEGIN_1224
 goto LABEL_CLOSE_1224_END
:LABEL_BEGIN_1224

	set OK_AFTER=1
:LABEL_CLOSE_1224

:LABEL_CLOSE_1224_END

  
    
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
