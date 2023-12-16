#!/bin/bash

cd package/local_common
dart pub run build_runner watch --delete-conflicting-outputs &
cd -
cd package/domain_database
dart pub run build_runner watch --delete-conflicting-outputs &
cd ../reference_database
dart pub run build_runner watch --delete-conflicting-outputs &
