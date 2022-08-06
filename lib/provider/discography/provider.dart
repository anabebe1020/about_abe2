import 'package:about_abe_2/api/firebase.dart';
import 'package:about_abe_2/models/discography/model.dart';
import 'package:anabebe_packages/anabebe_packages.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'provider.freezed.dart';

final _logger = Logger();

final discographyChangeProvider =
    StateNotifierProvider<_DiscographyChangeNotifier, List<DiscographyModel>>(
  (ref) => _DiscographyChangeNotifier(ref: ref),
);

class _DiscographyChangeNotifier extends StateNotifier<List<DiscographyModel>> {
  final StateNotifierProviderRef<_DiscographyChangeNotifier,
      List<DiscographyModel>> ref;
  _DiscographyChangeNotifier({required this.ref}) : super([]);

  void setup() {
    _logger.setup('DISCOGRAPHY');
    FirebaseAPI().init();
  }

  Future<void> get() async {
    final discography = ref.watch(discographiesStreamProvider).value;
    state = discography ?? [];
  }
}

@freezed
class DiscographyState with _$DiscographyState {
  const factory DiscographyState({
    @Default(false) bool isLoading,
    List<DiscographyModel>? discography,
    String? errorMessage,
  }) = _DiscographyState;
}
