import '../entities/course_model.dart';
import '../entities/home_model.dart';
import '../entities/message_model.dart';
import '../entities/product_model.dart';

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