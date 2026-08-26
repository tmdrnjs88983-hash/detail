@echo off
chcp 65001 >nul
title 상세공통 반영 (이미지 업로드 + 링크목록 갱신)
set "PATH=%PATH%;C:\Program Files\Git\bin;C:\Program Files\GitHub CLI"
set "PY=C:\Users\pc\AppData\Local\Programs\Python\Python312\python.exe"
echo ================================================
echo   상세공통 반영 - 데스크톱 이미지를 인터넷에 올립니다
echo ================================================
echo.
if not exist "%PY%" (
  echo [오류] 파이썬을 찾을 수 없습니다: %PY%
  echo   설치 경로가 다르면 알려주세요.
  pause
  exit /b 1
)
"%PY%" -X utf8 -u "C:\Users\pc\Desktop\클로드코드\tools\detail_common_sync.py"
echo.
echo ================================================
echo   끝! 링크목록.txt 를 열어 원하는 줄을 복사하세요.
echo   (1~2분 뒤 상세페이지에 반영됩니다)
echo ================================================
pause
