import 'package:anet/features/firm/tabs/providers/firm_name_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_local_data/sma_local_data.dart';

final organizationStructureTabStateProvider = NotifierProvider<
    OrganizationStructureTabNotifier,
    OrganizationStructureTabState>(OrganizationStructureTabNotifier.new);

class OrganizationStructureTabNotifier
    extends Notifier<OrganizationStructureTabState> {

  void setSameAsFirmName(bool? input) {
    if (input == null || !input) {
      state = state.copyWith(sameAsFirmName: false, firmName: null);
      return;
    }
    if (input) {
      state = state.copyWith(sameAsFirmName: true, firmName: state.orgName);
    }
  }

  void setSelectedRadioTile(int? input) {
    if (input == null) {
      state = state.copyWith(
          selectedRadioTile: LocationRefType.firmOrganizationStruct.index);
      return;
    }
    state = state.copyWith(selectedRadioTile: input);
  }

  void setFirmName(String? input) {
    if (input == null) return;
    state = state.copyWith(firmName: input);
  }

  void setOfficalName1(String? input) {
    if (input == null) return;
    state = state.copyWith(officalName1: input);
  }

  void setOfficalName2(String? input) {
    if (input == null) return;
    state = state.copyWith(officalName2: input);
  }

  void setOfficalName3(String? input) {
    if (input == null) return;
    state = state.copyWith(officalName3: input);
  }

  void setOfficalName4(String? input) {
    if (input == null) return;
    state = state.copyWith(officalName4: input);
  }

  void setOfficalTitle1(String? input) {
    if (input == null) return;
    state = state.copyWith(officalTitle1: input);
  }

  void setOfficalTitle2(String? input) {
    if (input == null) return;
    state = state.copyWith(officalTitle2: input);
  }

  void setOfficalTitle3(String? input) {
    if (input == null) return;
    state = state.copyWith(officalTitle3: input);
  }

  void setOfficalTitle4(String? input) {
    if (input == null) return;
    state = state.copyWith(officalTitle4: input);
  }

  @override
  OrganizationStructureTabState build() {
    final String name = ref.watch(firmNameProvider);
    return OrganizationStructureTabState(
      false,
      3,
      null,
      null,
      ref,
      name,
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
    );
  }
}

class OrganizationStructureTabState {
  final bool sameAsFirmName;
  final int selectedRadioTile;
  final String? firmName;
  final String? orgType;
  final Ref ref;
  final String orgName;
  final String officalName1;
  final String officalTitle1;
  final String officalName2;
  final String officalTitle2;
  final String officalName3;
  final String officalTitle3;
  final String officalName4;
  final String officalTitle4;

  OrganizationStructureTabState(
      this.sameAsFirmName, this.selectedRadioTile,
      this.orgType,
      this.firmName,
      this.ref,
      this.orgName,
      this.officalName1,
      this.officalName2,
      this.officalName3,
      this.officalName4,
      this.officalTitle1,
      this.officalTitle2,
      this.officalTitle3,
      this.officalTitle4);

  OrganizationStructureTabState copyWith(
      {sameAsFirmName,
    selectedRadioTile,
    orgType,
    firmName,
    officalName1,
    officalName2,
    officalName3,
    officalName4,
    officalTitle1,
    officalTitle2,
    officalTitle3,
    officalTitle4,
  }) {
    return OrganizationStructureTabState(
        sameAsFirmName ?? this.sameAsFirmName,
        selectedRadioTile ?? this.selectedRadioTile,
        orgType ?? this.orgType,
        firmName ?? this.firmName,
        ref,
      orgName,
      officalName1 ?? this.officalName1,
      officalName2 ?? this.officalName2,
      officalName3 ?? this.officalName3,
      officalName4 ?? this.officalName4,
      officalTitle1 ?? this.officalTitle1,
      officalTitle2 ?? this.officalTitle2,
      officalTitle3 ?? this.officalTitle3,
      officalTitle4 ?? this.officalTitle4,
    );
  }
}
