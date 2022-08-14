import 'package:about_abe_2/models/discography/model.dart';
import 'package:anabebe_packages/anabebe_packages.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'provider.freezed.dart';

final _logger = Logger();

final discographyProvider =
    StateNotifierProvider<_DiscographyNotifier, DiscographyState>(
  (ref) => _DiscographyNotifier(ref: ref),
);

class _DiscographyNotifier extends StateNotifier<DiscographyState> {
  final StateNotifierProviderRef<_DiscographyNotifier, DiscographyState> ref;
  _DiscographyNotifier({required this.ref}) : super(const DiscographyState());

  Future<void> setup() async {
    _logger.setup('DISCOGRAPHY');
  }

  Future<void> get() async {
    //
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
