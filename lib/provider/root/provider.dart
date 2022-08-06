import 'package:about_abe_2/pages/page_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'provider.freezed.dart';

final _pagesInfo = [
  PageModel(title: 'Home', icon: Icons.home),
  PageModel(title: 'Account', icon: Icons.account_circle),
  PageModel(title: 'Discography', icon: Icons.history),
];
final pagesInfoProvider = Provider((ref) => _pagesInfo);

final pageChangeProvider =
    StateNotifierProvider<_PageChangeNotifier, RootState>(
  (ref) => _PageChangeNotifier(),
);

class _PageChangeNotifier extends StateNotifier<RootState> {
  _PageChangeNotifier() : super(const RootState());

  void onPageChanged(int index) => state.copyWith(currentPage: index);
  void nextPageChange() => state.copyWith(currentPage: state.currentPage + 1);
  void prevPageChange() => state.copyWith(currentPage: state.currentPage - 1);

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
