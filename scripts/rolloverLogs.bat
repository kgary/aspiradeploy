for /f "tokens=1-5 delims=/ " %%d in ("%date%") do rename "asthmaMonitoringLog.txt" asthmaMonitoringLog_%%e-%%f-%%g.txt
type NUL > asthmaMonitoringLog.txt
for /f "tokens=1-5 delims=/ " %%d in ("%date%") do rename "SpirometerReadingLog.txt" SpirometerReadingLog_%%e-%%f-%%g.txt
type NUL > SpirometerReadingLog.txt