abstract class GovformModel {
  int? get version;
}

enum GovformType {
  form5420V3,
  form8160V1,
  formFirmRecordV1,
  formSurvRecordV1;
}

class GovformRequest {
  final GovformType type;
  final int? firmId;
  final int? survId;

  GovformRequest({required this.type, this.firmId, this.survId});

  GovformRequest.form5420V3(int survId) :
    this(type: GovformType.form5420V3, survId: survId, firmId: null);

  GovformRequest.form8160V1(int survId) :
    this(type: GovformType.form8160V1, survId: survId, firmId: null);

  GovformRequest.formFirmRecordV1(int firmId) :
    this(type: GovformType.form8160V1, survId: null, firmId: firmId);

  GovformRequest.formSurvRecordV1(int survId) :
    this(type: GovformType.form8160V1, survId: survId, firmId: null);
}

class GovformResponse<T> {
  final T? body;
  final Object? error;

  GovformResponse({this.body, this.error});
}