import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart' show JsonSerializable;
import 'package:world_news/src/core/utils/reflector.dart';

import 'article_model.dart';

part 'every_thing_model.g.dart';

@ModelReflector()
@JsonSerializable()
class EveryThingModel extends Equatable{
  final String status;
  final int totalResults;

  // @modelReflector
  final List<ArticleModel> articles;

  const EveryThingModel({
    required this.articles,
    required this.status,
    required this.totalResults,
  });

  factory EveryThingModel.fromJson(Map<String, dynamic> json) => _$EveryThingModelFromJson(json);

  Map<String, dynamic> toJson() => _$EveryThingModelToJson(this);
  
  @override
  List<Object?> get props => [status, totalResults, articles];

}
