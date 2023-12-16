import 'package:drift/drift.dart';
import 'package:local_common/database.dart';

class ChoiceConverter<T extends ChoiceConfig>
    extends TypeConverter<Choice, int> {
  const ChoiceConverter();

  @override
  Choice<T> fromSql(int fromDb) {
    final value = ChoiceValue.values.firstWhere((x) => x.index == fromDb,
        orElse: () => ChoiceValue.invalid);
    return Choice(value: value);
  }

  @override
  int toSql(Choice value) {
    return value.value.index;
  }
}
