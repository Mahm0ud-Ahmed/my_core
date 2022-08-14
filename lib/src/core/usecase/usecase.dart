import 'package:my_core/src/core/utils/data_state.dart';
import 'package:my_core/src/core/utils/query_params.dart';

abstract class UseCase{

  Future<DataState> call({required QueryParams params});
  
}