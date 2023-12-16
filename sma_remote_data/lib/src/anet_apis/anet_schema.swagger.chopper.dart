//Generated code - DO NOT edit directly. Edit Swagger file then generate.

part of 'anet_schema.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: type=lint
final class _$AnetSchema extends AnetSchema {
  _$AnetSchema([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = AnetSchema;

  @override
  Future<Response<Surveillance>> _surveillancePut({
    String? assuranceNetRoleId,
    String? empId,
    String? regionCode,
    String? subRegionCode,
    String? authorization,
    String? cacheControl,
    required Surveillance? body,
  }) {
    final Uri $url = Uri.parse('/surveillance');
    final Map<String, String> $headers = {
      if (assuranceNetRoleId != null) 'assuranceNetRoleId': assuranceNetRoleId,
      if (empId != null) 'empId': empId,
      if (regionCode != null) 'regionCode': regionCode,
      if (subRegionCode != null) 'subRegionCode': subRegionCode,
      if (authorization != null) 'Authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Surveillance, Surveillance>($request);
  }

  @override
  Future<Response<Surveillance>> _surveillancePost({
    String? assuranceNetRoleId,
    String? empId,
    String? regionCode,
    String? subRegionCode,
    String? authorization,
    String? cacheControl,
    required Surveillance? body,
  }) {
    final Uri $url = Uri.parse('/surveillance');
    final Map<String, String> $headers = {
      if (assuranceNetRoleId != null) 'assuranceNetRoleId': assuranceNetRoleId,
      if (empId != null) 'empId': empId,
      if (regionCode != null) 'regionCode': regionCode,
      if (subRegionCode != null) 'subRegionCode': subRegionCode,
      if (authorization != null) 'Authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Surveillance, Surveillance>($request);
  }

  @override
  Future<Response<FirmInfo>> _firmPost({
    String? assuranceNetRoleId,
    String? empId,
    String? regionCode,
    String? subRegionCode,
    String? authorization,
    String? cacheControl,
    required FirmInfo? body,
  }) {
    final Uri $url = Uri.parse('/firm/');
    final Map<String, String> $headers = {
      if (assuranceNetRoleId != null) 'assuranceNetRoleId': assuranceNetRoleId,
      if (empId != null) 'empId': empId,
      if (regionCode != null) 'regionCode': regionCode,
      if (subRegionCode != null) 'subRegionCode': subRegionCode,
      if (authorization != null) 'Authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<FirmInfo, FirmInfo>($request);
  }

  @override
  Future<Response<ModelPageANRole>> _userRolesAllGet({
    int? page,
    int? size,
    List<String>? sort,
    String? authorization,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/user/roles/all');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'size': size,
      'sort': sort,
    };
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<ModelPageANRole, ModelPageANRole>($request);
  }

  @override
  Future<Response<ModelPageUser>> _userAllGet({
    int? page,
    int? size,
    List<String>? sort,
    String? authorization,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/user/all');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'size': size,
      'sort': sort,
    };
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<ModelPageUser, ModelPageUser>($request);
  }

  @override
  Future<Response<Surveillance>> _surveillanceSurveillanceIdGet({
    required int? surveillanceId,
    String? assuranceNetRoleId,
    String? empId,
    String? regionCode,
    String? subRegionCode,
    String? authorization,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/surveillance/${surveillanceId}');
    final Map<String, String> $headers = {
      if (assuranceNetRoleId != null) 'assuranceNetRoleId': assuranceNetRoleId,
      if (empId != null) 'empId': empId,
      if (regionCode != null) 'regionCode': regionCode,
      if (subRegionCode != null) 'subRegionCode': subRegionCode,
      if (authorization != null) 'Authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Surveillance, Surveillance>($request);
  }

  @override
  Future<Response<String>> _surveillanceSurveillanceIdDelete({
    required int? surveillanceId,
    String? assuranceNetRoleId,
    String? empId,
    String? regionCode,
    String? subRegionCode,
    String? authorization,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/surveillance/${surveillanceId}');
    final Map<String, String> $headers = {
      if (assuranceNetRoleId != null) 'assuranceNetRoleId': assuranceNetRoleId,
      if (empId != null) 'empId': empId,
      if (regionCode != null) 'regionCode': regionCode,
      if (subRegionCode != null) 'subRegionCode': subRegionCode,
      if (authorization != null) 'Authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<ModelPageSurveillance>> _surveillanceAfterGet({
    required DateTime? date,
    int? page,
    int? size,
    List<String>? sort,
    String? assuranceNetRoleId,
    String? empId,
    String? regionCode,
    String? subRegionCode,
    String? authorization,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/surveillance/after');
    final Map<String, dynamic> $params = <String, dynamic>{
      'date': date,
      'page': page,
      'size': size,
      'sort': sort,
    };
    final Map<String, String> $headers = {
      if (assuranceNetRoleId != null) 'assuranceNetRoleId': assuranceNetRoleId,
      if (empId != null) 'empId': empId,
      if (regionCode != null) 'regionCode': regionCode,
      if (subRegionCode != null) 'subRegionCode': subRegionCode,
      if (authorization != null) 'Authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<ModelPageSurveillance, ModelPageSurveillance>($request);
  }

  @override
  Future<Response<Reminder>> _reminderReminderIdGet({
    required int? reminderId,
    String? assuranceNetRoleId,
    String? empId,
    String? regionCode,
    String? subRegionCode,
    String? authorization,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/reminder/${reminderId}');
    final Map<String, String> $headers = {
      if (assuranceNetRoleId != null) 'assuranceNetRoleId': assuranceNetRoleId,
      if (empId != null) 'empId': empId,
      if (regionCode != null) 'regionCode': regionCode,
      if (subRegionCode != null) 'subRegionCode': subRegionCode,
      if (authorization != null) 'Authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Reminder, Reminder>($request);
  }

  @override
  Future<Response<FirmInfo>> _firmFirmIdGet({
    required int? firmId,
    String? assuranceNetRoleId,
    String? empId,
    String? regionCode,
    String? subRegionCode,
    String? authorization,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/firm/${firmId}');
    final Map<String, String> $headers = {
      if (assuranceNetRoleId != null) 'assuranceNetRoleId': assuranceNetRoleId,
      if (empId != null) 'empId': empId,
      if (regionCode != null) 'regionCode': regionCode,
      if (subRegionCode != null) 'subRegionCode': subRegionCode,
      if (authorization != null) 'Authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<FirmInfo, FirmInfo>($request);
  }

  @override
  Future<Response<ModelPageFirmInfo>> _firmAfterGet({
    required DateTime? date,
    int? page,
    int? size,
    List<String>? sort,
    String? assuranceNetRoleId,
    String? empId,
    String? regionCode,
    String? subRegionCode,
    String? authorization,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/firm/after');
    final Map<String, dynamic> $params = <String, dynamic>{
      'date': date,
      'page': page,
      'size': size,
      'sort': sort,
    };
    final Map<String, String> $headers = {
      if (assuranceNetRoleId != null) 'assuranceNetRoleId': assuranceNetRoleId,
      if (empId != null) 'empId': empId,
      if (regionCode != null) 'regionCode': regionCode,
      if (subRegionCode != null) 'subRegionCode': subRegionCode,
      if (authorization != null) 'Authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<ModelPageFirmInfo, ModelPageFirmInfo>($request);
  }

  @override
  Future<Response<ModelPageEmployee>> _employeeEmployeeIdGet({
    required int? employeeId,
    int? page,
    int? size,
    List<String>? sort,
    String? authorization,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/employee/${employeeId}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'size': size,
      'sort': sort,
    };
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<ModelPageEmployee, ModelPageEmployee>($request);
  }

  @override
  Future<Response<ModelPageEmployeeRole>> _employeeRolesEmployeeIdGet({
    required int? employeeId,
    int? page,
    int? size,
    List<String>? sort,
    String? authorization,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/employee/roles/${employeeId}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'size': size,
      'sort': sort,
    };
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<ModelPageEmployeeRole, ModelPageEmployeeRole>($request);
  }

  @override
  Future<Response<ModelPageEmployeeRole>> _employeeRolesAllGet({
    int? page,
    int? size,
    List<String>? sort,
    String? authorization,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/employee/roles/all');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'size': size,
      'sort': sort,
    };
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<ModelPageEmployeeRole, ModelPageEmployeeRole>($request);
  }

  @override
  Future<Response<ModelPageEmployeeRole>> _employeeRolesActiveEmployeeIdGet({
    required int? employeeId,
    int? page,
    int? size,
    List<String>? sort,
    String? authorization,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/employee/roles/active/${employeeId}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'size': size,
      'sort': sort,
    };
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<ModelPageEmployeeRole, ModelPageEmployeeRole>($request);
  }

  @override
  Future<Response<ModelPageEmployee>> _employeeAllGet({
    int? page,
    int? size,
    List<String>? sort,
    String? authorization,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/employee/all');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'size': size,
      'sort': sort,
    };
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<ModelPageEmployee, ModelPageEmployee>($request);
  }

  @override
  Future<Response<List<State>>> _dropdownUsStatesGet({
    String? authorization,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/dropdown/us-states');
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<State>, State>($request);
  }

  @override
  Future<Response<List<DropdownElement>>> _dropdownSurveillanceReasonsGet({
    String? authorization,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/dropdown/surveillance-reasons');
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<DropdownElement>, DropdownElement>($request);
  }

  @override
  Future<Response<List<DropdownElement>>> _dropdownSpecialProjectsGet({
    String? authorization,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/dropdown/special-projects');
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<DropdownElement>, DropdownElement>($request);
  }

  @override
  Future<Response<List<DropdownElement>>> _dropdownShellEggTemperatureListGet({
    String? authorization,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/dropdown/shell-egg-temperature-list');
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<DropdownElement>, DropdownElement>($request);
  }

  @override
  Future<Response<List<DropdownElement>>> _dropdownSampleTakenTypesGet({
    String? authorization,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/dropdown/sample-taken-types');
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<DropdownElement>, DropdownElement>($request);
  }

  @override
  Future<Response<List<DropdownElement>>> _dropdownSampleResultStatusesGet({
    String? authorization,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/dropdown/sample-result-statuses');
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<DropdownElement>, DropdownElement>($request);
  }

  @override
  Future<Response<List<DropdownElement>>> _dropdownRetailProjectsGet({
    String? authorization,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/dropdown/retail-projects');
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<DropdownElement>, DropdownElement>($request);
  }

  @override
  Future<Response<List<RegionalGrouping>>> _dropdownRegionalGroupingListGet({
    String? authorization,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/dropdown/regional-grouping-list');
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<RegionalGrouping>, RegionalGrouping>($request);
  }

  @override
  Future<Response<List<DropdownElement>>> _dropdownProgramAreaNoOfoListGet({
    String? authorization,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/dropdown/program-area-no-ofo-list');
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<DropdownElement>, DropdownElement>($request);
  }

  @override
  Future<Response<List<DropdownElement>>> _dropdownProgramAreaListGet({
    String? authorization,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/dropdown/program-area-list');
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<DropdownElement>, DropdownElement>($request);
  }

  @override
  Future<Response<List<DropdownElement>>> _dropdownProductVolumesGet({
    String? authorization,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/dropdown/product-volumes');
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<DropdownElement>, DropdownElement>($request);
  }

  @override
  Future<Response<List<DropdownElement>>> _dropdownProductTypesHandledGet({
    String? authorization,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/dropdown/product-types-handled');
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<DropdownElement>, DropdownElement>($request);
  }

  @override
  Future<Response<List<DropdownElement>>> _dropdownOrganizationTypesGet({
    String? authorization,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/dropdown/organization-types');
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<DropdownElement>, DropdownElement>($request);
  }

  @override
  Future<Response<List<DropdownElement>>> _dropdownOieaRegionsGet({
    String? authorization,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/dropdown/oiea-regions');
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<DropdownElement>, DropdownElement>($request);
  }

  @override
  Future<Response<List<DropdownElement>>> _dropdownNoSampleTakenReasonsGet({
    String? authorization,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/dropdown/no-sample-taken-reasons');
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<DropdownElement>, DropdownElement>($request);
  }

  @override
  Future<Response<List<FollowUpDateDTO>>> _dropdownFollowUpDateGet({
    String? authorization,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/dropdown/follow-up-date');
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<FollowUpDateDTO>, FollowUpDateDTO>($request);
  }

  @override
  Future<Response<List<StateCounty>>> _dropdownCountyListGet({
    String? authorization,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/dropdown/county-list');
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<StateCounty>, StateCounty>($request);
  }

  @override
  Future<Response<List<Country>>> _dropdownCountriesGet({
    String? authorization,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/dropdown/countries');
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<Country>, Country>($request);
  }

  @override
  Future<Response<List<DropdownElement>>> _dropdownCerSpeciesGet({
    String? authorization,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/dropdown/cer-species');
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<DropdownElement>, DropdownElement>($request);
  }

  @override
  Future<Response<List<DropdownElement>>> _dropdownCerReviewIntervalsGet({
    String? authorization,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/dropdown/cer-review-intervals');
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<DropdownElement>, DropdownElement>($request);
  }

  @override
  Future<Response<List<DropdownElement>>> _dropdownBusinessTypesGet({
    String? authorization,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/dropdown/business-types');
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<DropdownElement>, DropdownElement>($request);
  }

  @override
  Future<Response<List<DropdownElement>>> _dropdownBusinessActivityListGet({
    String? authorization,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/dropdown/business-activity-list');
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<DropdownElement>, DropdownElement>($request);
  }

  @override
  Future<Response<String>> _firmDeleteIdDelete({
    required int? id,
    String? assuranceNetRoleId,
    String? empId,
    String? regionCode,
    String? subRegionCode,
    String? authorization,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/firm/delete/${id}');
    final Map<String, String> $headers = {
      if (assuranceNetRoleId != null) 'assuranceNetRoleId': assuranceNetRoleId,
      if (empId != null) 'empId': empId,
      if (regionCode != null) 'regionCode': regionCode,
      if (subRegionCode != null) 'subRegionCode': subRegionCode,
      if (authorization != null) 'Authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<String, String>($request);
  }
}
