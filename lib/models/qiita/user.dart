class QiitaUserModel {
  final String userId;
  final String name;
  final String? iconUrl;
  final String description;
  final int followees;
  final int followers;
  final int items;

  QiitaUserModel({
    required this.userId,
    required this.name,
    this.iconUrl,
    required this.description,
    required this.followees,
    required this.followers,
    required this.items,
  });

  factory QiitaUserModel.fromJson(Map<String, dynamic> data) {
    return QiitaUserModel(
      userId: data['id'].toString(),
      name: data['name'].toString(),
      iconUrl: data['profile_image_url'],
      description: data['description'],
      followees: data['followees_count'] as int,
      followers: data['followers_count'] as int,
      items: data['items_count'] as int,
    );
  }
}
