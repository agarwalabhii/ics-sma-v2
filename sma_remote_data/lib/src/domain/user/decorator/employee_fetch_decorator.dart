
import 'package:sma_local_data/sma_local_data.dart';
import 'package:sma_remote_data/src/domain/api/model/sync_data.dart';
import 'package:sma_remote_data/src/domain/user/model/employee_remote.dart';

class EmployeeFetchDecorator implements FetchDecorator<EmployeeData, EmployeeRemote> {

  EmployeeFetchDecorator({required this.updateFunc, this.syncData});

  @override
  final Function(int count) updateFunc;
  final SyncData? syncData;

  @override
  EmployeeData apply(EmployeeRemote remote) {
    return EmployeeData(
      id: remote.employeeId!,
      establishmentId: remote.establishmentId ?? 0,
      lastName: remote.lastName,
      firstName: remote.firstName,
      loginName: remote.loginName,
      title: remote.title,
      districtCode: remote.districtCode,
      districtName: remote.districtName,
      circuitCode: remote.circuitCode,
      circuitName: remote.circuitName,
      establishmentName: remote.establishmentName,
      regionCode: remote.regionCode,
      regionName: remote.regionName,
      assignmentCode: remote.assignmentCode,
      assignmentLocation: remote.assignmentLocation,
      programArea: remote.programArea,
      email: remote.email,
      active: remote.active,
      badgeNumber: remote.badgeNumber,
      phoneNumber: remote.phoneNumber,
    );
  }
}