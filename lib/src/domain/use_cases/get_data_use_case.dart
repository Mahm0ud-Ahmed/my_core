import 'package:world_news/src/core/error/error_model.dart';
import 'package:dartz/dartz.dart';
import 'package:world_news/src/core/usecase/usecase.dart';
import 'package:world_news/src/domain/repositories/i_app_repository.dart';

class GetDataUseCase<RETURN, PARAMETER> extends UseCase<RETURN, PARAMETER>{

  final IAppRepository<RETURN, PARAMETER> _appRepository;

  GetDataUseCase(this._appRepository);

  @override
  Future<Either<ErrorModel, RETURN>> call({PARAMETER? params}) async{
    return await _appRepository.getRepoData(params: params);
  }

}