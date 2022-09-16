import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../core/error/error_handler.dart';
import '../../core/usecase/usecase.dart';
import '../../core/utils/data_state.dart';
import '../../core/utils/query_params.dart';
import '../repositories/i_app_repository.dart';

import '../../data/models/api_pagination_model.dart';


class GetPaginationDataUseCase<MODEL> extends UseCase{

  final IAppRepository _appRepository;
  ApiPaginationModel<MODEL>? _paginationModel;

  GetPaginationDataUseCase(this._appRepository);
  
  @override
  Future<DataState> call({required QueryParams params}) async {
    try {
      HttpResponse response = await _appRepository.getAllData(params);
      if(response.response.statusCode == HttpStatus.ok){
        _paginationModel = ApiPaginationModel.fromJson(response.response.data);
          return DataSuccess(_paginationModel);
      }else{
        return DataFailed(ErrorHandler.handleError(response.data));
      }
    } on DioError catch (error) {
      return DataFailed(ErrorHandler.handleError(error));
    }
  }
}