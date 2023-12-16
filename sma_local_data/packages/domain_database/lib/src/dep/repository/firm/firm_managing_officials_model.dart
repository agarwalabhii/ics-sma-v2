import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model_base.dart';

abstract class FirmManagingOfficialsModel extends ModelBase {
  String? get officalName1;
  void setOfficalName1(WidgetRef ref, String? newValue);
  String? get officalTitle1;
  void setOfficalTitle1(WidgetRef ref, String? newValue);
  String? get officalPhone1;
  void setOfficalPhone1(WidgetRef ref, String? newValue);
  String? get officalExt1;
  void setOfficalExt1(WidgetRef ref, String? newValue);
  String? get officalFax1;
  void setOfficalFax1(WidgetRef ref, String? newValue);
  String? get officalEmail1;
  void setOfficalEmail1(WidgetRef ref, String? newValue);
  String? get officalMobile1;
  void setOfficalMobile1(WidgetRef ref, String? newValue);
  bool? get receiveMobileMessages1;
  void setReceiveMobileMessages1(WidgetRef ref, bool? newValue);
  String? get officalName2;
  void setOfficalName2(WidgetRef ref, String? newValue);
  String? get officalTitle2;
  void setOfficalTitle2(WidgetRef ref, String? newValue);
  String? get officalPhone2;
  void setOfficalPhone2(WidgetRef ref, String? newValue);
  String? get officalExt2;
  void setOfficalExt2(WidgetRef ref, String? newValue);
  String? get officalFax2;
  void setOfficalFax2(WidgetRef ref, String? newValue);
  String? get officalEmail2;
  void setOfficalEmail2(WidgetRef ref, String? newValue);
  String? get officalMobile2;
  void setOfficalMobile2(WidgetRef ref, String? newValue);
  bool? get receiveMobileMessages2;
  void setReceiveMobileMessages2(WidgetRef ref, bool? newValue);
  clearOfficial1(WidgetRef ref);
  bool? get sameAsOwnerInfo;
  void setSameAsOwnerInfo(WidgetRef ref, bool? newValue);  
}
