import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sma_local_data/sma_local_data.dart';
import 'package:sma_remote_data/sma_remote_data.dart';

part 'sync_local_surv_usecase.g.dart';

@riverpod
class SyncLocalSurvUsecase extends _$SyncLocalSurvUsecase {
  late final _survRepository = ref.read(survRepositoryLocalProvider.notifier);
  late final _createRemoteUsecase = ref.read(createRemoteSurvUsecaseProvider.notifier);
  late final _deleteSurvUsecase = ref.read(deleteLocalSurvUsecaseProvider.notifier);

  @override
  UsecaseState build() {
    return UsecaseState();
  }

  Future<int> syncAll() async {
    var count = 0;
    
    final localIds = await _survRepository.fetchLocalSurvIds();
    for (final id in localIds) {
      print("sync id: $id");
      await _createRemoteUsecase.create(id: id);
      await _deleteSurvUsecase.deleteCascade(id);
      count++;
    }
    return count;
  }
}
