import 'package:dartz/dartz.dart';
import 'package:world_news/src/core/error/error_model.dart';
import 'package:world_news/src/core/utils/query_params.dart';

abstract class UseCase<RETURN>{

  Future<Either<ErrorModel, RETURN>> call({QueryParams? params});
  
}