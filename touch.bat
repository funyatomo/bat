@echo off
rem alias command

if "%~1"=="" (
  echo �s���Ȉ����ł��B
) else (
  if not "%~2"=="" (
    echo �������������܂��B
  ) else (
    if not exist "%~1" (
      echo %~1 is new file
      type nul > %~1
    ) else (
      rem �W���o�͂�nul�Ƀ��_�C���N�g
      copy %~1+ > nul
    )
  )
)
