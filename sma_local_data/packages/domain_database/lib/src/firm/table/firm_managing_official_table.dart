import 'package:drift/drift.dart';
import 'package:local_common/database.dart';

@DataClassName('FirmManagingOfficialData', extending: DataClassBehavioral)
class FirmManagingOfficial extends Table with RecordColumnMixin implements IdentifiableEntity {
  @override
  String get tableName => 'firm_managing_offical';

  @override
  Set<Column> get primaryKey => {id, recordType};
  
  @override
  IntColumn get id => integer()();

  TextColumn get officalName1 =>
      text().withLength(min: 0, max: 75).nullable()();
  TextColumn get officalTitle1 =>
      text().withLength(min: 0, max: 75).nullable()();
  TextColumn get officalPhone1 =>
      text().withLength(min: 0, max: 75).nullable()();
  TextColumn get officalExt1 => text().withLength(min: 0, max: 75).nullable()();
  TextColumn get officalFax1 => text().withLength(min: 0, max: 75).nullable()();
  TextColumn get officalEmail1 =>
      text().withLength(min: 0, max: 75).nullable()();
  TextColumn get officalMobile1 =>
      text().withLength(min: 0, max: 75).nullable()();
  BoolColumn get receiveMobileMessages1 => boolean().nullable()();
  TextColumn get officalName2 =>
      text().withLength(min: 0, max: 75).nullable()();
  TextColumn get officalTitle2 =>
      text().withLength(min: 0, max: 75).nullable()();
  TextColumn get officalPhone2 =>
      text().withLength(min: 0, max: 75).nullable()();
  TextColumn get officalExt2 => text().withLength(min: 0, max: 75).nullable()();
  TextColumn get officalFax2 => text().withLength(min: 0, max: 75).nullable()();
  TextColumn get officalEmail2 =>
      text().withLength(min: 0, max: 75).nullable()();
  TextColumn get officalMobile2 =>
      text().withLength(min: 0, max: 75).nullable()();
  BoolColumn get receiveMobileMessages2 => boolean().nullable()();
  BoolColumn get managingOfficialsInFirm => boolean().nullable()();
  BoolColumn get sameAsOwnerInfo => boolean().nullable()();
}
