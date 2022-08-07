
import 'package:retrofit/retrofit.dart';
import 'package:world_news/src/core/utils/query_params.dart';

abstract class IAppRepository{

  Future<HttpResponse> getAllData(QueryParams params);
  Future<HttpResponse> getShowDataByPath(QueryParams params);
  
}