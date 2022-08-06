import 'package:about_abe_2/models/home/topic.dart';
import 'package:about_abe_2/provider/topic_items/provider.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'provider.freezed.dart';

final _qiitaToken = dotenv.get('QIITA_AUTH_TOKEN');

final homeProvider = StateNotifierProvider<_HomeNotifier, HomeState>(
  (ref) => _HomeNotifier(ref),
);

class _HomeNotifier extends StateNotifier<HomeState> {
  final StateNotifierProviderRef<_HomeNotifier, HomeState> ref;
  _HomeNotifier(this.ref) : super(const HomeState());

  void setup(int perPage) {
    // noop
  }

  Future<void> getTopics() async {
    try {
      await ref.read(topicItemsProvider.notifier).getQiitaItems();
      final items = ref.read(topicItemsProvider);
      items.qiita;
    } catch (error) {
      //
      print('error: ${error.toString()}');
    }
  }
}

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(false) bool isLoading,
    List<TopicModel>? topics,
    String? errorMessage,
  }) = _HomeState;
}
