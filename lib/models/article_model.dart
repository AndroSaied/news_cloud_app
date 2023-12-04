class ArticleModel {
  final String? image;
  final String title;
  final String? subTitle;
  final String? details;

  ArticleModel({required this.image, required this.title, required this.subTitle, required this.details});

  factory ArticleModel.fromJson(json) {
    return ArticleModel(image: json["urlToImage"], title: json["title"], subTitle: json["description"], details: json["url"]);
  }
}