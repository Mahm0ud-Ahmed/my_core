
import 'package:json_annotation/json_annotation.dart';
import 'package:world_news/src/core/utils/reflector.dart';
part 'single_product_model.g.dart';

@JsonSerializable()
@ModelReflector()
class SingleProductModel {
  final int? id;
  final String? title;
  final String? description;
  final int? price;
  final double? discountPercentage;
  final double? rating;
  final int? stock;
  final String? brand;
  final String? category;
  final String? thumbnail;
  final List<String>? images;

  const SingleProductModel(
      {this.id,
      this.title,
      this.description,
      this.price,
      this.discountPercentage,
      this.rating,
      this.stock,
      this.brand,
      this.category,
      this.thumbnail,
      this.images});

  factory SingleProductModel.fromJson(Map<String, dynamic> json) => _$SingleProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$SingleProductModelToJson(this);

}