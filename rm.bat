@echo off
rem alias command

if "%~1"=="" (
  echo  不正な引数です。
) else (
  del %~1
)
