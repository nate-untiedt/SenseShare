@Echo off
::Find the user's documents directory
FOR /F "tokens=3" %%G IN ('REG QUERY "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Personal"') DO (SET docsdir=%%G)

::Setup variables
SET qsBasePath=%docsdir%\Qlik\Sense
SET qsAppsPath=%qsBasePath%\Apps
SET qsContentPath=%qsBasePath%\Content\Default
SET qsExtensionsPath=%qsBasePath%\Extensions

IF NOT "%1"=="" (
    IF "%1"=="/a" (
        explorer "%qsAppsPath%"
     ) ELSE (
         IF "%1"=="/c" (
            explorer "%qsContentPath%"
         ) ELSE (
             IF "%1"=="/e" (
                explorer "%qsExtensionsPath%"
             )
         )
     )
) ELSE ( 

Echo Copying app files to %qsAppsPath%...
xCOPY ".\Apps\*" "%qsAppsPath%\" /e /i

Echo Copying content files to %qsContentPath%...
xCOPY ".\Content\*" "%qsContentPath%\" /e /i

Echo Copying Extension files to %qsContentPath%\%appname%\...
xCOPY ".\Extensions\*" "%qsExtensionsPath%\" /e /i

Echo Installation complete!
set /p WaitVar=Hit ENTER to continue...

)
@echo on