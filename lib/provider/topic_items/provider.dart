import 'package:about_abe_2/api/http.dart';
import 'package:about_abe_2/constants/sns.dart';
import 'package:about_abe_2/models/home/topic.dart';
import 'package:about_abe_2/models/qiita_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'provider.freezed.dart';

final _qiitaToken = dotenv.get('QIITA_AUTH_TOKEN');

final topicItemsProvider =
    StateNotifierProvider<_TopicItemsNotifier, TopicItemState>(
  (ref) => _TopicItemsNotifier(),
);

class _TopicItemsNotifier extends StateNotifier<TopicItemState> {
  _TopicItemsNotifier() : super(const TopicItemState());

  void setup(int perPage) {
    // noop
  }

  Future<void> getQiitaItems() async {
    try {
      final client = HttpClient();
      final uri = Uri.parse(
        '${SnsConst().qiitaUrl}/authenticated_user/items?page=1&per_page=15',
      );
      final headers = <String, String>{
        'content-type': 'application/json',
        'Authorization': 'Bearer $_qiitaToken',
      };
      final res = await client.get(uri, headers);
      print('res: ${res.toString()}');
      res.values.isNotEmpty
          ? QiitaItemsModel.fromJson(res)
          : QiitaItemsModel.init();
    } catch (error) {
      //
      print('error: ${error.toString()}');
    }
  }
}

@freezed
class TopicItemState with _$TopicItemState {
  const factory TopicItemState({
    @Default(false) bool isLoading,
    List<TopicModel>? qiita,
    String? errorMessage,
  }) = _TopicItemState;
}
