import 'dart:io';

import 'package:dio/dio.dart';
import 'package:my_core/src/core/usecase/usecase.dart';
import 'package:my_core/src/core/utils/data_state.dart';
import 'package:my_core/src/core/utils/query_params.dart';
import 'package:my_core/src/data/models/api_pagination_model.dart';
import 'package:my_core/src/data/models/api_response_model.dart';
import 'package:my_core/src/domain/repositories/i_app_repository.dart';
import 'package:my_core/src/domain/repositories/model_type.dart';
import 'package:retrofit/retrofit.dart';

import '../../core/error/error_handler.dart';

class GetIndexDataUseCase<T> extends UseCase<ApiResponseModel<ApiPaginationModel<T>>, QueryParams>{
  final IAppRepository _appRepository;

  GetIndexDataUseCase(this._appRepository);
  
  @override
  Future<DataState<ApiResponseModel<ApiPaginationModel<T>>>> call(QueryParams query) async{
    try {
      HttpResponse response = await _appRepository.getGeneralData(query);
      if(response.response.statusCode == HttpStatus.ok){
        final responseModel = ApiResponseModel<ApiPaginationModel<T>>.fromJson(
          response.data, 
          (json) => ApiPaginationModel<T>.fromJson(
            json as Map<String, dynamic>, 
            (json) => ModelType.getModel<T>(json!)
          )
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