// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firm_additional_info_tab_provider.g.dart';
part 'firm_additional_info_tab_provider.freezed.dart';

@freezed
abstract class FirmAdditionalInfoTabState with _$FirmAdditionalInfoTabState {
  factory FirmAdditionalInfoTabState({
    @Default(false) bool? updatePestControlled,
    @Default(false) bool? selfAdministrated,
    @Default(null) String? frequency,
  }) = _FirmAdditionalInfoTabState;
}

@riverpod
class FirmAdditionalInfoNotifier extends _$FirmAdditionalInfoNotifier {
  FirmAdditionalInfoNotifier();

  @override
  FirmAdditionalInfoTabState build() {
    return FirmAdditionalInfoTabState();
  }

  void setUpdatePestControlled(bool? newValue) =>
      state = state.copyWith(updatePestControlled: newValue);

  void setSelfAdministrated(bool newValue) =>
      state = state.copyWith(selfAdministrated: !newValue);

  void setFrequency(String newValue) =>
      state = state.copyWith(frequency: newValue);
}
