import 'package:domain_database/src/govform/model/govform_8160_v1_model.dart';
import 'package:local_common/database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'govform_8160_v1_repository_local.g.dart';

@riverpod
class Govform8160V1RepositoryLocal
    extends _$Govform8160V1RepositoryLocal
    implements
        TransportStateAware {

  @override
  FutureOr<TransportState> build() async {
    return TransportState();
  }

  Future<LocalResponseData<Govform8160V1Model>> fetch(int survId) async {
    var govform = Govform8160V1Model();

    return LocalResponseData(body: govform);
  }
}
