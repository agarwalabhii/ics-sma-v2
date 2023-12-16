import 'package:anet/presentation/viewmodel_mixin.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sma_local_data/sma_local_data.dart';

part 'firm_owner_info_form_viewmodel.g.dart';

typedef FirmOwnerInfoFormData = Map<String, dynamic>;

@riverpod
class FirmOwnerInfoFormViewModel extends _$FirmOwnerInfoFormViewModel with ViewModelMixin<FirmOwnerInfoFormData> {
  late final _mutateFirmLocalUsecase = ref.read(mutateLocalFirmUsecaseProvider.notifier);

  @override
  FirmOwnerInfoFormData build(FirmOwnerInfoData? dataClass) {
    return formData = {
      'id': dataClass?.id,
      'dateOfOwnershipUpdate': dataClass?.dateOfOwnershipUpdate,
      'ownerName': dataClass?.ownerName,
      'ownerTitle': dataClass?.ownerTitle,
      'ownerPhone': dataClass?.ownerPhone,
      'ownerExt': dataClass?.ownerExt,
      'ownerFax': dataClass?.ownerFax,
      'ownerEmail': dataClass?.ownerEmail,
      'ownerMobile': dataClass?.ownerMobile,
      'receiveMobileMessages': dataClass?.receiveMobileMessages,
    };
  }

  @override
  Future<void> createOrUpdate() async {
    final dataClass = FirmOwnerInfoData.fromJson(formData!);
    await _mutateFirmLocalUsecase.firmOwnerInfo.createSingle(
        dataClass: dataClass, updateStateFunc: (_) {});
  }

  void setDateOfOwnershipUpdate(DateTime value) => setValue('dateOfOwnershipUpdate', value);

  void setOwnerName(String value) => setValue('ownerName', value);

  void setOwnerTitle(String value) => setValue('ownerTitle', value);

  void setOwnerPhone(String value) => setValue('ownerPhone', value);

  void setOwnerExt(String value) => setValue('ownerExt', value);

  void setOwnerFax(String value) => setValue('ownerFax', value);

  void setOwnerEmail(String value) => setValue('ownerEmail', value);

  void setOwnerMobile(String value) => setValue('ownerMobile', value);

  void setReceiveMobileMessages(bool? value) => setValue('receiveMobileMessages', value);
}

extension FirmOwnerInfoFormDataAttrs on FirmOwnerInfoFormData {
  int? get id => this['id'];
  DateTime? get dateOfOwnershipUpdate => this['dateOfOwnershipUpdate'];
  String? get ownerName => this['ownerName'];
  String? get ownerTitle => this['ownerTitle'];
  String? get ownerPhone => this['ownerPhone'];
  String? get ownerExt => this['ownerExt'];
  String? get ownerFax => this['ownerFax'];
  String? get ownerEmail => this['ownerEmail'];
  String? get ownerMobile => this['ownerMobile'];
  bool? get receiveMobileMessages => this['receiveMobileMessages'];
}
