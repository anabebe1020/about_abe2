class QiitaUserModel {
  final String userId;
  final String? iconUrl;
  final String description;
  final int followees;
  final int followers;
  final int items;

  QiitaUserModel({
    required this.userId,
    this.iconUrl,
    required this.description,
    required this.followees,
    required this.followers,
    required this.items,
  });

  factory QiitaUserModel.fromJson(Map<String, dynamic> json) {
    return QiitaUserModel(
      userId: "",
      iconUrl: "",
      description: "",
      followees: 0,
      followers: 0,
      items: 0,
    );
  }
}
