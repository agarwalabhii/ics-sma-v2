

local:
	@! test "`grep -n override pubspec.yaml`" && cat .pipeline_overrides >> pubspec.yaml

clean:
	flutter clean
	flutter pub get

watch:
	dart pub get
	flutter clean
	flutter pub run build_runner watch --delete-conflicting-outputs
