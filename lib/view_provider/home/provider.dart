import 'package:about_abe_2/models/home/topic.dart';
import 'package:about_abe_2/provider/qiita/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'provider.freezed.dart';

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
      state = state.copyWith(isLoading: true);
      await ref.read(qiitaProvider.notifier).getItems();
      final qiita = ref.read(qiitaProvider);
      //
      final items = qiita.items;
      state = state.copyWith(topics: items);
    } catch (error) {
      //
      print('error: ${error.toString()}');
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
    String? errorMessage,
  }) = _HomeState;
}
