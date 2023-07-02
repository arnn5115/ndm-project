::N's Dev Mode (NDM) Source Code
::Just for Learning && Fun

::General Syntax:
::ndm {help | web | js | cpp | ...comingsoon(py,java,etc)} [<arguments>]

@echo off

::Check Langguage
:lang
if "%1"=="help" (
    goto :help
) else if "%1"=="web" (
    goto :web-mode
) else if "%1"=="js" (
    goto :js-mode
) else if "%1"=="cpp" (
    goto :cpp-mode
) else (
    goto :synt-error
)

::Help & Docs
:help
    echo No Help Sory
goto :end

::Web Mode
:web-mode
    echo web
goto :end

::Javascript Mode
:js-mode
    echo js
goto :end

::C++ Mode
:cpp-mode
    echo cpp
goto :end

:synt-error
    echo Syntax Error!
    echo run "ndm help" for more information
goto :end

::End of Script, Need to be on the bottom
:end