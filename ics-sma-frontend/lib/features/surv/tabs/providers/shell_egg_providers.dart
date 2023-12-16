import 'package:flutter_riverpod/flutter_riverpod.dart';

class CoolersData {
  final String alias;
  final String temp1;
  final String temp2;
  final String temp3;
  final String temp4;
  final String temp5;
  final List<String> list;

  CoolersData(
      {this.alias = "",
      this.temp1 = "",
      this.temp2 = "",
      this.temp3 = "",
      this.temp4 = "",
      this.temp5 = "",
      this.list = const []});

  CoolersData copyWith({alias, temp1, temp2, temp3, temp4, temp5, list}) {
    return CoolersData(
      alias: alias ?? this.alias,
      temp1: temp1 ?? this.temp1,
      temp2: temp2 ?? this.temp2,
      temp3: temp3 ?? this.temp3,
      temp4: temp4 ?? this.temp4,
      temp5: temp5 ?? this.temp5,
      list: list ?? this.list,
    );
  }
}

class TransportData {
  final String alias;
  final String temp1;
  final String temp2;
  final String temp3;
  final List<String> list;

  TransportData(
      {this.alias = "",
      this.temp1 = "",
      this.temp2 = "",
      this.temp3 = "",
      this.list = const []});

  TransportData copyWith({alias, temp1, temp2, temp3, list}) {
    return TransportData(
      alias: alias ?? this.alias,
      temp1: temp1 ?? this.temp1,
      temp2: temp2 ?? this.temp2,
      temp3: temp3 ?? this.temp3,
      list: list ?? this.list,
    );
  }
}

final coolerProvider =
    NotifierProvider<CoolersNotifer, CoolersData>(CoolersNotifer.new);

class CoolersNotifer extends Notifier<CoolersData> {
  void addAlias(String input) {
    state = state.copyWith(alias: input);
  }

  void addTemp1(String input) {
    state = state.copyWith(temp1: input);
  }

  void addTemp2(String input) {
    state = state.copyWith(temp2: input);
  }

  void addTemp3(String input) {
    state = state.copyWith(temp3: input);
  }

  void addTemp4(String input) {
    state = state.copyWith(temp4: input);
  }

  void addTemp5(String input) {
    state = state.copyWith(temp5: input);
  }

  @override
  CoolersData build() {
    return CoolersData();
  }
}

final transportListProvider =
    Provider<List<TransportData>>((ref) => <TransportData>[]);

final coolerListProvider =
    Provider<List<CoolersData>>((ref) => <CoolersData>[]);

final transportProvider =
    NotifierProvider<TransportNotifer, TransportData>(TransportNotifer.new);

class TransportNotifer extends Notifier<TransportData> {
  void addAlias(String input) {
    state = state.copyWith(alias: input);
  }

  void addTemp1(String input) {
    state = state.copyWith(temp1: input);
  }

  void addTemp2(String input) {
    state = state.copyWith(temp2: input);
  }

  void addTemp3(String input) {
    state = state.copyWith(temp3: input);
  }

  @override
  TransportData build() {
    return TransportData();
  }
}
