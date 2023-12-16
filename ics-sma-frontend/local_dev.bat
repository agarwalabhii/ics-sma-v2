
: local.bat

cd ../sma_common
git checkout feature/alpha
git pull

cd ../sma_common_ux
git checkout feature/alpha
git pull
type .pipeline_overrides >> pubspec.yaml

cd ../sma_local_data
git checkout feature/alpha
git pull
type .pipeline_overrides >> pubspec.yaml

cd ../ics-sma-frontend
type .pipeline_overrides >> pubspec.yaml

flutter clean
dart pub get
