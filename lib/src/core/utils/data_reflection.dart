import 'package:reflectable/reflectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:world_news/src/core/utils/data_state.dart';
import 'package:world_news/src/core/utils/reflector.dart';

class DataReflection<T>{

  DataState<T> reflectResponse<MODEL>(HttpResponse response){
    ClassMirror classMirror = modelReflector.reflectType(MODEL) as ClassMirror;
    T data;

    if(response.data is! List){
      data = classMirror.newInstance('fromJson', [response.data]) as T;
    } else{

      List<MODEL> list = [];
      for (var item in response.data) {
        list.add(classMirror.newInstance('fromJson', [item]) as MODEL);
      }
      data = list as T;
    }

    return DataSuccess(data);
    
  }

}