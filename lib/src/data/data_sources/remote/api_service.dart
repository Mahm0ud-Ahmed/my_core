
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:world_news/src/core/utils/constant_value.dart';
import 'package:world_news/src/data/models/every_thing_model.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ConstantValue.kBaseUrl)
abstract class ApiService{

  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET('{endpoint}')
  Future<HttpResponse<EveryThingModel>> getApiData({
    @Path('endpoint') required String endpoint,
    @Query("apiKey") required String apiKey,
    @Query("q") String? querySearch,
  });
}