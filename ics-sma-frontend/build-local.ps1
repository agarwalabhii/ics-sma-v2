$parent = Split-Path -Path $PSScriptRoot -Parent
Set-Location "$parent\sma_local_data"
melos run watch
Set-Location "$parent\sma_remote_data"
dart pub run build_runner watch --delete-conflicting-outputs
Set-Location "$parent\sma_common_ux"
dart pub run build_runner watch --delete-conflicting-outputs
Set-Location "$parent\ics-sma-frontend"
dart pub get
flutter clean
dart pub run build_runner watch --delete-conflicting-outputs