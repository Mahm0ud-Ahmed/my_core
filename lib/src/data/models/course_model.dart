// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
part 'course_model.freezed.dart';
part 'course_model.g.dart';
@freezed
class CourseModel with _$CourseModel{
  const factory CourseModel({
    final int? id,
    final String? name,
    final String? image,
    final int? price,
    final int? priceBeforeDiscount,
    final int? totalSubscriptions,
    final int? availableSeats,
    final bool? live,
    final bool? hasOffer,
  }) = _CourseModel;

  factory CourseModel.fromJson(Map<String, dynamic> json) => _$CourseModelFromJson(json);

}
