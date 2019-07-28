@echo off
rem alias command

if "%~1"=="" (
  echo 不正な引数です。
) else (
  if not "%~2"=="" (
    echo 引数が多すぎます。
  ) else (
    if not exist "%~1" (
      echo %~1 is new file
      type nul > %~1
    ) else (
      rem 標準出力をnulにリダイレクト
      copy %~1+ > nul
    )
  )
)
