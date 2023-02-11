
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../core/utils/constant.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: Constant.kBaseUrl)
abstract class ApiService{

  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET('{endpoint}')
  @Header('Authorization')
  Future<HttpResponse> getData({
    @Path('endpoint') required String endpoint,
    @Query("page") int? page,
    @Query("count") int? pageSize,
    @Query("q") String? querySearch,
    @Query("apiKey") String? apiKey,
    @Header('Authorization') String? userToken,
  });

}