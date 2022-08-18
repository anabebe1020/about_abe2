import 'package:about_abe_2/provider/github/provider.dart';
import 'package:about_abe_2/provider/qiita/provider.dart';
import 'package:about_abe_2/view_provider/account/provider.dart';
import 'package:about_abe_2/view_provider/discography/provider.dart';
import 'package:about_abe_2/view_provider/home/provider.dart';
import 'package:anabebe_packages/utils/log.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'provider.freezed.dart';

final _logger = Logger();

final rootProvider = StateNotifierProvider<_RootNotifier, RootState>(
  (ref) => _RootNotifier(ref),
);

class _RootNotifier extends StateNotifier<RootState> {
  StateNotifierProviderRef<_RootNotifier, RootState> ref;
  _RootNotifier(this.ref) : super(const RootState());

  Future<void> init() async {
    try {
      _logger.setup('ROOT');
      state.copyWith(isLoading: true);
      await ref.read(qiitaProvider.notifier).getUser();
      await ref.read(githubProvider.notifier).getUser();
      await ref.read(qiitaProvider.notifier).getItems();
      await ref.read(githubProvider.notifier).getRepos();
      await ref.read(homeProvider.notifier).getTopics();
      await ref.read(accountProvider.notifier).getUserInfo();
      await ref.read(discographyProvider.notifier).getDiscography();
      state.copyWith(isInitialized: true);
    } catch (e) {
      _logger.log('error: ${e.toString()}');
      state.copyWith(isInitialized: false);
    } finally {
      state.copyWith(isLoading: false);
    }
  }

  void onPageChanged(int index) => state = state.copyWith(currentPage: index);
  void nextPageChange() =>
      state = state.copyWith(currentPage: state.currentPage + 1);
  void prevPageChange() =>
      state = state.copyWith(currentPage: state.currentPage - 1);

  void onItemTapped(int index, PageController pageController) {
    // setting animation page.
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }
}

@freezed
class RootState with _$RootState {
  const factory RootState({
    @Default(false) bool isLoading,
    @Default(false) bool isInitialized,
    @Default(0) int currentPage,
    String? errorMessage,
  }) = _RootState;
}
