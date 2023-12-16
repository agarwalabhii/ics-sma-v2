
: local_dev_pull .bat

cd ../sma_common
git checkout feature/alpha
git pull

cd ../sma_common_ux
git checkout feature/alpha
git pull

cd ../sma_local_data
git checkout feature/alpha
git pull

cd ../ics-sma-frontend

flutter clean
dart pub get
