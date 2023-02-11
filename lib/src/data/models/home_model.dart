import 'package:freezed_annotation/freezed_annotation.dart';

import 'product_model.dart';

part 'home_model.freezed.dart';
part 'home_model.g.dart';

@freezed
class HomeModel with _$HomeModel{
    const factory HomeModel({
    final List<Map<String, dynamic>>? banners,
    final List<ProductModel>? products,
    final String? ad,
    }) = _HomeModel;

    factory HomeModel.fromJson(Map<String, dynamic> json) => _$HomeModelFromJson(json);

}
