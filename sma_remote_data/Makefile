
REPO_PATH := ../ics-sma-initial-database
ifneq ("$(wildcard $(REPO_PATH))", "")
    DB_REPO := 1
else
    DB_REPO := 0
endif

IMPT := import '\\'package:anet\\/common\\/models\\/model_behavior.dart'\\';
# IMPT := import;

local:
	@! test "`grep -n override pubspec.yaml`" && cat .pipeline_overrides >> pubspec.yaml

precheckin:
	dart fix --apply --code=unused_import,duplicate_import,dead_null_aware_expression,prefer_const_constructors,sort_pub_dependencies,unnecessary_import,unused_import,annotate_overrides
	dart format .
	dart analyze --fatal-infos

setup:
	npm install -g swagger-cli
	dart pub global activate melos

clean:
	flutter clean
	flutter pub get

watch:
	dart fix --apply --code=unused_import
	flutter pub run build_runner watch --delete-conflicting-outputs

swagger: clean swagger_gen

swagger_gen:
	rm -f lib/src/anet_apis/*.dart
	dart run build_runner build swagger_dart_code_generator --delete-conflicting-outputs
	dart fix --apply --code=unused_import

msix_gen: clean
	mkdir -p publish
	dart run msix:publish --version 1.0.0.0

initial_database:
ifeq ("${DB_REPO}", "1") 
	@mkdir -p assets/database
	@cp ${REPO_PATH}/uat/anet-uat-v2.db assets/database/anet_initial.db
else
	@echo "You must clone the ics-sma-initial-database into the parent directory."
endif
