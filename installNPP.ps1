 # install NPP
 write-host 'AIB Customization: Install NPP'
 $appName = 'NPP'
 $drive = 'C:\'
 New-Item -Path $drive -Name $appName  -ItemType Directory -ErrorAction SilentlyContinue
 $LocalPath = $drive + '\' + $appName 
 set-Location $LocalPath
 $appuri = 'https://tcdemomedia01.blob.core.windows.net/install/npp.8.1.9.2.Installer.x64.exe'
 $appuriexe = 'npp.8.1.9.2.Installer.x64.exe'
 $outputPath = $LocalPath + '\' + $appuriexe
 Invoke-WebRequest -Uri $appuri -OutFile $outputPath
 write-host 'AIB Customization: Starting Install'
 Start-Process -FilePath $outputPath -Args "/S" -Wait
 write-host 'AIB Customization: Finished Install'
