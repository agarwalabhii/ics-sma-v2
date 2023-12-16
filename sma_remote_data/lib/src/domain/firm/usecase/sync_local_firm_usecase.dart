import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sma_local_data/sma_local_data.dart';
import 'package:sma_remote_data/sma_remote_data.dart';

part 'sync_local_firm_usecase.g.dart';

@riverpod
class SyncLocalFirmUsecase extends _$SyncLocalFirmUsecase {
  late final _firmRepository = ref.read(firmRepositoryLocalProvider.notifier);
  late final _createRemoteUsecase = ref.read(createRemoteFirmUsecaseProvider.notifier);
  late final _deleteFirmUsecase = ref.read(deleteLocalFirmUsecaseProvider.notifier);

  @override
  UsecaseState build() {
    return UsecaseState();
  }

  Future<int> syncAll() async {
    var count = 0;
    
    final localIds = await _firmRepository.fetchLocalFirmIds();
    for (final id in localIds) {
      print("firm id: $id");
      await _createRemoteUsecase.create(id: id);
      await _deleteFirmUsecase.deleteCascade(id);
      count++;
    }
    return count;
  }
}
