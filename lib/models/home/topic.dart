class TopicModel {
  final ServicePlatform service;
  final String title;
  final String? summary;
  final String url;
  final DateTime createdAt;

  TopicModel({
    required this.service,
    required this.title,
    this.summary,
    required this.url,
    required this.createdAt,
  });

  factory TopicModel.fromQiitaJson(Map<String, dynamic> data) {
    return TopicModel(
      service: ServicePlatform.qiita,
      title: data['title'],
      summary: 'LGTM:${data['likes_count']}',
      url: data['url'],
      createdAt: DateTime.parse(data['created_at']),
    );
  }
}

enum ServicePlatform {
  qiita,
  github,
  other,
}
