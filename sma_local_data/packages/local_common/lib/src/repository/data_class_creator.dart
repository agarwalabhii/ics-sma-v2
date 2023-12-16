import 'package:local_common/src/database/data_class_behavioral.dart';

abstract class DataClassCreator<D extends DataClassBehavioral> {
  D createObject(int id);
}