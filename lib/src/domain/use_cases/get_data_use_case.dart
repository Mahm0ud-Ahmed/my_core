import 'package:world_news/src/core/error/error_model.dart';
import 'package:dartz/dartz.dart';
import 'package:world_news/src/core/usecase/usecase.dart';
import 'package:world_news/src/core/utils/query_params.dart';
import 'package:world_news/src/domain/entities/article.dart';
import 'package:world_news/src/domain/repositories/i_app_repository.dart';

class GetDataUseCase extends UseCase<List<Article>>{

  final IAppRepository _appRepository;

  GetDataUseCase(this._appRepository);
  
  @override
  Future<Either<ErrorModel, List<Article>>> call({required QueryParams params}) async{
    return await _appRepository.getEveryThingQuery(params);
  }
}