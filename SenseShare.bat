@Echo off
::Find the user's documents directory
FOR /F "tokens=3" %%G IN ('REG QUERY "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Personal"') DO (SET docsdir=%%G)

::Setup variables
SET qsBasePath=%docsdir%\Qlik\Sense
SET qsAppsPath=%qsBasePath%\Apps
SET qsContentPath=%qsBasePath%\Content\Default
SET qsExtensionsPath=%qsBasePath%\Extensions

Echo Copying app file(s) to %qsAppsPath%...
xCOPY ".\Apps\*" "%qsAppsPath%\" /e /i

Echo Copying content file(s) to %qsContentPath%...
xCOPY ".\Content\*" "%qsContentPath%\" /e /i

Echo Copying Extension file(s) to %qsContentPath%\%appname%\...
xCOPY ".\Extensions\*" "%qsExtensionsPath%\" /e /i

Echo Installation complete!
set /p WaitVar=Hit ENTER to continue...
@echo on