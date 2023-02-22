// Dart imports:
import 'dart:io';

// Package imports:
import 'package:retrofit/dio.dart';

// Project imports:
import '../../core/error/app_exception.dart';
import '../../core/usecase/usecase.dart';
import '../../core/utils/data_state.dart';
import '../../core/utils/query_params.dart';
import '../../data/models/api_response_model.dart';
import '../repositories/i_app_repository.dart';
import '../repositories/model_type.dart';

class StoreUseCase<T> extends UseCase<ApiResponseModel<T>, QueryParams> {
  final IAppRepository _appRepository;
  Map<String, dynamic>? data;

  StoreUseCase(this._appRepository);
  
  @override
  Future<DataState<ApiResponseModel<T>>> call(QueryParams query) async{
    try {
      final HttpResponse response = await _appRepository.store(query);
      if (response.response.statusCode == HttpStatus.ok) {
        return DataState.success(
          ApiResponseModel<T>.fromJson(
            response.data, 
            (json) => ModelType.getModel<T>(json!),
          ),
        );
      } else {
        return DataState.failure(AppException(response.data).handleError);
      }
    } catch (error){
      return DataState.failure(AppException(error).handleError);
    }
  }
}
