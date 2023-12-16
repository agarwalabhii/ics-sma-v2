// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transport_state.freezed.dart';
part 'transport_state.g.dart';

typedef UpdateStateFunc = void Function(TransportState transportState);

/// {@template transport_state}
/// TransportState description
/// {@endtemplate}
@freezed
class TransportState with _$TransportState {
  /// {@macro transport_state}
  const factory TransportState({ 
    String? name,
    DateTime? startTimestamp,
    DateTime? endTimestamp,
    @Default(0) int durationInMillis,
    @Default(0) int count,
    @Default([]) List<String> messages,
  }) = _TransportState;
  
    /// Creates a TransportState from Json map
  factory TransportState.fromJson(Map<String, dynamic> data) => TransportState.fromJson(data);
}
