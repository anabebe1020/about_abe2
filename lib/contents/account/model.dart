class MeModel {
  final String name;
  final GitHubModel? github;
  final QiitaModel? qiita;
  final List<GitHubRepoModel>? repos;

  MeModel({required this.name, this.github, this.qiita, this.repos});

  factory MeModel.init() {
    return MeModel(name: '');
  }
}

class QiitaModel {
  String iconUrl = '';
  String userId = '';
  String description = '';
  int followees = 0;
  int followers = 0;
  int items = 0;
}

class GitHubModel {
  String iconUrl = '';
  String userId = '';
  String name = '';
  String description = '';
  String company = '';
  String location = '';
  String link = '';
  String mail = '';
  String twitter = '';
  int followees = 0;
  int followers = 0;
  int items = 0;

  //factory GitHubModel.fromJson(Map<String, dynamic> data) {
  //  return GitHubModel();
  //}
}

class GitHubRepoModel {
  String name = '';
  String url = '';
  String description = '';
  int stars = 0;
  String language = '';

  //factory GitHubRepoModel.fromJson(Map<String, dynamic> data) {
  //  return GitHubRepoModel();
  //}
}
