import 'package:about_abe_2/models/account/model.dart';
import 'package:about_abe_2/models/github/repos.dart';
import 'package:about_abe_2/provider/github/provider.dart';
import 'package:about_abe_2/provider/qiita/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'provider.freezed.dart';

final accountProvider = StateNotifierProvider<_AccountNotifier, AccountState>(
  (ref) => _AccountNotifier(ref),
);

class _AccountNotifier extends StateNotifier<AccountState> {
  StateNotifierProviderRef<_AccountNotifier, AccountState> ref;
  _AccountNotifier(this.ref) : super(const AccountState());

  Future<void> getUserInfo() async {
    try {
      state = state.copyWith(isLoading: true);
      await ref.read(qiitaProvider.notifier).getUser();
      await ref.read(githubProvider.notifier).getUser();
      //
      final qiita = ref.watch(qiitaProvider);
      final github = ref.watch(githubProvider);
      state = state.copyWith(
        header: AccountHeaderModel(
          name: github.user?.name,
          imageUrl: qiita.user?.iconUrl ?? github.user?.iconUrl,
        ),
        introduction: github.user?.description,
        information: AccountInfoModel(
          company: github.user?.company,
          location: github.user?.location,
          github: github.user?.name,
          twitter: github.user?.twitter,
        ),
      );
    } catch (e) {
      rethrow;
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }
}

@freezed
class AccountState with _$AccountState {
  const factory AccountState({
    @Default(false) bool isLoading,
    AccountHeaderModel? header,
    String? introduction,
    AccountInfoModel? information,
    List<GitHubRepoModel>? repos,
    String? errorMessage,
  }) = _AccountState;
}
