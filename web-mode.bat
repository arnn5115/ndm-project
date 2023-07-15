::web-mode config
@echo off

if not "%~1"=="" (
    if "%1"=="main" (
        goto :web-main
    ) else if "%1"=="side" (
        goto :web-side
    ) else if "%1"=="school" (
        goto :web-School
    )
)   
set /p web-sub=Main, Side, or School Project? [main/side/school] 
if /i "%web-sub%"=="main" (
    set "web-sub="
    goto :web-main
) else if /i "%web-sub%"=="side" (
    set "web-sub="
    goto :web-side
) else if /i "%web-sub%"=="school" (
    set "web-sub="
    goto :web-School
) else (
    set "web-sub="
    goto :synt-error
)

::Web Main
:web-main
    echo hello
goto :end

::Web Side
:web-side

goto :end

::Web School
:web-school

goto :end

::Error Handling
:synt-error
    echo Syntax Error!
    echo run "ndm help" for more information
goto :end

::End of Script, Need to be on the bottom
:end
pause