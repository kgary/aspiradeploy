config.json, airQualityStatus.json, asthmaMonitoringLog.txt, medicationReminder.txt, 
and SpirometerReadingLog.txt should be copied to /Users/$$USER$$/documents, 
and a backup of them put in /Users/$$USER$$/documents/backups

The *.properties files are now in ASPIRA_HOME\properties and distributed through the
jarfile under the java directory. Likewise the sql files are in the jar distribution,
though they remain under c:\usr\aspira\sql

All configuration files need to be hand-edited to replace $$USER$$ and other $$ delimited tokens
