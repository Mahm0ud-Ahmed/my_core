
import 'package:retrofit/retrofit.dart';
import 'package:my_core/src/core/utils/query_params.dart';

abstract class IAppRepository{

  Future<HttpResponse> getAllData(QueryParams params);
  Future<HttpResponse> getShowDataByPath(QueryParams params);
  
}