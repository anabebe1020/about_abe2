import 'package:about_abe_2/pages/account/page.dart';
import 'package:about_abe_2/pages/discography/page.dart';
import 'package:about_abe_2/pages/home/page.dart';
import 'package:about_abe_2/provider/root/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Root extends ConsumerStatefulWidget {
  const Root({Key? key}) : super(key: key);

  @override
  ConsumerState<Root> createState() => _RootState();
}

class _RootState extends ConsumerState<Root> {
  final _pageController = PageController();

  @override
  void initState() {
    ref.read(rootProvider.notifier).init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // provider
    final state = ref.watch(rootProvider);
    final notifier = ref.read(rootProvider.notifier);

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
      body: state.isLoading
          ? const Center(child: CupertinoActivityIndicator())
          : PageView(
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
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Discography',
          ),
        ],
        currentIndex: state.currentPage,
        onTap: (index) => notifier.onItemTapped(index, _pageController),
      ),
    );
  }
}
