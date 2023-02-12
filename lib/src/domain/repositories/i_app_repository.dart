
import 'package:retrofit/retrofit.dart';
import 'package:my_core/src/core/utils/query_params.dart';

abstract class IAppRepository{

  // Future<HttpResponse> getIndexData(QueryParams params);
  // Future<HttpResponse> getShowData(QueryParams params);
  Future<HttpResponse> getGeneralData(QueryParams params);
  Future<HttpResponse> store(QueryParams query);
}