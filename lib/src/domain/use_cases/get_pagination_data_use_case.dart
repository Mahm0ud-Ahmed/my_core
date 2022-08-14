import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:world_news/src/core/error/error_handler.dart';
import 'package:world_news/src/core/usecase/usecase.dart';
import 'package:world_news/src/core/utils/data_state.dart';
import 'package:world_news/src/core/utils/query_params.dart';
import 'package:world_news/src/domain/repositories/i_app_repository.dart';

import '../../data/models/product_pagination_model.dart';

class GetPaginationDataUseCase<MODEL> extends UseCase{

  final IAppRepository _appRepository;
  ProductPaginationModel<MODEL>? _paginationModel;

  GetPaginationDataUseCase(this._appRepository);
  
  @override
  Future<DataState> call({required QueryParams params}) async {
    try {
      HttpResponse response = await _appRepository.getAllData(params);
      if(response.response.statusCode == HttpStatus.ok){
        _paginationModel = ProductPaginationModel.fromJson(response.response.data);
          return DataSuccess(_paginationModel);
      }else{
        return DataFailed(ErrorHandler.handleError(response.data));
      }
    } on DioError catch (error) {
      return DataFailed(ErrorHandler.handleError(error));
    }
  }
}