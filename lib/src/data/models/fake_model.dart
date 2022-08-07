
import 'package:json_annotation/json_annotation.dart';
import 'package:world_news/src/core/utils/reflector.dart';
part 'fake_model.g.dart';

@JsonSerializable()
@ModelReflector()
class FakeModel {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  const FakeModel({this.userId, this.id, this.title, this.body});

  factory FakeModel.fromJson(Map<String, dynamic> json) => _$FakeModelFromJson(json);

  Map<String, dynamic> toJson() => _$FakeModelToJson(this);
}
