if "456" == "456" goto LABEL_BEGIN_18
 goto LABEL_CLOSE_18_END
:LABEL_BEGIN_18
 
    echo ok if 456
    if "456" == "123" goto LABEL_BEGIN_64
 goto LABEL_CLOSE_64_END
:LABEL_BEGIN_64
 
        echo nothing
:LABEL_CLOSE_64

:LABEL_CLOSE_64_END
 
 if  "456" == "123" goto LABEL_CLOSE_107 
:LABEL_BEGIN_107

        echo ok else 456
        if "789" == "789" goto LABEL_BEGIN_162
 goto LABEL_CLOSE_162_END
:LABEL_BEGIN_162
 
            echo ok if 789 no else
            if "ABC" == "DEF" goto LABEL_BEGIN_232
 goto LABEL_CLOSE_232_END
:LABEL_BEGIN_232

                echo nothing
:LABEL_CLOSE_232

:LABEL_CLOSE_232_END

 if  "ABC" == "DEF" goto LABEL_CLOSE_285 
:LABEL_BEGIN_285

                echo ok else ABC
                if "DEF" == "DEF" goto LABEL_BEGIN_356
 goto LABEL_CLOSE_356_END
:LABEL_BEGIN_356

                    C:\UniServer\www\doc\files\ThisPC\cecho\cecho.exe {white on teal}**** PASSED line 14 ****{silver on black}
                    echo.
:LABEL_CLOSE_356

:LABEL_CLOSE_356_END

:LABEL_CLOSE_285

:LABEL_CLOSE_285_END

:LABEL_CLOSE_162

:LABEL_CLOSE_162_END

:LABEL_CLOSE_107

:LABEL_CLOSE_107_END

:LABEL_CLOSE_18

:LABEL_CLOSE_18_END
 
 if  "456" == "456" goto LABEL_CLOSE_578 
:LABEL_BEGIN_578

echo nothing
:LABEL_CLOSE_578

:LABEL_CLOSE_578_END





