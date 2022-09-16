
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../core/error/error_handler.dart';
import '../../core/usecase/usecase.dart';
import '../../core/utils/data_reflection.dart';
import '../../core/utils/data_state.dart';
import '../../core/utils/query_params.dart';
import '../repositories/i_app_repository.dart';

class GetDataByPathUseCase<MODEL> extends UseCase{

  final IAppRepository _appRepository;
  DataReflection<MODEL>? _reflection;

  GetDataByPathUseCase(this._appRepository);
  
  @override
  Future<DataState> call({required QueryParams params}) async {
    _reflection = DataReflection();
    try {
      HttpResponse response = await _appRepository.getShowDataByPath(params);
      if(response.response.statusCode == HttpStatus.ok){
        DataState dataModel = _reflection!.reflectResponse<MODEL>(response);
        return DataSuccess(dataModel.data);
      }else{
        return DataFailed(ErrorHandler.handleError(response.data));
      }
    } on DioError catch (error) {
      return DataFailed(ErrorHandler.handleError(error));
    }
  }
}