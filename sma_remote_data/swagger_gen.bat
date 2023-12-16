
call flutter clean
call flutter pub get

call del lib\data\models\generated\*.dart
call dart run build_runner build swagger_dart_code_generator --delete-conflicting-outputs
