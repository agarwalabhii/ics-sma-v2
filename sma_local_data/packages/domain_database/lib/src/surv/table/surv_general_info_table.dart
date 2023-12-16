import 'package:domain_database/src/surv/constraints/surv_general_info_constraints.dart';
import 'package:drift/drift.dart';
import 'package:local_common/database.dart';

typedef _Constraints = SurvGeneralInfoConstraints;

@DataClassName('SurvGeneralInfoData', extending: DataClassBehavioral)
class SurvGeneralInfo extends Table with RecordColumnMixin implements IdentifiableEntity {
  @override
  String get tableName => 'surv_general_info';

  @override
  Set<Column> get primaryKey => {id, recordType};
  
  @override
  IntColumn get id => integer()();

  DateTimeColumn get datePerformed => dateTime().nullable()();
  TextColumn get estimatedId => text()
      .withLength(
          min: _Constraints.estimatedId.minLength,
          max: _Constraints.estimatedId.maxLength)
      .nullable()();
  TextColumn get reason => text()
      .map(const MultiStringConverter())
      .withLength(
          min: _Constraints.reason.minLength,
          max: _Constraints.reason.maxLength)
      .nullable()();
  TextColumn get retailProject => text()
      .map(const MultiStringConverter())
      .withLength(
          min: _Constraints.retailProject.minLength,
          max: _Constraints.retailProject.maxLength)
      .nullable()();
  TextColumn get retailProjectOther => text()
      .map(const MultiStringConverter())
      .withLength(
          min: _Constraints.retailProjectOther.minLength,
          max: _Constraints.retailProjectOther.maxLength)
      .nullable()();
  TextColumn get retailSpecialProject => text()
      .map(const MultiStringConverter())
      .withLength(
          min: _Constraints.retailSpecialProject.minLength,
          max: _Constraints.retailSpecialProject.maxLength)
      .nullable()();
  TextColumn get specialProject => text()
      .map(const MultiStringConverter())
      .withLength(
          min: _Constraints.specialProject.minLength,
          max: _Constraints.specialProject.maxLength)
      .nullable()();
  TextColumn get firmNameAtTimeOfAction => text().nullable()();
  BoolColumn get isOPEERUser => boolean().nullable()();
  BoolColumn get isOIAUser => boolean().nullable()();
  BoolColumn get isSurvReviewer => boolean().nullable()();
  BoolColumn get isOIASurvReviewer => boolean().nullable()();
}
