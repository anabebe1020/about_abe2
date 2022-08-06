import 'package:about_abe_2/pages/account/page.dart';
import 'package:about_abe_2/pages/discography/page.dart';
import 'package:about_abe_2/pages/home/page.dart';
import 'package:about_abe_2/provider/discography/provider.dart';
import 'package:about_abe_2/provider/home/provider.dart';
import 'package:about_abe_2/provider/root/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Root extends ConsumerWidget {
  Root({Key? key}) : super(key: key);

  final _pageController = PageController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // provider
    final pagesInfo = ref.read(pagesInfoProvider);
    final index = ref.watch(pageChangeProvider);
    final notifier = ref.read(pageChangeProvider.notifier);
    ref.read(homeProvider.notifier).getTopics();
    ref.read(discographyChangeProvider.notifier).get();

    // state
    final barItems = pagesInfo
        .map((info) => BottomNavigationBarItem(
              icon: Icon(info.icon),
              label: info.title,
            ))
        .toList();

    // render
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          IconButton(
            color: Colors.blueGrey,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          notifier.onPageChanged(index);
        },
        children: const [
          HomePage(),
          AccountPage(),
          DiscographyPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: barItems,
        currentIndex: index,
        onTap: (index) => notifier.onItemTapped(index, _pageController),
      ),
    );
  }
}
