@echo off
:menu
cls
echo ==============================================
echo MULTI-TOOL BATCH SCRIPT
echo ==============================================
echo Select a browser:
echo 1. Google Chrome
echo 2. Microsoft Edge
echo 3. Opera
echo 4. Mozilla Firefox
echo 5. Exit
echo ==============================================
set /p browser="Enter the number of the browser: "

if "%browser%"=="1" (
    set browser_path="C:\Program Files\Google\Chrome\Application\chrome.exe"
)
if "%browser%"=="2" (
    set browser_path="C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
)
if "%browser%"=="3" (
    set browser_path="C:\Program Files\Opera\launcher.exe"
)
if "%browser%"=="4" (
    set browser_path="C:\Program Files\Mozilla Firefox\firefox.exe"
)
if "%browser%"=="5" exit

if not exist %browser_path% (
    echo Browser not found. Please check the paths and try again.
    pause
    exit
)

:apps
cls
echo ==============================================
echo Select an app to open:
echo 1. YouTube
echo 2. Twitter
echo 3. Discord
echo 4. Spotify
echo 5. Netflix
echo 6. Snapchat
echo 7. Back to Browser Menu
echo 8. Exit
echo ==============================================
set /p app="Enter the number of the app: "

if "%app%"=="1" (
    start %browser_path% "https://www.youtube.com"
)
if "%app%"=="2" (
    start %browser_path% "https://www.twitter.com"
)
if "%app%"=="3" (
    start %browser_path% "https://www.discord.com"
)
if "%app%"=="4" (
    start %browser_path% "https://www.spotify.com"
)
if "%app%"=="5" (
    start %browser_path% "https://www.netflix.com"
)
if "%app%"=="6" (
    start %browser_path% "https://www.snapchat.com"
)
if "%app%"=="7" goto menu
if "%app%"=="8" exit

:: Loop back to apps menu if invalid input
goto apps
