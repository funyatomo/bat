@echo off


if "%~1"=="" (
  dir /b "C:\bin\*.bat"
) else (
  if not "%~3"=="" (
    echo 引数が多すぎます。
  ) else if "%~2"=="" (
    cat "C:\bin\%1.bat"
  ) else (
    if exist "C:\bin\%1.bat" (
      echo 既に登録済みです。
    ) else (
      echo @echo off>"C:\bin\%1.bat"
      echo rem alias command>>"C:\bin\%1.bat"
      echo %~2>>"C:\bin\%1.bat"
    )
  )
)
