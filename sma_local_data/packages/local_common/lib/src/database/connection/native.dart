import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
// ignore: depend_on_referenced_packages
import 'package:drift_dev/api/migrations.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:package_info_plus/package_info_plus.dart';

Future<File> databaseFile(String databaseName) async {
  final appDir = await getApplicationSupportDirectory();
  final PackageInfo packageInfo = await PackageInfo.fromPlatform();
  final dbPath = p.join(appDir.path, '$databaseName-${packageInfo.version}.sqlite');
  return File(dbPath);
}

/// Obtains a database connection for running drift in a Dart VM.
DatabaseConnection connect(String databaseName) {
  return DatabaseConnection.delayed(Future(() async {
    return NativeDatabase.createBackgroundConnection(await databaseFile(databaseName));
  }));
}

Future<void> validateDatabaseSchema(GeneratedDatabase database) async {
  // For details, see: https://drift.simonbinder.eu/docs/advanced-features/migrations/#verifying-a-database-schema-at-runtime
  await VerifySelf(database).validateDatabaseSchema();
}
