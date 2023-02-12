
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
    @Query("per_page") int? pageSize,
    @Header('Authorization') String? userToken,
  });

  @POST('{endpoint}')
  @Header('Authorization')
  Future<HttpResponse> store({
    @Header('Authorization') required userToken,
    @Path('endpoint') required String endpoint,
    @Body() required Map<String, dynamic> body,
  });


}