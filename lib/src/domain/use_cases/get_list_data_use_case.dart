import 'dart:io';

import 'package:dio/dio.dart';
import 'package:my_core/src/core/usecase/usecase.dart';
import 'package:my_core/src/core/utils/data_state.dart';
import 'package:my_core/src/core/utils/query_params.dart';
import 'package:my_core/src/data/models/api_response_model.dart';
import 'package:my_core/src/domain/repositories/i_app_repository.dart';
import 'package:my_core/src/domain/repositories/model_type.dart';
import 'package:retrofit/retrofit.dart';

import '../../core/error/error_handler.dart';

class GetListDataUseCase<T> extends UseCase<ApiResponseModel<List<T>>, QueryParams>{
  final IAppRepository _appRepository;

  GetListDataUseCase(this._appRepository);
  
  @override
  Future<DataState<ApiResponseModel<List<T>>>> call(QueryParams query) async{
    try {
      HttpResponse response = await _appRepository.getGeneralData(query);
      if(response.response.statusCode == HttpStatus.ok){
        final responseModel = ApiResponseModel<List<T>>.fromJson(
          response.data, 
          (json) => (json as List<T>).map((e) => ModelType.getModel<T>(e as Object)).toList(),
        );
        return DataState.success(responseModel);
      }else{
        return DataState.failure(ErrorHandler.handleError(response.data));
      }
    } on DioError catch (error) {
      return DataState.failure(ErrorHandler.handleError(error));
    }  
  }
}