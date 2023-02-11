import 'package:my_core/src/core/utils/data_state.dart';

abstract class UseCase<R, Q>{

  Future<DataState<R>> call(Q query);
  // Future<DataState> call({required QueryParams params});
  
}