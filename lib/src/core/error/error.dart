import 'package:freezed_annotation/freezed_annotation.dart';

part 'error.freezed.dart';
part 'error.g.dart';

@freezed
class Error with _$Error{
  

  const factory Error({
    final bool? status,
    final String? code,
    final String? message,
  }) = ErrorModel;

  factory Error.fromJson(
    Map<String, dynamic> json,
  ) => _$ErrorFromJson(json);
}