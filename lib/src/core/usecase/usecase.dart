import 'package:dartz/dartz.dart';
import 'package:world_news/src/core/error/error_model.dart';

abstract class UseCase<RETURN, PARAMETER>{

  Future<Either<ErrorModel, RETURN>> call({PARAMETER? params});
  
}