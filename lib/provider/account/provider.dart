import 'package:about_abe_2/api/http.dart';
import 'package:about_abe_2/constants/sns.dart';
import 'package:about_abe_2/models/account/model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'provider.freezed.dart';

final _qiitaToken = dotenv.get('QIITA_AUTH_TOKEN');

final accountProvider = StateNotifierProvider<_AccountNotifier, AccountState>(
  (ref) => _AccountNotifier(),
);

class _AccountNotifier extends StateNotifier<AccountState> {
  _AccountNotifier() : super(const AccountState());

  Future<void> getQiita() async {
    final uri = Uri.parse('${SnsConst().qiitaUrl}/users/anabebe');
    final headers = <String, String>{
      'content-type': 'application/json',
      'Authorization': 'Bearer $_qiitaToken',
    };
    final result = await HttpClient().get(uri, headers);
  }
}

@freezed
class AccountState with _$AccountState {
  const factory AccountState({
    @Default(false) bool isLoading,
    QiitaModel? qiita,
    GitHubModel? github,
    List<GitHubRepoModel>? repos,
    String? errorMessage,
  }) = _AccountState;
}
