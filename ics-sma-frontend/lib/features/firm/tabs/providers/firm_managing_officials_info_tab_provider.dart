// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firm_managing_officials_info_tab_provider.g.dart';
part 'firm_managing_officials_info_tab_provider.freezed.dart';

@freezed
abstract class FirmManagingOfficialsInfoTabState
    with _$FirmManagingOfficialsInfoTabState {
  factory FirmManagingOfficialsInfoTabState({
    @Default(false) bool? receiveMessagesOnMobilePhone1,
    @Default(false) bool? receiveMessagesOnMobilePhone2,
    @Default(false) bool? sameAsOwnerInfo,
    @Default("") String? officialName1,
    @Default("") String? officialTitle1,
    @Default("") String? officialPhone1,
    @Default("") String? officialExt1,
    @Default("") String? officialEmail1,
    @Default("") String? officialFax1,
    @Default("") String? officialMobile1,
    @Default("") String? officialName2,
    @Default("") String? officialTitle2,
    @Default("") String? officialPhone2,
    @Default("") String? officialExt2,
    @Default("") String? officialEmail2,
    @Default("") String? officialFax2,
    @Default("") String? officialMobile2,
  }) = _FirmManagingOfficialsInfoTabState;
}

@riverpod
class FirmManagingOfficialsInfoNotifier
    extends _$FirmManagingOfficialsInfoNotifier {
  FirmManagingOfficialsInfoNotifier();

  @override
  FirmManagingOfficialsInfoTabState build() {
    return FirmManagingOfficialsInfoTabState();
  }

  void setReceiveMessagesOnMobilePhone1(bool? newValue) =>
      state = state.copyWith(receiveMessagesOnMobilePhone1: newValue);

  void setReceiveMessagesOnMobilePhone2(bool? newValue) =>
      state = state.copyWith(receiveMessagesOnMobilePhone2: newValue);

  void setSameAsOwnerInfo(bool? newValue) =>
      state = state.copyWith(sameAsOwnerInfo: newValue);
  
  void setOfficialName1(String? newValue) =>
      state = state.copyWith(officialName1: newValue);

  void setOfficialTitle1(String? newValue) =>
      state = state.copyWith(officialTitle1: newValue);

  void setOfficialPhone1(String? newValue) =>
      state = state.copyWith(officialPhone1: newValue);

  void setOfficialExt1(String? newValue) =>
      state = state.copyWith(officialExt1: newValue);

  void setOfficialEmail1(String? newValue) =>
      state = state.copyWith(officialEmail1: newValue);

  void setOfficialFax1(String? newValue) =>
      state = state.copyWith(officialFax1: newValue);

  void setOfficialMobile1(String? newValue) =>
      state = state.copyWith(officialMobile1: newValue);

  void setOfficialName2(String? newValue) =>
      state = state.copyWith(officialName2: newValue);

  void setOfficialTitle2(String? newValue) =>
      state = state.copyWith(officialTitle2: newValue);

  void setOfficialPhone2(String? newValue) =>
      state = state.copyWith(officialPhone2: newValue);

  void setOfficialExt2(String? newValue) =>
      state = state.copyWith(officialExt2: newValue);

  void setOfficialEmail2(String? newValue) =>
      state = state.copyWith(officialEmail2: newValue);

  void setOfficialFax2(String? newValue) =>
      state = state.copyWith(officialFax2: newValue);

  void setOfficialMobile2(String? newValue) =>
      state = state.copyWith(officialMobile2: newValue);

  void resetOfficial1() {
    state = state.copyWith(
      officialEmail1: "",
      officialName1: "",
      officialTitle1: "",
      officialPhone1: "",
      officialExt1: "",
      officialFax1: "",
      officialMobile1: "",
    );
  }
  
}
