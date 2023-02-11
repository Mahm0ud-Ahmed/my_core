// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ErrorModel _$$ErrorModelFromJson(Map<String, dynamic> json) => _$ErrorModel(
      status: json['status'] as bool?,
      code: json['code'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$ErrorModelToJson(_$ErrorModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
    };
