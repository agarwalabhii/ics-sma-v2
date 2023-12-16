import 'package:domain_database/src/surv/constraints/surv_additional_info_constraints.dart';
import 'package:drift/drift.dart';
import 'package:local_common/database.dart';

typedef _Constraints = SurvAdditionaInfoConstraints;

@DataClassName('SurvAdditionalInfoData', extending: DataClassBehavioral)
class SurvAdditionalInfo extends Table with RecordColumnMixin implements IdentifiableEntity {
  @override
  String get tableName => 'surv_additional_info';

  @override
  Set<Column> get primaryKey => {id};
  
  @override
  IntColumn get id => integer()();

  BoolColumn get investigatorMeetRep => boolean().nullable()();
  BoolColumn get investigatorReferFindings => boolean().nullable()();
  BoolColumn get isFollowUpFromPrevious => boolean().nullable()();
  TextColumn get firmRepresentative1 => text()
      .withLength(
          min: _Constraints.firmRepresentative1.minLength,
          max: _Constraints.firmRepresentative1.maxLength)
      .nullable()();
  TextColumn get firmRepresentativeTitle1 => text()
      .withLength(
          min: _Constraints.firmRepresentativeTitle1.minLength,
          max: _Constraints.firmRepresentativeTitle1.maxLength)
      .nullable()();
  TextColumn get firmRepresentative2 => text()
      .withLength(
          min: _Constraints.firmRepresentative2.minLength,
          max: _Constraints.firmRepresentative2.maxLength)
      .nullable()();
  TextColumn get firmRepresentativeTitle2 => text()
      .withLength(
          min: _Constraints.firmRepresentativeTitle2.minLength,
          max: _Constraints.firmRepresentativeTitle2.maxLength)
      .nullable()();
  TextColumn get referralComments => text()
      .withLength(
          min: _Constraints.referralComments.minLength,
          max: _Constraints.referralComments.maxLength)
      .nullable()();
  TextColumn get followUpComments => text()
      .withLength(
          min: _Constraints.followUpComments.minLength,
          max: _Constraints.followUpComments.maxLength)
      .nullable()();
  TextColumn get location => text()
      .withLength(
          min: _Constraints.location.minLength,
          max: _Constraints.location.maxLength)
      .nullable()();

  DateTimeColumn get followUpDateComplete => dateTime().nullable()();
  TextColumn get followUpMonths => text().nullable()();
  TextColumn get additionalComments => text().nullable()();
  TextColumn get primaryBusinessType => text().nullable()();
  TextColumn get region => text().nullable()();
  TextColumn get mailingAddress => text().nullable()();
  TextColumn get assignment => text().nullable()();
  TextColumn get estimatedId => text().nullable()();
  TextColumn get estimatedNumber => text().nullable()();
  TextColumn get estimatedAddress1 => text().nullable()();
  TextColumn get estimatedAddress2 => text().nullable()();
  TextColumn get estimatedCity => text().nullable()();
  TextColumn get estimatedState => text().nullable()();
  TextColumn get estimatedZipCode => text().nullable()();
  TextColumn get operation => text().nullable()();
  BoolColumn get isProcessor => boolean().nullable()();
  BoolColumn get isDistributor => boolean().nullable()();
  BoolColumn get isRenderer => boolean().nullable()();
  BoolColumn get isBroker => boolean().nullable()();
  BoolColumn get is3D4D => boolean().nullable()();
  BoolColumn get isRetailer => boolean().nullable()();
  BoolColumn get isTransporter => boolean().nullable()();
  BoolColumn get isCustom => boolean().nullable()();
  BoolColumn get isRestaurant => boolean().nullable()();
  BoolColumn get isMiscellaneous => boolean().nullable()();
  BoolColumn get isAnimalFood => boolean().nullable()();
  BoolColumn get isWarehouse => boolean().nullable()();
  BoolColumn get isSalvage => boolean().nullable()();
  BoolColumn get isPointOfEntry => boolean().nullable()();
  BoolColumn get isBondedArea => boolean().nullable()();
  BoolColumn get isAbattoir => boolean().nullable()();
  BoolColumn get isExemptPoultry => boolean().nullable()();
  BoolColumn get isFoodBank => boolean().nullable()();
  BoolColumn get isFollowUp => boolean().nullable()();
  BoolColumn get followUpComplete => boolean().nullable()();
}
