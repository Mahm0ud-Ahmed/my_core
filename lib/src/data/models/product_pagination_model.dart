import 'package:equatable/equatable.dart';
import 'package:reflectable/reflectable.dart';
import 'package:my_core/src/core/utils/reflector.dart';

@ModelReflector()
class ProductPaginationModel<MODEL> extends Equatable{
  List<MODEL>? data;
  int? total;
  dynamic skip;
  int? limit;

  ProductPaginationModel({this.data, this.total, this.skip, this.limit});

  factory ProductPaginationModel.fromJson(Map<String, dynamic> json) {

    ClassMirror classMirror = modelReflector.reflectType(MODEL) as ClassMirror;
    List<MODEL> data = [];
    for (var element in (json['products'] as List)) {
      data.add(classMirror.newInstance('fromJson', [element]) as MODEL);
    }

    return ProductPaginationModel<MODEL>(
      limit: json['limit'],
      skip: json['skip'],
      total: json['total'],
      data: data,
    );
  }
  @override
  List<Object?> get props => [data, total, skip, limit];

  reflectObject(Map<String, dynamic> json){
    ClassMirror classMirror = modelReflector.reflectType(MODEL) as ClassMirror;
    return classMirror.newInstance('fromJson', [json]) as MODEL;
  }
}