import 'dart:convert';

import 'package:about_abe_2/api/http.dart';
import 'package:about_abe_2/constants/sns.dart';
import 'package:about_abe_2/models/github/repos.dart';
import 'package:about_abe_2/models/github/user.dart';
import 'package:anabebe_packages/utils/log.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'provider.freezed.dart';

final _logger = Logger();

final githubProvider = StateNotifierProvider<_GithubNotifier, GithubState>(
  (ref) => _GithubNotifier(),
);

class _GithubNotifier extends StateNotifier<GithubState> {
  _GithubNotifier() : super(const GithubState());

  Future<void> getUser() async {
    try {
      _logger.setup('GITHUB');
      state = state.copyWith(isLoading: true);
      // get
      final uri = Uri.parse(
          '${SnsConst().githubApiUrl}/users/${SnsConst().githubUserName}');
      final headers = <String, String>{
        'content-type': 'application/json',
      };
      final result = await HttpClient().get(uri, headers);
      final json = jsonDecode(result);
      // set
      state = state.copyWith(user: GitHubModel.fromJson(json));
    } catch (e) {
      rethrow;
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  Future<void> getRepos() async {
    try {
      _logger.setup('GITHUB');
      state = state.copyWith(isLoading: true);
      // get
      final uri = Uri.parse(
          '${SnsConst().githubApiUrl}/users/${SnsConst().githubUserName}/repos');
      final headers = <String, String>{
        'content-type': 'application/json',
      };
      final result = await HttpClient().get(uri, headers);
      final jsonList = jsonDecode(result) as List;
      List<GitHubRepoModel> repos = [];
      jsonList.map((json) {
        if (json['name'] != SnsConst().githubUserName) {
          repos.add(GitHubRepoModel.fromJson(json));
        }
      }).toList();
      // set
      state = state.copyWith(repos: repos);
    } catch (e) {
      rethrow;
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }
}

@freezed
class GithubState with _$GithubState {
  const factory GithubState({
    @Default(false) bool isLoading,
    GitHubModel? user,
    List<GitHubRepoModel>? repos,
    String? errorMessage,
  }) = _GithubState;
}
