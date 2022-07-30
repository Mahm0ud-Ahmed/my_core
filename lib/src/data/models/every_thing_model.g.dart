// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'every_thing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EveryThingModel _$EveryThingModelFromJson(Map<String, dynamic> json) =>
    EveryThingModel(
      articles: (json['articles'] as List<dynamic>)
          .map((e) => ArticleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String,
      totalResults: json['totalResults'] as int,
    );

Map<String, dynamic> _$EveryThingModelToJson(EveryThingModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'totalResults': instance.totalResults,
      'articles': instance.articles,
    };
