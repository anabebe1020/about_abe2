import 'package:about_abe_2/models/account/model.dart';
import 'package:about_abe_2/provider/github/provider.dart';
import 'package:about_abe_2/provider/qiita/provider.dart';
import 'package:anabebe_packages/utils/log.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'provider.freezed.dart';

final _logger = Logger();

final accountProvider = StateNotifierProvider<_AccountNotifier, AccountState>(
  (ref) => _AccountNotifier(ref),
);

class _AccountNotifier extends StateNotifier<AccountState> {
  StateNotifierProviderRef<_AccountNotifier, AccountState> ref;
  _AccountNotifier(this.ref) : super(const AccountState());

  Future<void> getUserInfo() async {
    try {
      _logger.setup('ACCOUNT');
      state = state.copyWith(isLoading: true);
      // get
      final qiita = ref.watch(qiitaProvider);
      final github = ref.watch(githubProvider);
      // set
      state = state.copyWith(
        header: AccountHeaderModel(
          name: github.user?.name,
          imageUrl: github.user?.iconUrl ?? qiita.user?.iconUrl,
        ),
        introduction: github.user?.description,
        information: AccountInfoModel(
          company: github.user?.company,
          location: github.user?.location,
          link: github.user?.link,
          github: github.user?.userId,
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
    String? errorMessage,
  }) = _AccountState;
}
