// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'anet_schema.models.swagger.dart';
import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show MultipartFile;
import 'package:chopper/chopper.dart' as chopper;
export 'anet_schema.models.swagger.dart';

part 'anet_schema.swagger.chopper.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class AnetSchema extends ChopperService {
  static AnetSchema create({
    ChopperClient? client,
    http.Client? httpClient,
    Authenticator? authenticator,
    Converter? converter,
    Uri? baseUrl,
    Iterable<dynamic>? interceptors,
  }) {
    if (client != null) {
      return _$AnetSchema(client);
    }

    final newClient = ChopperClient(
        services: [_$AnetSchema()],
        converter: converter ?? $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        client: httpClient,
        authenticator: authenticator,
        baseUrl: baseUrl ?? Uri.parse('http://'));
    return _$AnetSchema(newClient);
  }

  ///
  ///@param assuranceNetRoleId assuranceNetRoleId
  ///@param empId empId
  ///@param regionCode regionCode
  ///@param subRegionCode subRegionCode
  Future<chopper.Response<Surveillance>> surveillancePut({
    Object? assuranceNetRoleId,
    Object? empId,
    Object? regionCode,
    Object? subRegionCode,
    dynamic authorization,
    dynamic cacheControl,
    required Surveillance? body,
  }) {
    generatedMapping.putIfAbsent(
        Surveillance, () => Surveillance.fromJsonFactory);

    return _surveillancePut(
        assuranceNetRoleId: assuranceNetRoleId?.toString(),
        empId: empId?.toString(),
        regionCode: regionCode?.toString(),
        subRegionCode: subRegionCode?.toString(),
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString(),
        body: body);
  }

  ///
  ///@param assuranceNetRoleId assuranceNetRoleId
  ///@param empId empId
  ///@param regionCode regionCode
  ///@param subRegionCode subRegionCode
  @Put(
    path: '/surveillance',
    optionalBody: true,
  )
  Future<chopper.Response<Surveillance>> _surveillancePut({
    @Header('assuranceNetRoleId') String? assuranceNetRoleId,
    @Header('empId') String? empId,
    @Header('regionCode') String? regionCode,
    @Header('subRegionCode') String? subRegionCode,
    @Header('Authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
    @Body() required Surveillance? body,
  });

  ///
  ///@param assuranceNetRoleId assuranceNetRoleId
  ///@param empId empId
  ///@param regionCode regionCode
  ///@param subRegionCode subRegionCode
  Future<chopper.Response<Surveillance>> surveillancePost({
    Object? assuranceNetRoleId,
    Object? empId,
    Object? regionCode,
    Object? subRegionCode,
    dynamic authorization,
    dynamic cacheControl,
    required Surveillance? body,
  }) {
    generatedMapping.putIfAbsent(
        Surveillance, () => Surveillance.fromJsonFactory);

    return _surveillancePost(
        assuranceNetRoleId: assuranceNetRoleId?.toString(),
        empId: empId?.toString(),
        regionCode: regionCode?.toString(),
        subRegionCode: subRegionCode?.toString(),
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString(),
        body: body);
  }

  ///
  ///@param assuranceNetRoleId assuranceNetRoleId
  ///@param empId empId
  ///@param regionCode regionCode
  ///@param subRegionCode subRegionCode
  @Post(
    path: '/surveillance',
    optionalBody: true,
  )
  Future<chopper.Response<Surveillance>> _surveillancePost({
    @Header('assuranceNetRoleId') String? assuranceNetRoleId,
    @Header('empId') String? empId,
    @Header('regionCode') String? regionCode,
    @Header('subRegionCode') String? subRegionCode,
    @Header('Authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
    @Body() required Surveillance? body,
  });

  ///
  ///@param assuranceNetRoleId assuranceNetRoleId
  ///@param empId empId
  ///@param regionCode regionCode
  ///@param subRegionCode subRegionCode
  Future<chopper.Response<FirmInfo>> firmPost({
    Object? assuranceNetRoleId,
    Object? empId,
    Object? regionCode,
    Object? subRegionCode,
    dynamic authorization,
    dynamic cacheControl,
    required FirmInfo? body,
  }) {
    generatedMapping.putIfAbsent(FirmInfo, () => FirmInfo.fromJsonFactory);

    return _firmPost(
        assuranceNetRoleId: assuranceNetRoleId?.toString(),
        empId: empId?.toString(),
        regionCode: regionCode?.toString(),
        subRegionCode: subRegionCode?.toString(),
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString(),
        body: body);
  }

  ///
  ///@param assuranceNetRoleId assuranceNetRoleId
  ///@param empId empId
  ///@param regionCode regionCode
  ///@param subRegionCode subRegionCode
  @Post(
    path: '/firm/',
    optionalBody: true,
  )
  Future<chopper.Response<FirmInfo>> _firmPost({
    @Header('assuranceNetRoleId') String? assuranceNetRoleId,
    @Header('empId') String? empId,
    @Header('regionCode') String? regionCode,
    @Header('subRegionCode') String? subRegionCode,
    @Header('Authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
    @Body() required FirmInfo? body,
  });

  ///
  ///@param page Zero-based page index (0..N)
  ///@param size The size of the page to be returned
  ///@param sort Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported.
  Future<chopper.Response<ModelPageANRole>> userRolesAllGet({
    int? page,
    int? size,
    List<String>? sort,
    dynamic authorization,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        ModelPageANRole, () => ModelPageANRole.fromJsonFactory);

    return _userRolesAllGet(
        page: page,
        size: size,
        sort: sort,
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString());
  }

  ///
  ///@param page Zero-based page index (0..N)
  ///@param size The size of the page to be returned
  ///@param sort Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported.
  @Get(path: '/user/roles/all')
  Future<chopper.Response<ModelPageANRole>> _userRolesAllGet({
    @Query('page') int? page,
    @Query('size') int? size,
    @Query('sort') List<String>? sort,
    @Header('Authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  ///@param page Zero-based page index (0..N)
  ///@param size The size of the page to be returned
  ///@param sort Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported.
  Future<chopper.Response<ModelPageUser>> userAllGet({
    int? page,
    int? size,
    List<String>? sort,
    dynamic authorization,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        ModelPageUser, () => ModelPageUser.fromJsonFactory);

    return _userAllGet(
        page: page,
        size: size,
        sort: sort,
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString());
  }

  ///
  ///@param page Zero-based page index (0..N)
  ///@param size The size of the page to be returned
  ///@param sort Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported.
  @Get(path: '/user/all')
  Future<chopper.Response<ModelPageUser>> _userAllGet({
    @Query('page') int? page,
    @Query('size') int? size,
    @Query('sort') List<String>? sort,
    @Header('Authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  ///@param surveillanceId
  ///@param assuranceNetRoleId assuranceNetRoleId
  ///@param empId empId
  ///@param regionCode regionCode
  ///@param subRegionCode subRegionCode
  Future<chopper.Response<Surveillance>> surveillanceSurveillanceIdGet({
    required int? surveillanceId,
    Object? assuranceNetRoleId,
    Object? empId,
    Object? regionCode,
    Object? subRegionCode,
    dynamic authorization,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        Surveillance, () => Surveillance.fromJsonFactory);

    return _surveillanceSurveillanceIdGet(
        surveillanceId: surveillanceId,
        assuranceNetRoleId: assuranceNetRoleId?.toString(),
        empId: empId?.toString(),
        regionCode: regionCode?.toString(),
        subRegionCode: subRegionCode?.toString(),
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString());
  }

  ///
  ///@param surveillanceId
  ///@param assuranceNetRoleId assuranceNetRoleId
  ///@param empId empId
  ///@param regionCode regionCode
  ///@param subRegionCode subRegionCode
  @Get(path: '/surveillance/{surveillanceId}')
  Future<chopper.Response<Surveillance>> _surveillanceSurveillanceIdGet({
    @Path('surveillanceId') required int? surveillanceId,
    @Header('assuranceNetRoleId') String? assuranceNetRoleId,
    @Header('empId') String? empId,
    @Header('regionCode') String? regionCode,
    @Header('subRegionCode') String? subRegionCode,
    @Header('Authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  ///@param surveillanceId
  ///@param assuranceNetRoleId assuranceNetRoleId
  ///@param empId empId
  ///@param regionCode regionCode
  ///@param subRegionCode subRegionCode
  Future<chopper.Response<String>> surveillanceSurveillanceIdDelete({
    required int? surveillanceId,
    Object? assuranceNetRoleId,
    Object? empId,
    Object? regionCode,
    Object? subRegionCode,
    dynamic authorization,
    dynamic cacheControl,
  }) {
    return _surveillanceSurveillanceIdDelete(
        surveillanceId: surveillanceId,
        assuranceNetRoleId: assuranceNetRoleId?.toString(),
        empId: empId?.toString(),
        regionCode: regionCode?.toString(),
        subRegionCode: subRegionCode?.toString(),
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString());
  }

  ///
  ///@param surveillanceId
  ///@param assuranceNetRoleId assuranceNetRoleId
  ///@param empId empId
  ///@param regionCode regionCode
  ///@param subRegionCode subRegionCode
  @Delete(path: '/surveillance/{surveillanceId}')
  Future<chopper.Response<String>> _surveillanceSurveillanceIdDelete({
    @Path('surveillanceId') required int? surveillanceId,
    @Header('assuranceNetRoleId') String? assuranceNetRoleId,
    @Header('empId') String? empId,
    @Header('regionCode') String? regionCode,
    @Header('subRegionCode') String? subRegionCode,
    @Header('Authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  ///@param date
  ///@param page Zero-based page index (0..N)
  ///@param size The size of the page to be returned
  ///@param sort Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported.
  ///@param assuranceNetRoleId assuranceNetRoleId
  ///@param empId empId
  ///@param regionCode regionCode
  ///@param subRegionCode subRegionCode
  Future<chopper.Response<ModelPageSurveillance>> surveillanceAfterGet({
    required DateTime? date,
    int? page,
    int? size,
    List<String>? sort,
    Object? assuranceNetRoleId,
    Object? empId,
    Object? regionCode,
    Object? subRegionCode,
    dynamic authorization,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        ModelPageSurveillance, () => ModelPageSurveillance.fromJsonFactory);

    return _surveillanceAfterGet(
        date: date,
        page: page,
        size: size,
        sort: sort,
        assuranceNetRoleId: assuranceNetRoleId?.toString(),
        empId: empId?.toString(),
        regionCode: regionCode?.toString(),
        subRegionCode: subRegionCode?.toString(),
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString());
  }

  ///
  ///@param date
  ///@param page Zero-based page index (0..N)
  ///@param size The size of the page to be returned
  ///@param sort Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported.
  ///@param assuranceNetRoleId assuranceNetRoleId
  ///@param empId empId
  ///@param regionCode regionCode
  ///@param subRegionCode subRegionCode
  @Get(path: '/surveillance/after')
  Future<chopper.Response<ModelPageSurveillance>> _surveillanceAfterGet({
    @Query('date') required DateTime? date,
    @Query('page') int? page,
    @Query('size') int? size,
    @Query('sort') List<String>? sort,
    @Header('assuranceNetRoleId') String? assuranceNetRoleId,
    @Header('empId') String? empId,
    @Header('regionCode') String? regionCode,
    @Header('subRegionCode') String? subRegionCode,
    @Header('Authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  ///@param reminderId
  ///@param assuranceNetRoleId assuranceNetRoleId
  ///@param empId empId
  ///@param regionCode regionCode
  ///@param subRegionCode subRegionCode
  Future<chopper.Response<Reminder>> reminderReminderIdGet({
    required int? reminderId,
    Object? assuranceNetRoleId,
    Object? empId,
    Object? regionCode,
    Object? subRegionCode,
    dynamic authorization,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(Reminder, () => Reminder.fromJsonFactory);

    return _reminderReminderIdGet(
        reminderId: reminderId,
        assuranceNetRoleId: assuranceNetRoleId?.toString(),
        empId: empId?.toString(),
        regionCode: regionCode?.toString(),
        subRegionCode: subRegionCode?.toString(),
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString());
  }

  ///
  ///@param reminderId
  ///@param assuranceNetRoleId assuranceNetRoleId
  ///@param empId empId
  ///@param regionCode regionCode
  ///@param subRegionCode subRegionCode
  @Get(path: '/reminder/{reminderId}')
  Future<chopper.Response<Reminder>> _reminderReminderIdGet({
    @Path('reminderId') required int? reminderId,
    @Header('assuranceNetRoleId') String? assuranceNetRoleId,
    @Header('empId') String? empId,
    @Header('regionCode') String? regionCode,
    @Header('subRegionCode') String? subRegionCode,
    @Header('Authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  ///@param firmId
  ///@param assuranceNetRoleId assuranceNetRoleId
  ///@param empId empId
  ///@param regionCode regionCode
  ///@param subRegionCode subRegionCode
  Future<chopper.Response<FirmInfo>> firmFirmIdGet({
    required int? firmId,
    Object? assuranceNetRoleId,
    Object? empId,
    Object? regionCode,
    Object? subRegionCode,
    dynamic authorization,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(FirmInfo, () => FirmInfo.fromJsonFactory);

    return _firmFirmIdGet(
        firmId: firmId,
        assuranceNetRoleId: assuranceNetRoleId?.toString(),
        empId: empId?.toString(),
        regionCode: regionCode?.toString(),
        subRegionCode: subRegionCode?.toString(),
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString());
  }

  ///
  ///@param firmId
  ///@param assuranceNetRoleId assuranceNetRoleId
  ///@param empId empId
  ///@param regionCode regionCode
  ///@param subRegionCode subRegionCode
  @Get(path: '/firm/{firmId}')
  Future<chopper.Response<FirmInfo>> _firmFirmIdGet({
    @Path('firmId') required int? firmId,
    @Header('assuranceNetRoleId') String? assuranceNetRoleId,
    @Header('empId') String? empId,
    @Header('regionCode') String? regionCode,
    @Header('subRegionCode') String? subRegionCode,
    @Header('Authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  ///@param date
  ///@param page Zero-based page index (0..N)
  ///@param size The size of the page to be returned
  ///@param sort Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported.
  ///@param assuranceNetRoleId assuranceNetRoleId
  ///@param empId empId
  ///@param regionCode regionCode
  ///@param subRegionCode subRegionCode
  Future<chopper.Response<ModelPageFirmInfo>> firmAfterGet({
    required DateTime? date,
    int? page,
    int? size,
    List<String>? sort,
    Object? assuranceNetRoleId,
    Object? empId,
    Object? regionCode,
    Object? subRegionCode,
    dynamic authorization,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        ModelPageFirmInfo, () => ModelPageFirmInfo.fromJsonFactory);

    return _firmAfterGet(
        date: date,
        page: page,
        size: size,
        sort: sort,
        assuranceNetRoleId: assuranceNetRoleId?.toString(),
        empId: empId?.toString(),
        regionCode: regionCode?.toString(),
        subRegionCode: subRegionCode?.toString(),
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString());
  }

  ///
  ///@param date
  ///@param page Zero-based page index (0..N)
  ///@param size The size of the page to be returned
  ///@param sort Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported.
  ///@param assuranceNetRoleId assuranceNetRoleId
  ///@param empId empId
  ///@param regionCode regionCode
  ///@param subRegionCode subRegionCode
  @Get(path: '/firm/after')
  Future<chopper.Response<ModelPageFirmInfo>> _firmAfterGet({
    @Query('date') required DateTime? date,
    @Query('page') int? page,
    @Query('size') int? size,
    @Query('sort') List<String>? sort,
    @Header('assuranceNetRoleId') String? assuranceNetRoleId,
    @Header('empId') String? empId,
    @Header('regionCode') String? regionCode,
    @Header('subRegionCode') String? subRegionCode,
    @Header('Authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  ///@param employeeId
  ///@param page Zero-based page index (0..N)
  ///@param size The size of the page to be returned
  ///@param sort Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported.
  Future<chopper.Response<ModelPageEmployee>> employeeEmployeeIdGet({
    required int? employeeId,
    int? page,
    int? size,
    List<String>? sort,
    dynamic authorization,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        ModelPageEmployee, () => ModelPageEmployee.fromJsonFactory);

    return _employeeEmployeeIdGet(
        employeeId: employeeId,
        page: page,
        size: size,
        sort: sort,
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString());
  }

  ///
  ///@param employeeId
  ///@param page Zero-based page index (0..N)
  ///@param size The size of the page to be returned
  ///@param sort Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported.
  @Get(path: '/employee/{employeeId}')
  Future<chopper.Response<ModelPageEmployee>> _employeeEmployeeIdGet({
    @Path('employeeId') required int? employeeId,
    @Query('page') int? page,
    @Query('size') int? size,
    @Query('sort') List<String>? sort,
    @Header('Authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  ///@param employeeId
  ///@param page Zero-based page index (0..N)
  ///@param size The size of the page to be returned
  ///@param sort Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported.
  Future<chopper.Response<ModelPageEmployeeRole>> employeeRolesEmployeeIdGet({
    required int? employeeId,
    int? page,
    int? size,
    List<String>? sort,
    dynamic authorization,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        ModelPageEmployeeRole, () => ModelPageEmployeeRole.fromJsonFactory);

    return _employeeRolesEmployeeIdGet(
        employeeId: employeeId,
        page: page,
        size: size,
        sort: sort,
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString());
  }

  ///
  ///@param employeeId
  ///@param page Zero-based page index (0..N)
  ///@param size The size of the page to be returned
  ///@param sort Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported.
  @Get(path: '/employee/roles/{employeeId}')
  Future<chopper.Response<ModelPageEmployeeRole>> _employeeRolesEmployeeIdGet({
    @Path('employeeId') required int? employeeId,
    @Query('page') int? page,
    @Query('size') int? size,
    @Query('sort') List<String>? sort,
    @Header('Authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  ///@param page Zero-based page index (0..N)
  ///@param size The size of the page to be returned
  ///@param sort Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported.
  Future<chopper.Response<ModelPageEmployeeRole>> employeeRolesAllGet({
    int? page,
    int? size,
    List<String>? sort,
    dynamic authorization,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        ModelPageEmployeeRole, () => ModelPageEmployeeRole.fromJsonFactory);

    return _employeeRolesAllGet(
        page: page,
        size: size,
        sort: sort,
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString());
  }

  ///
  ///@param page Zero-based page index (0..N)
  ///@param size The size of the page to be returned
  ///@param sort Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported.
  @Get(path: '/employee/roles/all')
  Future<chopper.Response<ModelPageEmployeeRole>> _employeeRolesAllGet({
    @Query('page') int? page,
    @Query('size') int? size,
    @Query('sort') List<String>? sort,
    @Header('Authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  ///@param employeeId
  ///@param page Zero-based page index (0..N)
  ///@param size The size of the page to be returned
  ///@param sort Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported.
  Future<chopper.Response<ModelPageEmployeeRole>>
      employeeRolesActiveEmployeeIdGet({
    required int? employeeId,
    int? page,
    int? size,
    List<String>? sort,
    dynamic authorization,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        ModelPageEmployeeRole, () => ModelPageEmployeeRole.fromJsonFactory);

    return _employeeRolesActiveEmployeeIdGet(
        employeeId: employeeId,
        page: page,
        size: size,
        sort: sort,
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString());
  }

  ///
  ///@param employeeId
  ///@param page Zero-based page index (0..N)
  ///@param size The size of the page to be returned
  ///@param sort Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported.
  @Get(path: '/employee/roles/active/{employeeId}')
  Future<chopper.Response<ModelPageEmployeeRole>>
      _employeeRolesActiveEmployeeIdGet({
    @Path('employeeId') required int? employeeId,
    @Query('page') int? page,
    @Query('size') int? size,
    @Query('sort') List<String>? sort,
    @Header('Authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  ///@param page Zero-based page index (0..N)
  ///@param size The size of the page to be returned
  ///@param sort Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported.
  Future<chopper.Response<ModelPageEmployee>> employeeAllGet({
    int? page,
    int? size,
    List<String>? sort,
    dynamic authorization,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        ModelPageEmployee, () => ModelPageEmployee.fromJsonFactory);

    return _employeeAllGet(
        page: page,
        size: size,
        sort: sort,
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString());
  }

  ///
  ///@param page Zero-based page index (0..N)
  ///@param size The size of the page to be returned
  ///@param sort Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported.
  @Get(path: '/employee/all')
  Future<chopper.Response<ModelPageEmployee>> _employeeAllGet({
    @Query('page') int? page,
    @Query('size') int? size,
    @Query('sort') List<String>? sort,
    @Header('Authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  Future<chopper.Response<List<State>>> dropdownUsStatesGet({
    dynamic authorization,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(State, () => State.fromJsonFactory);

    return _dropdownUsStatesGet(
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString());
  }

  ///
  @Get(path: '/dropdown/us-states')
  Future<chopper.Response<List<State>>> _dropdownUsStatesGet({
    @Header('Authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  Future<chopper.Response<List<DropdownElement>>>
      dropdownSurveillanceReasonsGet({
    dynamic authorization,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        DropdownElement, () => DropdownElement.fromJsonFactory);

    return _dropdownSurveillanceReasonsGet(
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString());
  }

  ///
  @Get(path: '/dropdown/surveillance-reasons')
  Future<chopper.Response<List<DropdownElement>>>
      _dropdownSurveillanceReasonsGet({
    @Header('Authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  Future<chopper.Response<List<DropdownElement>>> dropdownSpecialProjectsGet({
    dynamic authorization,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        DropdownElement, () => DropdownElement.fromJsonFactory);

    return _dropdownSpecialProjectsGet(
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString());
  }

  ///
  @Get(path: '/dropdown/special-projects')
  Future<chopper.Response<List<DropdownElement>>> _dropdownSpecialProjectsGet({
    @Header('Authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  Future<chopper.Response<List<DropdownElement>>>
      dropdownShellEggTemperatureListGet({
    dynamic authorization,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        DropdownElement, () => DropdownElement.fromJsonFactory);

    return _dropdownShellEggTemperatureListGet(
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString());
  }

  ///
  @Get(path: '/dropdown/shell-egg-temperature-list')
  Future<chopper.Response<List<DropdownElement>>>
      _dropdownShellEggTemperatureListGet({
    @Header('Authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  Future<chopper.Response<List<DropdownElement>>> dropdownSampleTakenTypesGet({
    dynamic authorization,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        DropdownElement, () => DropdownElement.fromJsonFactory);

    return _dropdownSampleTakenTypesGet(
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString());
  }

  ///
  @Get(path: '/dropdown/sample-taken-types')
  Future<chopper.Response<List<DropdownElement>>> _dropdownSampleTakenTypesGet({
    @Header('Authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  Future<chopper.Response<List<DropdownElement>>>
      dropdownSampleResultStatusesGet({
    dynamic authorization,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        DropdownElement, () => DropdownElement.fromJsonFactory);

    return _dropdownSampleResultStatusesGet(
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString());
  }

  ///
  @Get(path: '/dropdown/sample-result-statuses')
  Future<chopper.Response<List<DropdownElement>>>
      _dropdownSampleResultStatusesGet({
    @Header('Authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  Future<chopper.Response<List<DropdownElement>>> dropdownRetailProjectsGet({
    dynamic authorization,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        DropdownElement, () => DropdownElement.fromJsonFactory);

    return _dropdownRetailProjectsGet(
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString());
  }

  ///
  @Get(path: '/dropdown/retail-projects')
  Future<chopper.Response<List<DropdownElement>>> _dropdownRetailProjectsGet({
    @Header('Authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  Future<chopper.Response<List<RegionalGrouping>>>
      dropdownRegionalGroupingListGet({
    dynamic authorization,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        RegionalGrouping, () => RegionalGrouping.fromJsonFactory);

    return _dropdownRegionalGroupingListGet(
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString());
  }

  ///
  @Get(path: '/dropdown/regional-grouping-list')
  Future<chopper.Response<List<RegionalGrouping>>>
      _dropdownRegionalGroupingListGet({
    @Header('Authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  Future<chopper.Response<List<DropdownElement>>>
      dropdownProgramAreaNoOfoListGet({
    dynamic authorization,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        DropdownElement, () => DropdownElement.fromJsonFactory);

    return _dropdownProgramAreaNoOfoListGet(
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString());
  }

  ///
  @Get(path: '/dropdown/program-area-no-ofo-list')
  Future<chopper.Response<List<DropdownElement>>>
      _dropdownProgramAreaNoOfoListGet({
    @Header('Authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  Future<chopper.Response<List<DropdownElement>>> dropdownProgramAreaListGet({
    dynamic authorization,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        DropdownElement, () => DropdownElement.fromJsonFactory);

    return _dropdownProgramAreaListGet(
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString());
  }

  ///
  @Get(path: '/dropdown/program-area-list')
  Future<chopper.Response<List<DropdownElement>>> _dropdownProgramAreaListGet({
    @Header('Authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  Future<chopper.Response<List<DropdownElement>>> dropdownProductVolumesGet({
    dynamic authorization,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        DropdownElement, () => DropdownElement.fromJsonFactory);

    return _dropdownProductVolumesGet(
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString());
  }

  ///
  @Get(path: '/dropdown/product-volumes')
  Future<chopper.Response<List<DropdownElement>>> _dropdownProductVolumesGet({
    @Header('Authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  Future<chopper.Response<List<DropdownElement>>>
      dropdownProductTypesHandledGet({
    dynamic authorization,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        DropdownElement, () => DropdownElement.fromJsonFactory);

    return _dropdownProductTypesHandledGet(
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString());
  }

  ///
  @Get(path: '/dropdown/product-types-handled')
  Future<chopper.Response<List<DropdownElement>>>
      _dropdownProductTypesHandledGet({
    @Header('Authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  Future<chopper.Response<List<DropdownElement>>> dropdownOrganizationTypesGet({
    dynamic authorization,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        DropdownElement, () => DropdownElement.fromJsonFactory);

    return _dropdownOrganizationTypesGet(
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString());
  }

  ///
  @Get(path: '/dropdown/organization-types')
  Future<chopper.Response<List<DropdownElement>>>
      _dropdownOrganizationTypesGet({
    @Header('Authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  Future<chopper.Response<List<DropdownElement>>> dropdownOieaRegionsGet({
    dynamic authorization,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        DropdownElement, () => DropdownElement.fromJsonFactory);

    return _dropdownOieaRegionsGet(
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString());
  }

  ///
  @Get(path: '/dropdown/oiea-regions')
  Future<chopper.Response<List<DropdownElement>>> _dropdownOieaRegionsGet({
    @Header('Authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  Future<chopper.Response<List<DropdownElement>>>
      dropdownNoSampleTakenReasonsGet({
    dynamic authorization,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        DropdownElement, () => DropdownElement.fromJsonFactory);

    return _dropdownNoSampleTakenReasonsGet(
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString());
  }

  ///
  @Get(path: '/dropdown/no-sample-taken-reasons')
  Future<chopper.Response<List<DropdownElement>>>
      _dropdownNoSampleTakenReasonsGet({
    @Header('Authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  Future<chopper.Response<List<FollowUpDateDTO>>> dropdownFollowUpDateGet({
    dynamic authorization,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        FollowUpDateDTO, () => FollowUpDateDTO.fromJsonFactory);

    return _dropdownFollowUpDateGet(
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString());
  }

  ///
  @Get(path: '/dropdown/follow-up-date')
  Future<chopper.Response<List<FollowUpDateDTO>>> _dropdownFollowUpDateGet({
    @Header('Authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  Future<chopper.Response<List<StateCounty>>> dropdownCountyListGet({
    dynamic authorization,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        StateCounty, () => StateCounty.fromJsonFactory);

    return _dropdownCountyListGet(
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString());
  }

  ///
  @Get(path: '/dropdown/county-list')
  Future<chopper.Response<List<StateCounty>>> _dropdownCountyListGet({
    @Header('Authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  Future<chopper.Response<List<Country>>> dropdownCountriesGet({
    dynamic authorization,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(Country, () => Country.fromJsonFactory);

    return _dropdownCountriesGet(
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString());
  }

  ///
  @Get(path: '/dropdown/countries')
  Future<chopper.Response<List<Country>>> _dropdownCountriesGet({
    @Header('Authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  Future<chopper.Response<List<DropdownElement>>> dropdownCerSpeciesGet({
    dynamic authorization,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        DropdownElement, () => DropdownElement.fromJsonFactory);

    return _dropdownCerSpeciesGet(
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString());
  }

  ///
  @Get(path: '/dropdown/cer-species')
  Future<chopper.Response<List<DropdownElement>>> _dropdownCerSpeciesGet({
    @Header('Authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  Future<chopper.Response<List<DropdownElement>>>
      dropdownCerReviewIntervalsGet({
    dynamic authorization,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        DropdownElement, () => DropdownElement.fromJsonFactory);

    return _dropdownCerReviewIntervalsGet(
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString());
  }

  ///
  @Get(path: '/dropdown/cer-review-intervals')
  Future<chopper.Response<List<DropdownElement>>>
      _dropdownCerReviewIntervalsGet({
    @Header('Authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  Future<chopper.Response<List<DropdownElement>>> dropdownBusinessTypesGet({
    dynamic authorization,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        DropdownElement, () => DropdownElement.fromJsonFactory);

    return _dropdownBusinessTypesGet(
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString());
  }

  ///
  @Get(path: '/dropdown/business-types')
  Future<chopper.Response<List<DropdownElement>>> _dropdownBusinessTypesGet({
    @Header('Authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  Future<chopper.Response<List<DropdownElement>>>
      dropdownBusinessActivityListGet({
    dynamic authorization,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        DropdownElement, () => DropdownElement.fromJsonFactory);

    return _dropdownBusinessActivityListGet(
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString());
  }

  ///
  @Get(path: '/dropdown/business-activity-list')
  Future<chopper.Response<List<DropdownElement>>>
      _dropdownBusinessActivityListGet({
    @Header('Authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  ///@param id
  ///@param assuranceNetRoleId assuranceNetRoleId
  ///@param empId empId
  ///@param regionCode regionCode
  ///@param subRegionCode subRegionCode
  Future<chopper.Response<String>> firmDeleteIdDelete({
    required int? id,
    Object? assuranceNetRoleId,
    Object? empId,
    Object? regionCode,
    Object? subRegionCode,
    dynamic authorization,
    dynamic cacheControl,
  }) {
    return _firmDeleteIdDelete(
        id: id,
        assuranceNetRoleId: assuranceNetRoleId?.toString(),
        empId: empId?.toString(),
        regionCode: regionCode?.toString(),
        subRegionCode: subRegionCode?.toString(),
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString());
  }

  ///
  ///@param id
  ///@param assuranceNetRoleId assuranceNetRoleId
  ///@param empId empId
  ///@param regionCode regionCode
  ///@param subRegionCode subRegionCode
  @Delete(path: '/firm/delete/{id}')
  Future<chopper.Response<String>> _firmDeleteIdDelete({
    @Path('id') required int? id,
    @Header('assuranceNetRoleId') String? assuranceNetRoleId,
    @Header('empId') String? empId,
    @Header('regionCode') String? regionCode,
    @Header('subRegionCode') String? subRegionCode,
    @Header('Authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
  });
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    if (ResultType == String) {
      return response.copyWith();
    }

    if (ResultType == DateTime) {
      return response.copyWith(
          body: DateTime.parse((response.body as String).replaceAll('"', ''))
              as ResultType);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);
