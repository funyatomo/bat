@echo off


if "%~1"=="" (
  findstr /M "alias command" "C:\bin\*.bat" | find /v "alias.bat"
) else (
  if not "%~2"=="" (
    echo 引数が多すぎます。
  ) else (
    if not exist "C:\bin\%~1.bat" (
      echo 登録されていません。
    ) else (
      del /p "C:\bin\%~1.bat"
    )
  )
)
