// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeModel _$$_HomeModelFromJson(Map<String, dynamic> json) => _$_HomeModel(
      banners: (json['banners'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      ad: json['ad'] as String?,
    );

Map<String, dynamic> _$$_HomeModelToJson(_$_HomeModel instance) =>
    <String, dynamic>{
      'banners': instance.banners,
      'products': instance.products,
      'ad': instance.ad,
    };
