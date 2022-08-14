import 'package:reflectable/reflectable.dart';
import 'package:my_core/src/core/utils/reflector.dart';

class InvokeReflection<MODEL>{

  dynamic getRoute(){
    ClassMirror instanceMirror = modelReflector.reflectType(MODEL) as ClassMirror;
    dynamic model = instanceMirror.newInstance("", []);
    return model.route;
  }
}