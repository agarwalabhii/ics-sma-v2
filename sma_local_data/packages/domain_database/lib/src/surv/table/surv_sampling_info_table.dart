import 'package:drift/drift.dart';
import 'package:local_common/database.dart';

@DataClassName('SurvSamplingInfoData', extending: DataClassBehavioral)
class SurvSamplingInfo extends Table with RecordColumnMixin implements IdentifiableEntity {
  @override
  String get tableName => 'surv_sampling_info';

  @override
  Set<Column> get primaryKey => {id, recordType};
  
  @override
  IntColumn get id => integer()();

  BoolColumn get samplingTaken => boolean().nullable()();
  TextColumn get typeOfSamplesTaken =>
      text().map(const MultiStringConverter()).nullable()();
  TextColumn get reasonNoSamplesTaken =>
      text().map(const MultiStringConverter()).nullable()();
  TextColumn get sampleResult =>
      text().map(const MultiStringConverter()).nullable()();
  TextColumn get numSpecialProjectsInvestigations => text().nullable()();
  TextColumn get numMT0506 => text().nullable()();
  BoolColumn get adequateGrinding => boolean().nullable()();
}
