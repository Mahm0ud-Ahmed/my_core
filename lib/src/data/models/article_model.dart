import 'package:json_annotation/json_annotation.dart' show JsonSerializable;
import 'package:world_news/src/core/utils/reflector.dart';

part 'article_model.g.dart';

@ModelReflector()
@JsonSerializable()
class ArticleModel{
  final Map<String, dynamic>? source;
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;

  const ArticleModel(
    this.author,
    this.content,
    this.description,
    this.publishedAt,
    this.source,
    this.title,
    this.url,
    this.urlToImage,
  );

  factory ArticleModel.fromJson(Map<String, dynamic> json) => _$ArticleModelFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleModelToJson(this);

}