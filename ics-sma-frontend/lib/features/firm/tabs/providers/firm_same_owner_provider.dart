import 'package:flutter_riverpod/flutter_riverpod.dart';

final sameAsOwnerProvider =
    NotifierProvider<SameAsOwnerNotifier, SameAsOwnerState>(
        SameAsOwnerNotifier.new);

class SameAsOwnerNotifier extends Notifier<SameAsOwnerState> {
  void setFirmName(String? input) {
    if (input == null) return;
    state = state.copyWith(firmName: input);
  }

  void setFirmTitle(String? input) {
    if (input == null) return;
    state = state.copyWith(firmTitle: input);
  }

  void setFirmPhone(String? input) {
    if (input == null) return;
    state = state.copyWith(firmPhone: input);
  }

  void setFirmExt(String? input) {
    if (input == null) return;
    state = state.copyWith(firmExt: input);
  }

  void setFirmMobile(String? input) {
    if (input == null) return;
    state = state.copyWith(firmMobile: input);
  }

  void setFirmFax(String? input) {
    if (input == null) return;
    state = state.copyWith(firmFax: input);
  }

  void setFirmEmail(String? input) {
    if (input == null) return;
    state = state.copyWith(firmEmail: input);
  }
  
  void setFirmMessages(bool? input) {
    if (input == null) return;
    state = state.copyWith(firmMessages: input);
  }

  @override
  SameAsOwnerState build() {
    return SameAsOwnerState(
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      false,
      ref,
    );
  }
}

class SameAsOwnerState {
  final String? firmName;
  final String? firmTitle;
  final String? firmPhone;
  final String? firmExt;
  final String? firmMobile;
  final String? firmFax;
  final String? firmEmail;
  final bool? firmMessages;
  final Ref ref;

  SameAsOwnerState(this.firmName, this.firmTitle, this.firmPhone, this.firmExt,
      this.firmMobile,
      this.firmFax,
      this.firmEmail,
      this.firmMessages,
      this.ref);

  SameAsOwnerState copyWith(
      {firmName,
      firmTitle,
      firmPhone,
      firmExt,
      firmMobile,
      firmFax,
      firmMessages,
      firmEmail}) {
    return SameAsOwnerState(
        firmName ?? this.firmName,
        firmTitle ?? this.firmTitle,
        firmPhone ?? this.firmPhone,
        firmExt ?? this.firmExt,
        firmMobile ?? this.firmMobile,
        firmFax ?? this.firmFax,
        firmEmail ?? this.firmEmail,
        firmMessages ?? firmMessages,
        ref);
  }
}
