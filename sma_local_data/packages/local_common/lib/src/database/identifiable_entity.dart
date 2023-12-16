import 'package:drift/drift.dart';

abstract class IdentifiableEntity extends Table {
  IntColumn get id => integer()();
}
