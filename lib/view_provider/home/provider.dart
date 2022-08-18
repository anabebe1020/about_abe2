import 'package:about_abe_2/models/github/repos.dart';
import 'package:about_abe_2/models/home/topic.dart';
import 'package:about_abe_2/provider/github/provider.dart';
import 'package:about_abe_2/provider/qiita/provider.dart';
import 'package:anabebe_packages/utils/log.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'provider.freezed.dart';

final _logger = Logger();

final homeProvider = StateNotifierProvider<_HomeNotifier, HomeState>(
  (ref) => _HomeNotifier(ref),
);

class _HomeNotifier extends StateNotifier<HomeState> {
  final StateNotifierProviderRef<_HomeNotifier, HomeState> ref;
  _HomeNotifier(this.ref) : super(const HomeState());

  Future<void> getTopics() async {
    try {
      _logger.setup('HOME');
      state = state.copyWith(isLoading: true);
      // get
      final qiita = ref.watch(qiitaProvider);
      final github = ref.watch(githubProvider);
      // set
      state = state.copyWith(
        topics: qiita.items,
        repos: github.repos,
      );
    } catch (error) {
      rethrow;
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }
}

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(false) bool isLoading,
    List<TopicModel>? topics,
    List<GitHubRepoModel>? repos,
    String? errorMessage,
  }) = _HomeState;
}
