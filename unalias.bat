@echo off


if "%~1"=="" (
  findstr /M "alias command" "%USERPROFILE%\bin\*.bat" | find /v "alias.bat"
) else (
  if not "%~2"=="" (
    echo �������������܂��B
  ) else (
    if not exist "%USERPROFILE%\bin\%~1.bat" (
      echo �o�^����Ă��܂���B
    ) else (
      del /p "%USERPROFILE%\bin\%~1.bat"
    )
  )
)
