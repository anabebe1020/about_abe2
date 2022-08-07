class GitHubModel {
  final String userId;
  final String name;
  final String? mail;
  final String? iconUrl;
  final String? description;
  final String? company;
  final String? location;
  final String? link;
  final String? twitter;
  final int followees;
  final int followers;
  final int items;

  GitHubModel({
    required this.userId,
    required this.name,
    this.mail,
    this.iconUrl,
    this.description,
    this.company,
    this.location,
    this.link,
    this.twitter,
    this.followees = 0,
    this.followers = 0,
    this.items = 0,
  });

  factory GitHubModel.fromJson(Map<String, dynamic> data) {
    return GitHubModel(
      userId: data['login'].toString(),
      name: data['name'].toString(),
      mail: data['email'],
      iconUrl: data['avatar_url'].toString(),
      description: data['bio'].toString(),
      company: data['company'].toString(),
      location: data['location'].toString(),
      link: data['blog'].toString(),
      twitter: data['twitter_username'].toString(),
      followees: data['following'] as int,
      followers: data['followers'] as int,
      items: data['public_repos'] as int,
    );
  }
}
