
import 'package:json_annotation/json_annotation.dart';
import 'package:my_core/src/core/utils/reflector.dart';
part 'product_model.g.dart';

@JsonSerializable()
@ModelReflector()
class ProductModel {
  @JsonKey(ignore: true)
  final String route = 'products';
  
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

  const ProductModel(
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

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);

}