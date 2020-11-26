OutFile "WeatherAppInstall.exe"
InstallDir $PROFILE\1549517
Section
SetOutPath $INSTDIR
File Microsoft.Extensions.Configuration.Abstractions.dll
File Microsoft.Extensions.Configuration.Binder.dll
File Microsoft.Extensions.Configuration.dll
File Microsoft.Extensions.Configuration.FileExtensions.dll
File Microsoft.Extensions.Configuration.Json.dll
File Microsoft.Extensions.Configuration.UserSecrets.dll
File Microsoft.Extensions.DependencyInjection.Abstractions.dll
File Microsoft.Extensions.DependencyInjection.dll
File Microsoft.Extensions.FileProviders.Abstractions.dll
File Microsoft.Extensions.FileProviders.Physical.dll
FILE Microsoft.Extensions.FileSystemGlobbing.dll
FILE Microsoft.Extensions.Options.ConfigurationExtensions.dll
FILE Microsoft.Extensions.Options.dll
FILE Microsoft.Extensions.Primitives.dll
FILE Newtonsoft.Json.Bson.dll
FILE Newtonsoft.Json.dll
FILE OpenWeatherAPI.dll
FILE OpenWeatherAPI.pdb
FILE System.Net.Http.Formatting.dll
FILE WeatherApp.dll
FILE WeatherApp.ico
FILE WeatherApp.exe
FILE WeatherApp.runtimeconfig.json
FILE WeatherApp.runtimeconfig.json
FILE WeatherApp.deps.json
CreateDirectory $SMPROGRAMS\1549517
CreateShortcut "$SMPROGRAMS\1549517\WeatherAppUnistall.lnk" "$INSTDIR\uninstaller.exe"
CreateShortcut "$SMPROGRAMS\1549517\WeatherApp.lnk" "$INSTDIR\WeatherApp.exe" "" "$INSTDIR\WeatherApp.ico"
CreateShortcut "$DESKTOP\WeatherApp.lnk" "$INSTDIR\WeatherApp.exe" "" "$INSTDIR\WeatherApp.ico"
WriteUninstaller $INSTDIR\uninstaller.exe

SectionEnd
# create a section to define what the uninstaller does.
# the section will always be named "Uninstall"
Section "Uninstall"
 
# Always delete uninstaller first
Delete $INSTDIR\uninstaller.exe
 
# now delete installed file
Delete $INSTDIR\Microsoft.Extensions.Configuration.Abstractions.dll
Delete $INSTDIR\Microsoft.Extensions.Configuration.Binder.dll
Delete $INSTDIR\Microsoft.Extensions.Configuration.dll
Delete $INSTDIR\Microsoft.Extensions.Configuration.FileExtensions.dll
Delete $INSTDIR\Microsoft.Extensions.Configuration.Json.dll
Delete $INSTDIR\Microsoft.Extensions.Configuration.UserSecrets.dll
Delete $INSTDIR\Microsoft.Extensions.DependencyInjection.Abstractions.dll
Delete $INSTDIR\Microsoft.Extensions.DependencyInjection.dll
Delete $INSTDIR\Microsoft.Extensions.FileProviders.Abstractions.dll
Delete $INSTDIR\Microsoft.Extensions.FileProviders.Physical.dll
Delete $INSTDIR\Microsoft.Extensions.FileSystemGlobbing.dll
Delete $INSTDIR\Microsoft.Extensions.Options.ConfigurationExtensions.dll
Delete $INSTDIR\Microsoft.Extensions.Options.dll
Delete $INSTDIR\Microsoft.Extensions.Primitives.dll
Delete $INSTDIR\Newtonsoft.Json.Bson.dll
Delete $INSTDIR\Newtonsoft.Json.dll
Delete $INSTDIR\OpenWeatherAPI.dll
Delete $INSTDIR\OpenWeatherAPI.pdb
Delete $INSTDIR\System.Net.Http.Formatting.dll
Delete $INSTDIR\WeatherApp.dll
Delete $INSTDIR\WeatherApp.exe
Delete $INSTDIR\WeatherApp.ico
Delete $INSTDIR\WeatherApp.runtimeconfig.json
Delete $INSTDIR\WeatherApp.runtimeconfig.json
Delete $INSTDIR\WeatherApp.deps.json
Delete "$SMPROGRAMS\1549517\WeatherAppUnistall.lnk"
Delete "$SMPROGRAMS\1549517\WeatherApp.lnk"
Delete "$DESKTOP\WeatherApp.lnk" 
 
# Delete the directory
RMDir $INSTDIR
SectionEnd