$parent = Split-Path -Path $PSScriptRoot -Parent
Set-Location $parent
git clone https://bitbucket.org/agarwalabhii/ics-sma-v2/src/master/sma_common_ux
git clone https://bitbucket.org/agarwalabhii/ics-sma-v2/src/master/sma_remote_data
git clone https://bitbucket.org/agarwalabhii/ics-sma-v2/src/master/sma_local_data
Set-Location "$parent\sma_local_data"
git checkout master
dart pub get
Set-Location "$parent\sma_common_ux"
git checkout master
dart pub get
Set-Location "$parent\sma_remote_data"
git checkout master
dart pub get
Set-Location "$parent\ics-sma-frontend"
Write-Output "Add $env:LOCALAPPDATA\Pub\Cache\bin to your windows path if it isn't already."