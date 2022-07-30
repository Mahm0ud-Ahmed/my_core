import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart' show JsonSerializable;

import 'article_model.dart';

part 'every_thing_model.g.dart';

@JsonSerializable()
class EveryThingModel extends Equatable{
  String status;
  int totalResults;
  List<ArticleModel> articles;

  EveryThingModel({
    required this.articles,
    required this.status,
    required this.totalResults,
  });

  factory EveryThingModel.fromJson(Map<String, dynamic> json) => _$EveryThingModelFromJson(json);

  Map<String, dynamic> toJson() => _$EveryThingModelToJson(this);
  
  @override
  List<Object?> get props => [status, totalResults, articles];

}
