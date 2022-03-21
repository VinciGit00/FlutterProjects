import 'source_model.dart';

class Article {
  Source source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;

  Article(
      {required this.source,
      required this.author,
      required this.title,
      required this.description,
      required this.url,
      required this.urlToImage,
      required this.publishedAt,
      required this.content});

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      source: Source.fromJson(json['source']),
      author: json['author'] ??= "no" as String,
      title: json['title'] ??= "no" as String,
      description: json['description'] ??= "no" as String,
      url: json['url'] ??= "no" as String,
      urlToImage: json['urlToImage'] ??= "no" as String,
      publishedAt: json['publishedAt'] ??= "no" as String,
      content: json['content'] ??= "no" as String,
    );
  }
}
