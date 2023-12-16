import 'package:sma_local_data/sma_local_data.dart';
import 'package:sma_remote_data/src/domain/api/model/sync_data.dart';
import 'package:sma_remote_data/src/domain/user/model/employee_role_remote.dart';

class EmployeeRoleFetchDecorator implements FetchDecorator<EmployeeRoleData, EmployeeRoleRemote> {

  EmployeeRoleFetchDecorator({required this.updateFunc, this.syncData});

  @override
  final Function(int count) updateFunc;
  final SyncData? syncData;

  @override
  EmployeeRoleData apply(EmployeeRoleRemote remote) {
    print("remote: $remote");
    return EmployeeRoleData(
      id: remote.employeeRoleId ?? 0,
      employeeId: remote.empId,
      roleId: remote.assuranceNetRoleId,
      workflowRoleId: remote.workflowRoleId?.toInt(),
      // isPrimary: remote.isPrimary,
      startDate: remote.startDate,
      endDate: remote.endDate,
      districtCode: remote.districtCode,
      assignmentCode: remote.assignmentCode,
      regionCode: remote.regionCode,
      subRegionCode: remote.subRegionCode,
    );
  }
}