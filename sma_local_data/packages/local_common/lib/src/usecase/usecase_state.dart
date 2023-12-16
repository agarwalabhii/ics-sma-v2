import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:local_common/database.dart';

part 'usecase_state.freezed.dart';
part 'usecase_state.g.dart';

/// {@template employee}
/// UsecaseState description
/// {@endtemplate}
@freezed
class UsecaseState with _$UsecaseState {
  /// {@macro usecase_state}
  const factory UsecaseState({
    DateTime? startTimestamp,
    DateTime? endTimestamp,
    @Default(0) int durationInMillis,
    @Default(0) int count,
    @Default([]) List<TransportState> transportStates,
    Object? lastError,
  }) = _UsecaseState;
  
    /// Creates a UsecaseState from Json map
  factory UsecaseState.fromJson(Map<String, dynamic> data) => UsecaseState.fromJson(data);
}
