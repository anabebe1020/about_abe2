class GitHubRepoModel {
  final String name;
  final String url;
  final String? description;
  final int stars;
  final String language;

  GitHubRepoModel({
    required this.name,
    required this.url,
    this.description,
    required this.stars,
    required this.language,
  });

  factory GitHubRepoModel.fromJson(Map<String, dynamic> data) {
    return GitHubRepoModel(
      name: data['name'].toString(),
      url: data['svn_url'].toString(),
      description: data['description'],
      stars: data['stargazers_count'] as int,
      language: data['language'].toString(),
    );
  }
}
