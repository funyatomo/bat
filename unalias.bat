@echo off


if "%~1"=="" (
  findstr /M "alias command" "C:\bin\*.bat" | find /v "alias.bat"
) else (
  if not "%~2"=="" (
    echo �������������܂��B
  ) else (
    if not exist "C:\bin\%~1.bat" (
      echo �o�^����Ă��܂���B
    ) else (
      del /p "C:\bin\%~1.bat"
    )
  )
)
