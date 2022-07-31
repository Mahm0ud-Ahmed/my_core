
import 'package:dartz/dartz.dart';
import 'package:world_news/src/core/error/error_model.dart';
import 'package:world_news/src/core/utils/query_params.dart';
import 'package:world_news/src/domain/entities/article.dart';

abstract class IAppRepository{

  Future<Either<ErrorModel, List<Article>>> getEveryThingQuery(QueryParams params);
  
}