import 'package:dartz/dartz.dart';

import '../../core/error/error_model.dart';

abstract class IAppRepository<RETURN, PARAMETERS>{

  Future<Either<ErrorModel, RETURN>> getRepoData({PARAMETERS? params});
  
}