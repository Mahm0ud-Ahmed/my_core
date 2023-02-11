// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      id: json['id'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      oldPrice: (json['old_price'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      image: json['image'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      inFavorites: json['in_favorites'] as bool?,
      inCart: json['in_cart'] as bool?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'old_price': instance.oldPrice,
      'discount': instance.discount,
      'image': instance.image,
      'name': instance.name,
      'description': instance.description,
      'in_favorites': instance.inFavorites,
      'in_cart': instance.inCart,
      'images': instance.images,
    };
