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

  factory TopicModel.fromQiitaJson(Map<String, dynamic> json) {
    return TopicModel(
      service: ServicePlatform.qiita,
      title: 'Title A',
      summary: '',
      url: '',
      createdAt: DateTime.now(),
    );
  }
}

enum ServicePlatform {
  qiita,
  github,
  other,
}
