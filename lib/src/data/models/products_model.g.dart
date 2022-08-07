// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductsModel _$ProductsModelFromJson(Map<String, dynamic> json) =>
    ProductsModel(
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => SingleProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int?,
      skip: json['skip'] as String?,
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$ProductsModelToJson(ProductsModel instance) =>
    <String, dynamic>{
      'products': instance.products,
      'total': instance.total,
      'skip': instance.skip,
      'limit': instance.limit,
    };
