import 'package:about_abe_2/contents/page_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final _pagesInfo = [
  PageModel(title: 'Home', icon: Icons.home),
  PageModel(title: 'Account', icon: Icons.account_circle),
  PageModel(title: 'Discography', icon: Icons.history),
];
final pagesInfoProvider = Provider((ref) => _pagesInfo);

final pageChangeProvider = StateNotifierProvider<_PageChangeNotifier, int>(
  (ref) => _PageChangeNotifier(),
);

class _PageChangeNotifier extends StateNotifier<int> {
  _PageChangeNotifier() : super(0);

  void onPageChanged(int index) => state = index;
  void nextPageChange() => state++;
  void prevPageChange() => state--;

  void onItemTapped(int index, PageController pageController) {
    // setting animation page.
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }
}
