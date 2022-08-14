
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:my_core/src/core/error/error_handler.dart';
import 'package:my_core/src/core/usecase/usecase.dart';
import 'package:my_core/src/core/utils/data_reflection.dart';
import 'package:my_core/src/core/utils/data_state.dart';
import 'package:my_core/src/core/utils/query_params.dart';
import 'package:my_core/src/data/models/product_pagination_model.dart';
import 'package:my_core/src/domain/repositories/i_app_repository.dart';

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
        if(MODEL == ProductPaginationModel){
          return DataSuccess(ProductPaginationModel<MODEL>.fromJson(response.response.data));
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