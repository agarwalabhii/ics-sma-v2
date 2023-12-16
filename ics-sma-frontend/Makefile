
local:
	@! test "`grep -n override pubspec.yaml`" && cat .pipeline_overrides >> pubspec.yaml

repair:
	dart pub cache repair

precheckin:
	@test "`grep -n override pubspec.yaml`" && exit 1
	dart fix --apply --code=unused_import,duplicate_import,dead_null_aware_expression,prefer_const_constructors,sort_pub_dependencies,unnecessary_import,unused_import,annotate_overrides
	dart analyze --fatal-infos

clean:
	flutter clean
	flutter pub get

watch:
	dart pub get
	flutter clean
	flutter pub run build_runner watch --delete-conflicting-outputs

msix_gen: clean
	mkdir -p publish
	dart run msix:publish --version 1.0.0.0

bootstrap:
	melos bootstrap

setup:
	dart pub global activate melos
