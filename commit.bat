if "%~1"=="" (
	set /p msg="Enter message: "
) else (
	set msg=%1
)
echo Committing %msg%
git pull
git add .
git commit -m %msg%
git push