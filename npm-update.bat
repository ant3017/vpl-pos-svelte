cd %~dp0

git pull
call npm update -s
git add .
git commit -m "npm update
git push
rem pause "press any key to continue