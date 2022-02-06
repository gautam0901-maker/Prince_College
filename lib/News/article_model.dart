import 'package:flutter/material.dart';

class ArticleModel {
  String author;
  String title;
  String description;
  String url;
  String UrlToImage;
  String Content;

  ArticleModel(
      {required this.author,
      required this.title,
      required this.url,
      required this.description,
      required this.Content,
      required this.UrlToImage});
}
