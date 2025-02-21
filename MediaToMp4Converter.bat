@echo off
setlocal enabledelayedexpansion

REM Enable UTF-8 encoding for special character display
chcp 65001 >nul

REM Check if ffmpeg is accessible
ffmpeg -version >nul 2>&1
if errorlevel 1 (
    echo FFmpeg is not installed or not in the PATH.
    pause
    exit /b 1
)

REM Ask the user for the folder path
set /p folder="Enter the folder path containing .media files: "

if not exist "%folder%" (
    echo The folder "%folder%" does not exist.
    pause
    exit /b 1
)

REM Loop through all .media files in the folder and subfolders
for /r "%folder%" %%F in (*.media) do (
    echo Converting "%%F" to MP4...
    REM Create the output file name with .mp4 extension
    set "outfile=%%~dpnF.mp4"
    REM Convert with re-encoding: video to H.264 and audio to AAC
    REM Using -preset ultrafast / medium / slow / veryslow
    REM Using -loglevel quiet to suppress detailed messages
    start /b ffmpeg -loglevel quiet -i "%%F" -c:v libx264 -preset medium -crf 20 -c:a aac -strict experimental -b:a 192k "!outfile!"
    REM Display the progress bar
    call :progressBar
    if errorlevel 1 (
        echo Error while converting "%%F".
    ) else (
        echo Conversion of "%%F" completed successfully.
    )
)

echo All conversions are complete.
pause
exit /b

:progressBar
setlocal
set /a totalSteps=10
for /l %%i in (1,1,%totalSteps%) do (
    set /a progress=%%i * 100 / %totalSteps%
    set "bar="
    for /l %%j in (1,1,%%i) do set "bar=!bar!█ "
    for /l %%j in (%%i,1,%totalSteps%-1) do set "bar=!bar!▓ "
    cls
    echo Progress: !bar!
    echo !progress!%% complete
    timeout /t 1 >nul
)
endlocal
goto :eof
