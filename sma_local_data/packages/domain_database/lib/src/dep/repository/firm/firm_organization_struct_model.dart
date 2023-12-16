import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model_base.dart';

abstract class FirmOrganizationStructModel extends ModelBase {
  String? get organizationName1;
  void setOrganizationName1(WidgetRef ref, String? newValue);
  String? get organizationType1;
  void setOrganizationType1(WidgetRef ref, String? newValue);
  bool? get sameAsFirmName;
  void setSameAsFirmName(WidgetRef ref, bool? newValue);
  bool? get sameAsPhysicalAddress;
  void setSameAsPhysicalAddress(WidgetRef ref, bool? newValue);
  bool? get sameAsMailingAddress;
  void setSameAsMailingAddress(WidgetRef ref, bool? newValue);

  String? get officalName1;
  void setOfficalName1(WidgetRef ref, String? newValue);
  String? get officalName2;
  void setOfficalName2(WidgetRef ref, String? newValue);
  String? get officalName3;
  void setOfficalName3(WidgetRef ref, String? newValue);
  String? get officalName4;
  void setOfficalName4(WidgetRef ref, String? newValue);

  String? get officalTitle1;
  void setOfficalTitle1(WidgetRef ref, String? newValue);
  String? get officalTitle2;
  void setOfficalTitle2(WidgetRef ref, String? newValue);
  String? get officalTitle3;
  void setOfficalTitle3(WidgetRef ref, String? newValue);
  String? get officalTitle4;
  void setOfficalTitle4(WidgetRef ref, String? newValue);
}
