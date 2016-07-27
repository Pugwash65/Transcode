@echo off
set src=%1

set dst=%~n1
set dst=%dst:[copy]=%

set dstdir=D:\Temp\Transfer\Toppy\to-ipad

if [%2]==[mkv] goto mkv

:mp4
set dst=%dst%.mp4
REM ffmpeg -i %src% -filter_complex "[0:0][0:3] overlay" -b:a 160k "%dstdir%\%dst%"
REM ffmpeg -i %src% -filter_complex "[0:0][0:3] overlay" -b:a 128k "%dstdir%\%dst%"
ffmpeg -i %src% -filter_complex "[0:0][0:3] overlay" -vsync 1 -b:a 128k "%dstdir%\%dst%"
exit /B 1

:mkv
set dst=%dst%.mkv
ffmpeg -i %src% -map 0:0 -map 0:1 -map 0:3 -b:a 160k -scodec dvdsub "%dstdir%\%dst%"
exit /B 1
