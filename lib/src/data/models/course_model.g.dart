// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CourseModel _$$_CourseModelFromJson(Map<String, dynamic> json) =>
    _$_CourseModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      price: json['price'] as int?,
      priceBeforeDiscount: json['priceBeforeDiscount'] as int?,
      totalSubscriptions: json['totalSubscriptions'] as int?,
      availableSeats: json['availableSeats'] as int?,
      live: json['live'] as bool?,
      hasOffer: json['hasOffer'] as bool?,
    );

Map<String, dynamic> _$$_CourseModelToJson(_$_CourseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'price': instance.price,
      'priceBeforeDiscount': instance.priceBeforeDiscount,
      'totalSubscriptions': instance.totalSubscriptions,
      'availableSeats': instance.availableSeats,
      'live': instance.live,
      'hasOffer': instance.hasOffer,
    };
