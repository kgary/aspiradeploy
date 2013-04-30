@ECHO off
set "dir=H:\aspiradeployment\aspiradeploy\configfiles"
set "file=%dir%\asthmaMonitoringLog.txt"

call :CheckEmpty "%file%" 
set "file1=%dir%\SpirometerReadingLog.txt"
call :CheckEmpty1 "%file1%" 
GOTO:EOF

:CheckEmpty
if "%~z1" == "" ( 
    echo log File doesnt exist. 
) else if "%~z1" == "0" ( 
    echo log File is empty
) else ( 
   for /f "tokens=1-5 delims=/ " %%d in ("%date%") do rename "asthmaMonitoringLog.txt" asthmaMonitoringLog_%%e-%%f-%%g.txt
   for /f "tokens=1-5 delims=/ " %%d in ("%date%") do move asthmaMonitoringLog_%%e-%%f-%%g.txt logs\
	type NUL > asthmaMonitoringLog.txt
)  
GOTO:EOF

:CheckEmpty1
if "%~z1" == "" ( 
    echo spiro File doesnt exist. 
) else if "%~z1" == "0" ( 
    echo spiro File is empty
) else ( 
	for /f "tokens=1-5 delims=/ " %%d in ("%date%") do rename "SpirometerReadingLog.txt" SpirometerReadingLog_%%e-%%f-%%g.txt
	for /f "tokens=1-5 delims=/ " %%d in ("%date%") do move SpirometerReadingLog_%%e-%%f-%%g.txt %dir%\logs\
	type NUL > SpirometerReadingLog.txt
)  
GOTO:EOF