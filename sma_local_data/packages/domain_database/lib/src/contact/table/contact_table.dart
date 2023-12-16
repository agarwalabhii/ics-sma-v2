import 'package:drift/drift.dart';
import 'package:local_common/common.dart';
import 'package:local_common/database.dart';

typedef _Constraints = ContactConstraints;

@DataClassName('ContactData', extending: DataClassBehavioral)
class Contact extends Table
    with RecordColumnMixin, SyncColumnMixin, CreationColumnMixin
    implements IdentifiableEntity {
  @override
  String get tableName => 'contact';

  @override
  Set<Column> get primaryKey => {id, recordType};

  IntColumn get recordStatus =>
      intEnum<RecordStatus>().withDefault(const Constant(0)).nullable()();

  @override
  IntColumn get id => integer()();

  TextColumn get name => text()
      .withLength(
          min: _Constraints.name.minLength,
          max: _Constraints.name.maxLength)
      .nullable()();
  TextColumn get title => text()
      .withLength(
          min: _Constraints.title.minLength,
          max: _Constraints.title.maxLength)
      .nullable()();
  TextColumn get phoneNumber => text()
      .withLength(
          min: _Constraints.phoneNumber.minLength,
          max: _Constraints.phoneNumber.maxLength)
      .nullable()();
  TextColumn get phoneNumberExtension => text()
      .withLength(
          min: _Constraints.phoneNumberExtension.minLength,
          max: _Constraints.phoneNumberExtension.maxLength)
      .nullable()();
  TextColumn get mobilePhoneNumber => text()
      .withLength(
          min: _Constraints.mobilePhoneNumber.minLength,
          max: _Constraints.mobilePhoneNumber.maxLength)
      .nullable()();
  BoolColumn get receiveTextMessage => boolean().nullable()();
  TextColumn get faxNumber => text()
      .withLength(
          min: _Constraints.faxNumber.minLength,
          max: _Constraints.faxNumber.maxLength)
      .nullable()();
  TextColumn get email => text()
      .withLength(
          min: _Constraints.email.minLength,
          max: _Constraints.email.maxLength)
      .nullable()();
}
