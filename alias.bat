@echo off


if "%~1"=="" (
  dir /b "C:\bin\*.bat"
) else (
  if not "%~3"=="" (
    echo ˆø”‚ª‘½‚·‚¬‚Ü‚·B
  ) else if "%~2"=="" (
    cat "C:\bin\%1.bat"
  ) else (
    if exist "C:\bin\%1.bat" (
      echo Šù‚É“o˜^Ï‚İ‚Å‚·B
    ) else (
      echo @echo off>"C:\bin\%1.bat"
      echo rem alias command>>"C:\bin\%1.bat"
      echo %~2>>"C:\bin\%1.bat"
    )
  )
)
