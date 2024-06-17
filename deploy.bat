@echo off
REM 当发生错误时中止脚本
setlocal EnableDelayedExpansion
set ERRORS=0

REM 构建
npm run build || set /a ERRORS+=1

REM 进入构建文件夹
cd dist || set /a ERRORS+=1

echo judangbaihuo.cn > CNAME

git init || set /a ERRORS+=1
git add -A || set /a ERRORS+=1
git commit -m "deploy" || set /a ERRORS+=1

git push -f git@github.com:Ironbasin/text.git master:gh-pages || set /a ERRORS+=1

cd .. || set /a ERRORS+=1

if !ERRORS! EQU 0 (
  echo 部署成功
) else (
  echo 部署失败
)
