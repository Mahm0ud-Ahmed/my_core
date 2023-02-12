import 'package:retrofit/dio.dart';
import '../../core/utils/query_params.dart';
import '../../domain/repositories/i_app_repository.dart';
import '../data_sources/remote/api_service.dart';

class AppRepositoryImp extends IAppRepository{
  final ApiService _apiService;

  AppRepositoryImp(this._apiService);
  
  @override
  Future<HttpResponse> getGeneralData(QueryParams params) async{
    return await _apiService.getData(
      endpoint: params.endpoint,
      page: params.page,
      pageSize: params.pageSize,
      userToken: getToken,
    );
  }

  @override
  Future<HttpResponse> store(QueryParams query) {
    return _apiService.store(
      userToken: getToken,
      endpoint: query.endpoint,
      body: query.body!,
    );
  }
  
  String? get getToken {
    // return 'Bearer 602|38ctNikBYh1AIyOQNjh47wDyZUqJeTDoyPEruMou';
    return 'Bearer 2639|YXqNDjeGi6e1PRKWtXfEQ1AIaUysDHIedmuzZTZl';
  // String? token = StorageService().getString(Constant.kUserToken);
  // if (token != null && token.isNotEmpty) {
  //   return 'Bearer 2581|rDqP1hpRhqPheMybTCYkywzmCtFBUzZiAMVRr5Md';
  // }
  // return null;
  }

}