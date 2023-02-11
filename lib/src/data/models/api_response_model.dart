
import 'package:json_annotation/json_annotation.dart';

part 'api_response_model.g.dart';

@JsonSerializable(genericArgumentFactories: true, constructor: '_')
class ApiResponseModel<T>{
  // final String? message;
  // final bool success;
  final bool status;
  final T data;
  
  const ApiResponseModel._({
    // required this.message,
    // required this.success,
    required this.status,
    required this.data,
  });

  factory ApiResponseModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) => _$ApiResponseModelFromJson(json, fromJsonT);

  // Map<String, dynamic> toMap() => _$ArticleModelToJson(this);

}