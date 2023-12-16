import 'package:anet/presentation/viewmodel_mixin.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sma_local_data/sma_local_data.dart';

part 'firm_additional_info_form_viewmodel.g.dart';

typedef FirmAdditionalInfoFormData = Map<String, dynamic>;

@riverpod
class FirmAdditionalInfoFormViewModel extends _$FirmAdditionalInfoFormViewModel  with ViewModelMixin<FirmAdditionalInfoFormData> {
  late final _mutateFirmLocalUsecase = ref.read(mutateLocalFirmUsecaseProvider.notifier);

  @override
  FirmAdditionalInfoFormData build(FirmAdditionalInfoData? dataClass) {
    return formData = {
      'id': dataClass?.id,
      'otherRegulatoryInfo': dataClass?.otherRegulatoryInfo,
      'additionalComments': dataClass?.additionalComments,
      'updatePestInfo': dataClass?.updatePestInfo,
      'pestControlId': dataClass?.pestControlId,
      'datePestControl': dataClass?.datePestControl,
      'pestSelfAdmin': dataClass?.pestSelfAdmin,
      'pestControlName': dataClass?.pestControlName,
      'frequency': dataClass?.frequency,
      'comments': dataClass?.comments,
      'address1': dataClass?.address1,
      'address2': dataClass?.address2,
      'city': dataClass?.city,
      'stateCode': dataClass?.stateCode,
      'zipCode': dataClass?.zipCode,
      'phone': dataClass?.phone,
      'ext': dataClass?.ext,
      'mobile': dataClass?.mobile,
      'email': dataClass?.email,
      'updatePestUIState': false,
      'selfAdminUIState': false,
      'frequencyUIState': "",
    };
  }

  @override
  Future<void> createOrUpdate() async {
    final dataClass = FirmAdditionalInfoData.fromJson(formData!);
    await _mutateFirmLocalUsecase.firmAdditionalData.createSingle(
        dataClass: dataClass, updateStateFunc: (_) {});
  }

  void setOtherRegulatoryInfo(String? value) => setValue('otherRegulatoryInfo', value);

  void setAdditionalComments(String? value) => setValue('additionalComments', value);

  void setUpdatePestInfo(bool? value) => setValue('updatePestInfo', value);

  void setDatePestControl(DateTime? value) => setValue('datePestControl', value);

  void setPestSelfAdmin(bool? value) => setValue('pestSelfAdmin', value);

  void setPestControlName(String? value) => setValue('pestControlName', value);

  void setFrequency(String? value) => setValue('frequency', value);

  void setComments(String? value) => setValue('comments', value);

  void setAddress1(String? value) => setValue('address1', value);

  void setAddress2(String? value) => setValue('address2', value);

  void setCity(String? value) => setValue('city', value);

  void setStateCode(String? value) => setValue('stateCode', value);

  void setZipCode(String? value) => setValue('zipCode', value);

  void setPhone(String? value) => setValue('phone', value);

  void setExt(String? value) => setValue('ext', value);

  void setMobile(String? value) => setValue('mobile', value);

  void setEmail(String? value) => setValue('email', value);

  void setUpdatePestUIState(bool? value) => setValue('updatePestUIState', value);

  void setSelfAdminUIState(bool? value) => setValue('selfAdminUIState', value);
  
  void setFrequencyUIState(String? value) => setValue('frequencyUIState', value);
}

extension FirmAdditionalInfoFormDataAttrs on FirmAdditionalInfoFormData {
  int? get id => this['id'];
  String? get otherRegulatoryInfo => this['otherRegulatoryInfo'];
  String? get additionalComments => this['additionalComments'];
  bool? get updatePestInfo => this['updatePestInfo'];
  int? get pestControlId => this['pestControlId'];
  DateTime? get datePestControl => this['datePestControl'];
  bool? get pestSelfAdmin => this['pestSelfAdmin'];
  String? get pestControlName => this['pestControlName'];
  String? get frequency => this['frequency'];
  String? get comments => this['comments'];
  String? get address1 => this['address1'];
  String? get address2 => this['address2'];
  String? get city => this['city'];
  String? get stateCode => this['stateCode'];
  String? get zipCode => this['zipCode'];
  String? get phone => this['phone'];
  String? get ext => this['ext'];
  String? get mobile => this['mobile'];
  String? get email => this['email'];
  bool? get updatePestUIState => this['updatePestUIState'];
  bool? get selfAdminUIState => this['selfAdminUIState'];
  String? get frequencyUIState => this['frequencyUIState'];
}
