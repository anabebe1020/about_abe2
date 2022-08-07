class QiitaItemsModel {
  final String imageUrl;
  final int lgtm;
  final String title;
  final String url;

  QiitaItemsModel({
    required this.imageUrl,
    this.lgtm = 0,
    required this.title,
    required this.url,
  });

  factory QiitaItemsModel.init() {
    return QiitaItemsModel(
      imageUrl: '',
      title: '',
      url: '',
      lgtm: 0,
    );
  }

  factory QiitaItemsModel.fromJson(Map<String, dynamic> json) {
    return QiitaItemsModel(
      imageUrl: json['profile_image_url'].toString(),
      title: json['title'].toString(),
      url: json['url'].toString(),
      lgtm: int.parse(json['likes_count']),
    );
  }
}
