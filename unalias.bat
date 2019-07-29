@echo off


if "%~1"=="" (
  findstr /M "alias command" "%USERPROFILE%\bin\*.bat" | find /v "alias.bat"
) else (
  if not "%~2"=="" (
    echo 引数が多すぎます。
  ) else (
    if not exist "%USERPROFILE%\bin\%~1.bat" (
      echo 登録されていません。
    ) else (
      del /p "%USERPROFILE%\bin\%~1.bat"
    )
  )
)
