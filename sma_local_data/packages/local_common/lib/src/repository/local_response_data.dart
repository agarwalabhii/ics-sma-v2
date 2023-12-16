// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:local_common/src/repository/transport_state.dart';

part 'local_response_data.freezed.dart';

/// {@template local_response_data}
/// LocalResponseData description
/// {@endtemplate}
@freezed
class LocalResponseData<D> with _$LocalResponseData {
  /// {@macro local_response_data}
  const factory LocalResponseData({ 
    TransportState? transportState,
    D? body,
    Object? error,
  }) = _LocalResponseData;
}
