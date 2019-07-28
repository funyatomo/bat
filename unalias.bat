@echo off


if "%~1"=="" (
  findstr /M "alias command" "C:\bin\*.bat" | find /v "alias.bat"
) else (
  if not "%~2"=="" (
    echo ˆø”‚ª‘½‚·‚¬‚Ü‚·B
  ) else (
    if not exist "C:\bin\%~1.bat" (
      echo “o˜^‚³‚ê‚Ä‚¢‚Ü‚¹‚ñB
    ) else (
      del /p "C:\bin\%~1.bat"
    )
  )
)
