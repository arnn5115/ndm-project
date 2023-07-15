::N's Dev Mode (NDM) Source Code
::Just for Learning && Fun

::General Syntax:
::ndm {help | web | js | cpp | ...comingsoon(py,java,etc)} [<arguments>]

::Note:
::Make sure you already set ENV named "CODE" with your development path as the value

@echo off

::Check Langguage
if /i "%1"=="help" (
    goto :help
) else if /i "%1"=="web" (
    goto :web-mode
) else if /i "%1"=="js" (
    goto :js-mode
) else if /i "%1"=="cpp" (
    goto :cpp-mode
) 
goto :synt-error


::Help & Docs
:help
    echo No Help Sory
goto :end

::Web Mode
:web-mode
    web-mode %2
goto :end

::Javascript Mode
:js-mode
    echo js
goto :end

::C++ Mode
:cpp-mode
    echo cpp
goto :end

::Error Handling
:synt-error
    echo Syntax Error!
    echo run "ndm help" for more information
goto :end

::End of Script, Need to be on the bottom
:end
pause