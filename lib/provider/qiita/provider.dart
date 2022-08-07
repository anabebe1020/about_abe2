import 'dart:convert';

import 'package:about_abe_2/api/http.dart';
import 'package:about_abe_2/constants/sns.dart';
import 'package:about_abe_2/models/home/topic.dart';
import 'package:about_abe_2/models/qiita/user.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'provider.freezed.dart';

final _qiitaToken = dotenv.get('QIITA_AUTH_TOKEN');

final qiitaProvider = StateNotifierProvider<_QiitaNotifier, QiitaState>(
  (ref) => _QiitaNotifier(),
);

class _QiitaNotifier extends StateNotifier<QiitaState> {
  _QiitaNotifier() : super(const QiitaState());

  Future<void> getUser() async {
    final uri = Uri.parse('${SnsConst().qiitaApiUrl}/users/anabebe');
    final headers = <String, String>{
      'content-type': 'application/json',
      'Authorization': 'Bearer $_qiitaToken',
    };
    final result = await HttpClient().get(uri, headers);
    final json = jsonDecode(result);
    state = state.copyWith(user: QiitaUserModel.fromJson(json));
  }

  Future<void> getItems() async {
    try {
      final uri = Uri.parse(
        '${SnsConst().qiitaApiUrl}/authenticated_user/items?page=1&per_page=15',
      );
      final headers = <String, String>{
        'content-type': 'application/json',
        'Authorization': 'Bearer $_qiitaToken',
      };
      final result = await HttpClient().get(uri, headers);
      final jsonList = jsonDecode(result) as List;
      List<TopicModel> items = [];
      jsonList.map((json) {
        items.add(TopicModel.fromQiitaJson(json));
      }).toList();
      state = state.copyWith(items: items);
    } catch (error) {
      //
      print('error: ${error.toString()}');
    }
  }
}

@freezed
class QiitaState with _$QiitaState {
  const factory QiitaState({
    @Default(false) bool isLoading,
    QiitaUserModel? user,
    List<TopicModel>? items,
    String? errorMessage,
  }) = _QiitaState;
}
