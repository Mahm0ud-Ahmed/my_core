import 'package:json_annotation/json_annotation.dart' show JsonSerializable;
import 'package:world_news/src/domain/entities/article.dart';

part 'article_model.g.dart';

@JsonSerializable()
class ArticleModel extends Article{

  const ArticleModel(
    super.author,
    super.content,
    super.description,
    super.publishedAt,
    super.source,
    super.title,
    super.url,
    super.urlToImage,
  );

  factory ArticleModel.fromJson(Map<String, dynamic> json) => _$ArticleModelFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleModelToJson(this);

}