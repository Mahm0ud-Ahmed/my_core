import 'package:equatable/equatable.dart';


class Article extends Equatable{
  final Map<String, dynamic> source;
  final String? author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String publishedAt;
  final String content;

  const Article(
    this.author,
    this.content,
    this.description,
    this.publishedAt,
    this.source,
    this.title,
    this.url,
    this.urlToImage,
  );

  @override
  List<Object?> get props => [source, author, title, description, url, urlToImage, publishedAt, content];
}