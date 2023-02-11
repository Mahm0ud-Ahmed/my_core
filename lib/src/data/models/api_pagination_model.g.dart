// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_pagination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiPaginationModel<MODEL> _$ApiPaginationModelFromJson<MODEL>(
  Map<String, dynamic> json,
  MODEL Function(Object? json) fromJsonMODEL,
) =>
    ApiPaginationModel<MODEL>(
      total: json['total'] as int,
      perPage: json['per_page'] as int,
      currentPage: json['current_page'] as int,
      lastPage: json['last_page'] as int,
      data: (json['data'] as List<dynamic>).map(fromJsonMODEL).toList(),
      from: json['from'] as int?,
      to: json['to'] as int?,
    );

Map<String, dynamic> _$ApiPaginationModelToJson<MODEL>(
  ApiPaginationModel<MODEL> instance,
  Object? Function(MODEL value) toJsonMODEL,
) =>
    <String, dynamic>{
      'total': instance.total,
      'per_page': instance.perPage,
      'current_page': instance.currentPage,
      'last_page': instance.lastPage,
      'from': instance.from,
      'to': instance.to,
      'data': instance.data.map(toJsonMODEL).toList(),
    };
