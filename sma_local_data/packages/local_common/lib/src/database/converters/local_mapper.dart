import 'package:drift/drift.dart';

abstract class LocalMapper<L, C, D extends DataClass> {
  C get companion;

  L? fromDataClass(D? dataClass);
}