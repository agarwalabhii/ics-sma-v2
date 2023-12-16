import 'package:drift/drift.dart';
import 'package:local_common/database.dart';

@DataClassName('FirmGeneralInfoData', extending: DataClassBehavioral)
@TableIndex(name: 'firm_name', columns: {#name})
class FirmGeneralInfo extends Table with RecordColumnMixin implements IdentifiableEntity {
  @override
  String get tableName => 'firm_general_info';

  @override
  Set<Column> get primaryKey => {id, recordType};
  
  @override
  IntColumn get id => integer()();

  TextColumn get name => text().withLength(min: 0, max: 75).nullable()();
  TextColumn get doingBusinessAs =>
      text().withLength(min: 0, max: 75).nullable()();
  TextColumn get alsoKnownAs => text().withLength(min: 0, max: 75).nullable()();
  TextColumn get previousName =>
      text().withLength(min: 0, max: 75).nullable()();
  BoolColumn get contactRegionalOffice => boolean().nullable()();
  BoolColumn get mailingAddressSameAsFirmAddress => boolean().nullable()();
  TextColumn get establishmentNumber =>
      text().withLength(min: 0, max: 40).nullable()();
  TextColumn get risk => text().withLength(min: 0, max: 10).nullable()();
  TextColumn get regionCode => text().withLength(min: 0, max: 3).nullable()();
  TextColumn get subRegionCode =>
      text().withLength(min: 0, max: 5).nullable()();
  TextColumn get assignCode => text().withLength(min: 0, max: 10).nullable()();
  TextColumn get numberOfFloors =>
      text().withLength(min: 0, max: 3).nullable()();
  TextColumn get numberOfEmp => text().withLength(min: 0, max: 75).nullable()();
  TextColumn get approxSqFootage =>
      text().withLength(min: 0, max: 10).nullable()();
  TextColumn get primaryBusinessType =>
      text().withLength(min: 0, max: 25).nullable()();
  TextColumn get secondaryBusinessType =>
      text().withLength(min: 0, max: 25).nullable()();
  TextColumn get tertiaryBusinessType =>
      text().withLength(min: 0, max: 25).nullable()();
  TextColumn get businessActivities => text()
      .map(const MultiStringConverter())
      .withLength(min: 0, max: 25)
      .nullable()();
  TextColumn get tier => text().withLength(min: 0, max: 25).nullable()();
  BoolColumn get isFirmRegistered =>
      boolean().nullable()();
  TextColumn get backupEnergySource =>
      text().withLength(min: 0, max: 25).nullable()();
  BoolColumn get firmIsUnderOrder => boolean().nullable()();
  TextColumn get typeOfOrder => text()
      .map(const MultiStringConverter())
      .withLength(min: 0, max: 75)
      .nullable()();
  BoolColumn get orderIsPermanent => boolean().nullable()();
  DateTimeColumn get expirationOfOrder => dateTime().nullable()();
  TextColumn get comments => text().withLength(min: 0, max: 25).nullable()();
  BoolColumn get isSundayClosed => boolean().nullable()();
  TextColumn get sundayOpenTime => text().withLength(min: 0, max: 25).nullable()();
  TextColumn get sundayCloseTime => text().withLength(min: 0, max: 25).nullable()();
  BoolColumn get isMondayClosed => boolean().nullable()();
  TextColumn get mondayOpenTime => text().withLength(min: 0, max: 25).nullable()();
  TextColumn get mondayCloseTime => text().withLength(min: 0, max: 25).nullable()();
  BoolColumn get isTuesdayClosed => boolean().nullable()();
  TextColumn get tuesdayOpenTime => text().withLength(min: 0, max: 25).nullable()();
  TextColumn get tuesdayCloseTime =>
      text().withLength(min: 0, max: 25).nullable()();
  BoolColumn get isWednesdayClosed => boolean().nullable()();
  TextColumn get wednesdayOpenTime =>
      text().withLength(min: 0, max: 25).nullable()();
  TextColumn get wednesdayCloseTime =>
      text().withLength(min: 0, max: 25).nullable()();
  BoolColumn get isThursdayClosed => boolean().nullable()();
  TextColumn get thursdayOpenTime =>
      text().withLength(min: 0, max: 25).nullable()();
  TextColumn get thursdayCloseTime =>
      text().withLength(min: 0, max: 25).nullable()();
  BoolColumn get isFridayClosed => boolean().nullable()();
  TextColumn get fridayOpenTime => text().withLength(min: 0, max: 25).nullable()();
  TextColumn get fridayCloseTime => text().withLength(min: 0, max: 25).nullable()();
  BoolColumn get isSaturdayClosed => boolean().nullable()();
  TextColumn get saturdayOpenTime =>
      text().withLength(min: 0, max: 25).nullable()();
  TextColumn get saturdayCloseTime =>
      text().withLength(min: 0, max: 25).nullable()();
}
