@echo off
color 2
chcp 65001 >nul
Title Atlas by nosleep.gov
echo Welcome to....
:: use any ascii art here..
echo  ▄▄▄     ▄▄▄█████▓ ██▓    ▄▄▄        ██████     ██▒   █▓    ██▓
echo ▒████▄   ▓  ██▒ ▓▒▓██▒   ▒████▄    ▒██    ▒    ▓██░   █▒   ▓██▒
echo ▒██  ▀█▄ ▒ ▓██░ ▒░▒██░   ▒██  ▀█▄  ░ ▓██▄       ▓██  █▒░   ▒██▒
echo ░██▄▄▄▄██░ ▓██▓ ░ ▒██░   ░██▄▄▄▄██   ▒   ██▒     ▒██ █░░   ░██░
echo  ▓█   ▓██▒ ▒██▒ ░ ░██████▒▓█   ▓██▒▒██████▒▒      ▒▀█░     ░██░
echo  ▒▒   ▓▒█░ ▒ ░░   ░ ▒░▓  ░▒▒   ▓▒█░▒ ▒▓▒ ▒ ░      ░ ▐░     ░▓  
echo   ▒   ▒▒ ░   ░    ░ ░ ▒  ░ ▒   ▒▒ ░░ ░▒  ░ ░      ░ ░░      ▒ ░
echo   ░   ▒    ░        ░ ░    ░   ▒   ░  ░  ░          ░░      ▒ ░
echo       ░  ░            ░  ░     ░  ░      ░           ░      ░  
echo                                                     ░          
set "p=Yes"
set /p p=Do you want to start searching?: 
if /i not "%p%"=="Yes" goto :FAIL
if /i "%p%"=="Yes" goto :SUCCEED

:FAIL
echo Starting end script
goto :END

:SUCCEED
cls
echo Correct password. The script will be run.
echo Lets begin...
goto :MAIN_MENU

setlocal enabledelayedexpansion

:MAIN_MENU
echo Hello, this is an educational OSINT PROJECT
echo 1. Username Search .WIP.
echo 2. Email Search .WIP.
echo 3. IP Address Search .WIP.
echo 4. Domain Search .WIP.
echo 5. Phone Number Search .WIP.
echo 6. Database Search .WORKING.
echo 7. Exit
set /p USER_INPUT=Enter your choice:

if "%USER_INPUT%"=="1" goto :USERNAME
if "%USER_INPUT%"=="2" goto :EMAIL
if "%USER_INPUT%"=="3" goto :ipsearch
if "%USER_INPUT%"=="4" goto :Domain
if "%USER_INPUT%"=="5" goto :phonenumber
if "%USER_INPUT%"=="6" goto :databasesearch

:ipsearch
echo IP Search
echo If you wish to go back to the main menu, enter goback, if not enter "no"
set /p gobackquestion=Enter your choice:
if /i not "%gobackquestion%"=="goback" goto :END
if /i "%gobackquestion%"=="goback" goto :MAIN_MENU

:Email
echo Email search
echo If you wish to go back to the main menu, enter goback, if not enter "no"
set /p gobackquestion=Enter your choice:
if /i not "%gobackquestion%"=="goback" goto :END
if /i "%gobackquestion%"=="goback" goto :MAIN_MENU

:USERNAME
echo Username search
echo If you wish to go back to the main menu, enter goback, if not enter "no"
set /p gobackquestion=Enter your choice:
if /i not "%gobackquestion%"=="goback" goto :END
if /i "%gobackquestion%"=="goback" goto :MAIN_MENU

:domain
echo domain search
echo If you wish to go back to the main menu, enter goback, if not enter "no"
set /p gobackquestion=Enter your choice:
if /i not "%gobackquestion%"=="goback" goto :END
if /i "%gobackquestion%"=="goback" goto :MAIN_MENU

:phonenumber
echo Number search
echo If you wish to go back to the main menu, enter goback, if not enter "no"
set /p gobackquestion=Enter your choice:
if /i not "%gobackquestion%"=="goback" goto :END
if /i "%gobackquestion%"=="goback" goto :MAIN_MENU

:databasesearch
cls
echo Use database.txt
set /p searchText=Enter the text you want to search for: 
set file="C:\Users\user\path\to\your\database\textfile\database.txt"

:: Check if file exists
if not exist "%file%" (
    echo File does not exist.
    exit /b
)

:: Search for the text
echo Searching for "%searchText%" in "%file%"...
for /f "delims=" %%a in ('findstr /i "%searchText%" "%file%"') do (
    echo %%a
)
pause
echo click anything to continue

:END
echo Script finished.
cls
goto :MAIN_MENU
