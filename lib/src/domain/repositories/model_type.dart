
import 'package:my_core/src/data/models/api_pagination_model.dart';

import '../../data/models/course_model.dart';
import '../../data/models/home_model.dart';
import '../../data/models/message_model.dart';
import '../../data/models/product_model.dart';

class ModelType{

  static T getModel<T>(Object json){
    Map<String, dynamic> myJson = json as Map<String, dynamic>;
    switch (T) {
      case HomeModel:
        return HomeModel.fromJson(myJson) as T;
      case ProductModel:
        return ProductModel.fromJson(myJson) as T;
      case CourseModel:
        return CourseModel.fromJson(myJson) as T;
      case MessageModel:
        return MessageModel.fromJson(myJson) as T;
      case String: 
      case int:
        return json as T;
      default:
        return myJson as T;
    }
  }
}