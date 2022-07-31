
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';
import 'package:world_news/src/core/error/error_handler.dart';
import 'package:world_news/src/core/error/error_model.dart';
import 'package:dartz/dartz.dart';
import 'package:world_news/src/core/utils/query_params.dart';
import 'package:world_news/src/data/data_sources/remote/api_service.dart';
import 'package:world_news/src/domain/entities/article.dart';
import 'package:world_news/src/domain/repositories/i_app_repository.dart';

class AppRepositoryImp extends IAppRepository{
  final ApiService _apiService;

  AppRepositoryImp(this._apiService);

  @override
  Future<Either<ErrorModel, List<Article>>> getEveryThingQuery(QueryParams params) async {
    final HttpResponse response;
    try {
      response = await _apiService.getApiData(
        apiKey: params.apiKey,
        querySearch: params.queryWord!,
        endpoint: params.endpoint,
      );
      if(response.response.statusCode == HttpStatus.ok){
        return Right(response.data.articles);
      }else{
        return Left(ErrorHandler.handleError(response.data));
      }

    } on DioError catch (error) {
      return Left(ErrorHandler.handleError(error));
    }
  }
}