@echo off


if "%~1"=="" (
  dir /b "%USERPROFILE%\bin\*.bat"
) else (
  if not "%~3"=="" (
    echo 引数が多すぎます。
  ) else if "%~2"=="" (
    cat "%USERPROFILE%\bin\%~1.bat"
  ) else (
    if exist "%USERPROFILE%\bin\%~1.bat" (
      echo 既に登録済みです。
    ) else (
      echo @echo off>"%USERPROFILE%\bin\%~1.bat"
      echo rem alias command>>"%USERPROFILE%\bin\%~1.bat"
      echo %~2>>"%USERPROFILE%\bin\%~1.bat"
    )
  )
)
