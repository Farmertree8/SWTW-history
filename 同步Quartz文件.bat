@echo off
setlocal

set /p COMMIT_MSG=Input commit MSG (eg. remove bad grammar):

echo Sync quartz...
npx quartz sync

echo Changes taking effects...
git add .

echo Sending request to Git...
git commit -m "%COMMIT_MSG%"

echo Pushing changes...
git push

echo.
echo Done!
pause

