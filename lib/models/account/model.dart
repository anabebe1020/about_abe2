import 'package:about_abe_2/models/github/repos.dart';
import 'package:about_abe_2/models/github/user.dart';
import 'package:about_abe_2/models/qiita/user.dart';

class MeModel {
  final String name;
  final GitHubModel? github;
  final QiitaUserModel? qiita;
  final List<GitHubRepoModel>? repos;

  MeModel({required this.name, this.github, this.qiita, this.repos});

  factory MeModel.init() {
    return MeModel(name: '');
  }
}
