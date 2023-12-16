import 'package:drift/drift.dart';
import 'package:local_common/database.dart';

class MultiStringConverter extends TypeConverter<MultiString?, String?> {
  const MultiStringConverter();

  @override
  MultiString? fromSql(String? fromDb) {
    return fromDb != null ? MultiString.fromString(fromDb) : null;
  }

  @override
  String? toSql(MultiString? value) {
    return value?.oneString;
  }
}
