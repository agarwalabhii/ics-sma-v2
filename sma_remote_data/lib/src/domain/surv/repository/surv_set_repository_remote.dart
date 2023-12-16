import 'package:chopper/chopper.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sma_local_data/sma_local_data.dart';
import 'package:sma_remote_data/src/anet_apis/anet_schema.swagger.dart';
import 'package:sma_remote_data/src/domain/api/state/remote_config.dart';

part 'surv_set_repository_remote.g.dart';

@Riverpod(keepAlive: true)
class SurvSetRepositoryRemote extends _$SurvSetRepositoryRemote
    implements TransportStateAware {
  late final _remoteConfig = ref.watch(remoteConfigProvider.notifier);
  late final _appUser = ref.watch(appUserProvider);

  @override
  TransportState build() {
    return TransportState();
  }
  
  Future<int> createSet({required Stream<Surveillance> stream}) async {
    var count = 0;
    await for (final remote in stream) {
      await create(remote);
      count++;
    }
    return count;
  }

  FutureOr<Response<Surveillance?>> create(Surveillance remote) async {
    print("remote surv: $remote");
    return await _remoteConfig.anetSchema.surveillancePost(
      empId: _appUser.employeeData?.id,
      assuranceNetRoleId: _appUser.selectedRoleId,
      regionCode: _appUser.selectedRegionCode,
      subRegionCode: _appUser.selectedSubregionCode,
      body: remote,
    );
  }

  Stream<Surveillance> fetchAfter(DateTime? date) async* {
    final pageSize = 10;
    int currentPage = 0;

    print("fetchAfter: $date");
//    for (var employeeRole in _appUser.employeeRoleDataList ?? []) {
//      print(
//          "With EmployeeRole Id: ${employeeRole.id}, Emnployee Id: ${employeeRole.employeeId}, Id: ${employeeRole.roleId}, Region Code: ${employeeRole.regionCode}, Subregion Code: ${employeeRole.subRegionCode}");

      while (true) {
        print("while true currentPage: $currentPage");
        var transportState = TransportState();
        transportState = transportState.start();

        final response = await _remoteConfig.anetSchema.surveillanceAfterGet(
          date: date,
          page: currentPage,
          empId: 10459, // _appUser.employeeData?.id,
          assuranceNetRoleId: 38, // employeeRole.roleId,
          regionCode: 400, // employeeRole.regionCode,
          subRegionCode: null, // employeeRole.subRegionCode,
          size: pageSize, // _remoteConfig.fetchPageSize,
        );
        final data = response.body;

        transportState = transportState.copyWith(
          count: data?.count ?? 0);
        transportState = transportState.end();
        transportState.printDebug();

        if (data == null) {
          break;
        }
        final records = data.records ?? [];

        for (Surveillance remote in records) {
          yield remote;
        }

        if (currentPage == data.totalPages) {
          break;
        }
        currentPage++;
      }
    }
//  }
}
