import 'dart:convert';

import 'package:about_abe_2/api/http.dart';
import 'package:about_abe_2/constants/sns.dart';
import 'package:about_abe_2/models/github/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'provider.freezed.dart';

final githubProvider = StateNotifierProvider<_GithubNotifier, GithubState>(
  (ref) => _GithubNotifier(),
);

class _GithubNotifier extends StateNotifier<GithubState> {
  _GithubNotifier() : super(const GithubState());

  Future<void> getUser() async {
    try {
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
}

@freezed
class GithubState with _$GithubState {
  const factory GithubState({
    @Default(false) bool isLoading,
    GitHubModel? user,
    String? errorMessage,
  }) = _GithubState;
}
