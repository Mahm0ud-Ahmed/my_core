// part of 'api_data_bloc.dart';

import 'package:my_core/src/presentation/blocs/data_bloc/api_data_event.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/error/error.dart';
import '../../../data/models/api_response_model.dart';
part 'api_data_state.freezed.dart';

@freezed
class ApiDataState<T> with _$ApiDataState<T>{

  const factory ApiDataState.idle() = ApiDataIdle;

  const factory ApiDataState.loading({
    required ApiDataEvent event
  }) = ApiDataLoading;

  const factory ApiDataState.success({
    required T? data, 
    required ApiResponseModel<T?> response, 
    required ApiDataEvent event,
  }) = ApiDataSuccess<T>;

  const factory ApiDataState.error({
    required Error? error, 
    required ApiDataEvent event
  }) = ApiDataError<T>;
}
