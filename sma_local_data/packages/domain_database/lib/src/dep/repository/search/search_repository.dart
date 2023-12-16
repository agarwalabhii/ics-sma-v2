import 'dart:async';

import 'package:domain_database/domain_database.dart';
import 'package:domain_database/src/dep/repository/search/search_result.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:local_common/common.dart';

class SearchRepository {
  Future<List<SearchResultModel>> search(
      WidgetRef ref, SearchCriteria criteria) async {
    try {
      final db = ref.watch(DomainDatabase.provider);
      switch (criteria.type) {
        case SearchType.firmId:
          final firmId = int.parse(criteria.value);
          final firmGeneralInfo = await db.searchDao.byFirmId(firmId);
          if (firmGeneralInfo != null) {
            return _buildResultList(db, <FirmGeneralInfoData>[firmGeneralInfo]);
          }
        case SearchType.firmName:
          final firmName = criteria.value;
          final firmGeneralInfo = await db.searchDao.byFirmName(firmName);
          return _buildResultList(db, firmGeneralInfo);
        case SearchType.survId:
          final survId = int.parse(criteria.value);
          final survInfo = await db.searchDao.bySurvId(survId);
          return _buildSurvResultsList(db, <SurvGeneralInfoData>[survInfo!]);
        default:
          // only firm id search for now
          return [];
      }
    } catch (e) {
      print("search: $e");
    }
    return [];
  }

  Future<List<SearchResultModel>> _buildSurvResultsList(
      DomainDatabase db, List<SurvGeneralInfoData> survGenInfo) async {
    final list = <SearchResultModel>[];

    for (final element in survGenInfo) {
      PhysicalLocationData? location;
      final locationRef =
          await db.locationDao.refsBy(element.id, LocationRefType.firmMain);
      if (locationRef != null) {
        location = await db.locationDao.locationById(locationRef.locationId);
      }
      final surv = await db.byId(element.id, db.surv);
      list.add(_fromSurvTables(element, location, surv));
    }
    return list;
  }

  Future<List<SearchResultModel>> _buildResultList(
      DomainDatabase db, List<FirmGeneralInfoData> firmGeneralInfos) async {
    var list = <SearchResultModel>[];

    for (var element in firmGeneralInfos) {
      PhysicalLocationData? location;
      final locationRef =
          await db.locationDao.refsBy(element.id, LocationRefType.firmMain);
      if (locationRef != null) {
        location = await db.locationDao.locationById(locationRef.locationId);
      }
      final firm = await db.byId(element.id, db.firm);
      list.add(_fromTables(element, location, firm));
    }

    return list;
  }

  SearchResultModel _fromTables(
      FirmGeneralInfoData firmGeneralInfo, PhysicalLocationData? location, FirmData? firm) {
    return SearchResult(
      lastSurvId: firm?.lastSurvId,
      firmId: firmGeneralInfo.id,
      firmName: firmGeneralInfo.name,
      primaryBusinessType: firmGeneralInfo.primaryBusinessType,
      address: location?.address1,
      city: location?.city,
      state: location?.stateCode,
      zipCode: location?.zipCode,
      assignCode: firmGeneralInfo.assignCode,
    );
  }

  SearchResultModel _fromSurvTables(SurvGeneralInfoData survGeneralInfo,
      PhysicalLocationData? location, SurvData? surv) {
    return SearchResult(
      lastSurvId: surv?.id,
      firmId: survGeneralInfo.id,
      firmName: survGeneralInfo.firmNameAtTimeOfAction,
      primaryBusinessType: "",
      address: location?.address1,
      city: location?.city,
      state: location?.stateCode,
      zipCode: location?.zipCode,
      assignCode: "",
    );
  }
}
