import 'package:freezed_annotation/freezed_annotation.dart';

import '../error/error.dart';
part 'data_state.freezed.dart';

@freezed
abstract class DataState<T> with _$DataState<T>{
  const factory DataState.success(T? data) = Success<T>;
  const factory DataState.failure(Error? data) = Failure<T>;
}