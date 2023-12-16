import 'package:domain_database/src/domain_delete_mixin.dart';
import 'package:domain_database/src/domain_fetch_id_mixin.dart';
import 'package:domain_database/src/domain_mutate_mixin.dart';
import 'package:domain_database/src/surv/table/surv_custom_exempt_review_table.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:drift/drift.dart' as drift;
import 'package:domain_database/src/domain_database.dart' as db;
import 'package:local_common/database.dart';

part 'surv_custom_exempt_review_repository_local.g.dart';

@riverpod
class SurvCustomExemptReviewRepositoryLocal
    extends _$SurvCustomExemptReviewRepositoryLocal
    with
        DomainMutateMixin<SurvCustomExemptReview, db.SurvCustomExemptReviewData>,
        DomainFetchIdMixin<SurvCustomExemptReview, db.SurvCustomExemptReviewData>,
        DomainDeleteMixin<SurvCustomExemptReview, db.SurvCustomExemptReviewData>
    implements
        LocalMutableRepository<db.SurvCustomExemptReviewData>,
        TransportStateAware {
  @override
  late final db.DomainDatabase database = ref.read(db.DomainDatabase.provider);

  @override
  drift.TableInfo<SurvCustomExemptReview, db.SurvCustomExemptReviewData> get table =>
      database.survCustomExemptReview;

  @override
  FutureOr<TransportState> build() async {
    return TransportState();
  }

  @override
  bool isSparseData(db.SurvCustomExemptReviewData dataClass) {
    return false;
  }
}
