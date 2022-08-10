import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:world_news/src/core/utils/reflector.dart';
import 'package:world_news/src/data/models/single_product_model.dart';
part 'products_model.g.dart';

@JsonSerializable()
@ModelReflector()
class ProductsModel extends Equatable{
  final List<SingleProductModel>? products;
  final int? total;
  final dynamic? skip;
  final int? limit;

  const ProductsModel({this.products, this.total, this.skip, this.limit});

  factory ProductsModel.fromJson(Map<String, dynamic> json) => _$ProductsModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductsModelToJson(this);


  @override
  List<Object?> get props => [products, total, skip, limit];
}