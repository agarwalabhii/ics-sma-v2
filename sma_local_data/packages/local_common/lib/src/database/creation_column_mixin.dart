import 'package:drift/drift.dart';

abstract mixin class CreationColumnMixin implements Table {

  IntColumn get creatorId => integer().nullable()();
  DateTimeColumn get createdDate => dateTime().nullable()();
}
