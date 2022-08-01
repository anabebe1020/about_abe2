import 'package:about_abe_2/api/http.dart';
import 'package:about_abe_2/constants/sns.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'model.dart';

final accountProvider = StateNotifierProvider<_AccountNotifier, MeModel>(
  (ref) => _AccountNotifier(),
);

class _AccountNotifier extends StateNotifier<MeModel> {
  _AccountNotifier() : super(MeModel.init());

  Future<void> get() async {
    // ToDo: 名前とトークンはFirestoreから取得する
    final uri = Uri.parse('${SnsConst().qiitaUrl}/users/anabebe');
    final headers = <String, String>{
      'content-type': 'application/json',
      'Authorization': 'Bearer 819ef4e03a5073fc5b72c2e75f277116a8fca0db',
    };
    final result = await HttpClient().get(uri, headers);
  }
}
