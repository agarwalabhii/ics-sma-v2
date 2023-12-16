import 'package:drift/drift.dart';

abstract class DataClassBehavioral<D extends DataClass> extends DataClass {
  const DataClassBehavioral({this.isRowRequired = true, this.emptyTestFunc});

  final bool isRowRequired;
  final bool Function()? emptyTestFunc;

  bool get skipCreate => !isRowRequired && (emptyTestFunc != null)
      ? emptyTestFunc!()
      : false;
}
