import 'package:drift/drift.dart';
import 'package:local_common/database.dart';

@DataClassName('SurvCustomExemptReviewData', extending: DataClassBehavioral)
class SurvCustomExemptReview extends Table with RecordColumnMixin implements IdentifiableEntity {
  @override
  String get tableName => 'surv_custom_exempt_review';

  @override
  Set<Column> get primaryKey => {id, recordType};
  
  @override
  IntColumn get id => integer()();

  BoolColumn get wasCustomExemptReviewConducted => boolean().nullable()();
  BoolColumn get doesFacilityPerformCustomSlaughter => boolean().nullable()();
  BoolColumn get doesFacilityPerformCustomProcessing => boolean().nullable()();
  TextColumn get doesFacilityEmail => text().nullable()();
  BoolColumn get officialEstablishment => boolean().nullable()();
  BoolColumn get copyGiven => boolean().nullable()();
  BoolColumn get humaneLivestockSlaughter => boolean().nullable()();
  TextColumn get humaneLivestockSlaughterText => text().nullable()();
  BoolColumn get recordkeepingAcceptable => boolean().nullable()();
  TextColumn get recordkeepingAcceptableText => text().nullable()();

  TextColumn get namePHVText => text().nullable()();
  TextColumn get nameIICText => text().nullable()();

  BoolColumn get sanitaryOperationsAcceptable => boolean().nullable()();
  TextColumn get sanitaryOperationsAcceptableText => text().nullable()();
  
  BoolColumn get pestControlAcceptable => boolean().nullable()();
  TextColumn get pestControlAcceptableText => text().nullable()();
  
  BoolColumn get ineditbleMaterialAcceptable => boolean().nullable()();
  TextColumn get ineditbleMaterialAcceptableText => text().nullable()();
  
  BoolColumn get labelingAcceptable => boolean().nullable()();
  TextColumn get labelingAcceptableText => text().nullable()();
  
  BoolColumn get pathogenAcceptable => boolean().nullable()();
  TextColumn get pathogenAcceptableText => text().nullable()();
  
  BoolColumn get waterAcceptable => boolean().nullable()();
  TextColumn get waterAcceptableText => text().nullable()();
  
  BoolColumn get wasteAcceptable => boolean().nullable()();
  TextColumn get wasteAcceptableText => text().nullable()();
  
  BoolColumn get misbrandedObservedLabel => boolean().nullable()();
  TextColumn get misbrandedObservedLabelText => text().nullable()();
  
  BoolColumn get misbrandedLikelyLabel => boolean().nullable()();
  TextColumn get misbrandedLikelyLabelText => text().nullable()();
  BoolColumn get adminsitrativeConsentAgreement => boolean().nullable()();
  TextColumn get adminsitrativeConsentAgreementText => text().nullable()();
  BoolColumn get recommendForRemovalOfPrivileges => boolean().nullable()();

  DateTimeColumn get dateCopyGiven => dateTime().nullable()();
  TextColumn get species => text()
      .map(const MultiStringConverter())
      .withLength(min: 0, max: 20)
      .nullable()();
  TextColumn get reviewInterval => text().nullable()();
  TextColumn get otherInterval => text().nullable()();
  TextColumn get otherSpecies => text().nullable()();
  TextColumn get additionalComments => text().nullable()();
}
