@echo off


if "%~1"=="" (
  dir /b "%USERPROFILE%\bin\*.bat"
) else (
  if not "%~3"=="" (
    echo �������������܂��B
  ) else if "%~2"=="" (
    cat "%USERPROFILE%\bin\%~1.bat"
  ) else (
    if exist "%USERPROFILE%\bin\%~1.bat" (
      echo ���ɓo�^�ς݂ł��B
    ) else (
      echo @echo off>"%USERPROFILE%\bin\%~1.bat"
      echo rem alias command>>"%USERPROFILE%\bin\%~1.bat"
      echo %~2>>"%USERPROFILE%\bin\%~1.bat"
    )
  )
)
