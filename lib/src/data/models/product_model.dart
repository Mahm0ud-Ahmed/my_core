import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel{

    const factory ProductModel({
    final int? id,
    final double? price,
    @JsonKey(name: 'old_price') 
    final double? oldPrice,
    final double? discount,
    final String? image,
    final String? name,
    final String? description,
    @JsonKey(name: 'in_favorites') 
    final bool? inFavorites,
    @JsonKey(name: 'in_cart') 
    final bool? inCart,
    final List<String>? images,
    }) = _ProductModel;

    factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);

}
