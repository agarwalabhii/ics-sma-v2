// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firm_general_info_tab_provider.g.dart';
part 'firm_general_info_tab_provider.freezed.dart';

@freezed
abstract class FirmGeneralInfoTabState with _$FirmGeneralInfoTabState {
  factory FirmGeneralInfoTabState({
    @Default(false) bool? deleteFirmRecord,
    @Default(false) bool? contactRegionalOffice,
    @Default(false) bool? firmUnderOrder,
    @Default(false) bool? orderIsIndefinite,
    @Default(false) bool? sameAsMailingAddress,

    @Default(null) DateTime? expirationOfOrder,
    @Default(false) bool? applyToAll,
    @Default(false) bool? sundayHours,
    @Default(false) bool? mondayHours,
    @Default(false) bool? tuesdayHours,
    @Default(false) bool? wednesdayHours,
    @Default(false) bool? thursdayHours,
    @Default(false) bool? fridayHours,
    @Default(false) bool? saturdayHours,
    @Default("") String? primaryBusinessType,
    @Default("") String? secondaryBusinessType,
    @Default("") String? tertiaryBusinessType,
    @Default("17:00") String? saturdayClose,
    @Default("09:00") String? saturdayOpen,
    @Default("17:00") String? sundayClose,
    @Default("09:00") String? sundayOpen,
    @Default("17:00") String? mondayClose,
    @Default("09:00") String? mondayOpen,
    @Default("09:00") String? tuesdayOpen,
    @Default("17:00") String? tuesdayClose,
    @Default("17:00") String? wednesdayClose,
    @Default("09:00") String? wednesdayOpen,
    @Default("17:00") String? thursdayClose,
    @Default("09:00") String? thursdayOpen,
    @Default("17:00") String? fridayClose,
    @Default("09:00") String? fridayOpen,
  }) = _FirmGeneralInfoTabState;
}

@riverpod
class FirmGeneralInfoNotifier extends _$FirmGeneralInfoNotifier {
  FirmGeneralInfoNotifier();

  @override
  FirmGeneralInfoTabState build() {
    return FirmGeneralInfoTabState();
  }

  void setDeleteFirmRecord(bool? newValue) =>
      state = state.copyWith(deleteFirmRecord: newValue);

  void setContactRegionalOffice(bool? newValue) =>
      state = state.copyWith(contactRegionalOffice: newValue);

  void setFirmUnderOrder(bool? newValue) =>
      state = state.copyWith(firmUnderOrder: newValue);

  void setOrderIsIndefinite(bool? newValue) =>
      state = state.copyWith(orderIsIndefinite: newValue);

  void setSameAsMailingAddress(bool? newValue) =>
      state = state.copyWith(sameAsMailingAddress: newValue);

  void setExpirationOfOrder(DateTime? newValue) {
    state = state.copyWith(expirationOfOrder: newValue);
  }

  void setApplyToAll(bool? newValue) {
      state = state.copyWith(applyToAll: newValue);
  }

  void setSundayHours(bool? newValue) =>
      state = state.copyWith(sundayHours: newValue);
      
  void setPrimaryBusinessType(String? newValue) =>
      state = state.copyWith(primaryBusinessType: newValue);

  void setSecondaryBusinessType(String? newValue) =>
      state = state.copyWith(secondaryBusinessType: newValue);

  void setTertiaryBusinessType(String? newValue) =>
      state = state.copyWith(tertiaryBusinessType: newValue);
      
  void setSundayOpen(String? newValue) =>
      state = state.copyWith(sundayOpen: newValue);

  void setSundayClose(String? newValue) =>
      state = state.copyWith(sundayClose: newValue);

  void setMondayHours(bool? newValue) =>
      state = state.copyWith(mondayHours: newValue);

  void setMondayOpen(String? newValue) =>
      state = state.copyWith(mondayOpen: newValue);

  void setMondayClose(String? newValue) =>
      state = state.copyWith(mondayClose: newValue);

  void setTuesdayHours(bool? newValue) =>
      state = state.copyWith(tuesdayHours: newValue);

  void setTuesdayOpen(String? newValue) =>
      state = state.copyWith(tuesdayOpen: newValue);

  void setTuesdayClose(String? newValue) =>
      state = state.copyWith(tuesdayClose: newValue);

  void setWednesdayHours(bool? newValue) =>
      state = state.copyWith(wednesdayHours: newValue);

  void setWednesdayOpen(String? newValue) =>
      state = state.copyWith(wednesdayOpen: newValue);

  void setWednesdayClose(String? newValue) =>
      state = state.copyWith(wednesdayClose: newValue);

  void setThursdayHours(bool? newValue) =>
      state = state.copyWith(thursdayHours: newValue);

  void setThursdayOpen(String? newValue) =>
      state = state.copyWith(thursdayOpen: newValue);

  void setThursdayClose(String? newValue) =>
      state = state.copyWith(thursdayClose: newValue);

  void setFridayHours(bool? newValue) =>
      state = state.copyWith(fridayHours: newValue);

  void setFridayOpen(String? newValue) =>
      state = state.copyWith(fridayOpen: newValue);

  void setFridayClose(String? newValue) =>
      state = state.copyWith(fridayClose: newValue);

  void setSaturdayHours(bool? newValue) =>
      state = state.copyWith(saturdayHours: newValue);

  void setSaturdayOpen(String? newValue) =>
      state = state.copyWith(saturdayOpen: newValue);

  void setSaturdayClose(String? newValue) =>
      state = state.copyWith(saturdayClose: newValue);
}
