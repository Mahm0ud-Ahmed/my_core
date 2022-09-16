
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../core/error/error_handler.dart';
import '../../core/usecase/usecase.dart';
import '../../core/utils/data_reflection.dart';
import '../../core/utils/data_state.dart';
import '../../core/utils/query_params.dart';
import '../repositories/i_app_repository.dart';

import '../../data/models/api_pagination_model.dart';

class GetSingleDataUseCase<MODEL> extends UseCase{

  final IAppRepository _appRepository;
  DataReflection<MODEL>? _reflection;

  GetSingleDataUseCase(this._appRepository);
  
  @override
  Future<DataState> call({required QueryParams params}) async {
    _reflection = DataReflection();
    try {
      HttpResponse response = await _appRepository.getAllData(params);
      if(response.response.statusCode == HttpStatus.ok){
        DataState dataModel;
        print(MODEL);
        if(MODEL == ApiPaginationModel){
          return DataSuccess(ApiPaginationModel<MODEL>.fromJson(response.response.data));
        }
        dataModel = _reflection!.reflectResponse<MODEL>(response);
        return DataSuccess(dataModel.data);
      }else{
        return DataFailed(ErrorHandler.handleError(response.data));
      }
    } on DioError catch (error) {
      return DataFailed(ErrorHandler.handleError(error));
    }
  }
}