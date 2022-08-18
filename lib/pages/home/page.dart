import 'package:about_abe_2/view_provider/home/provider.dart';
import 'package:about_abe_2/widgets/cards.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(homeProvider).isLoading
        ? const Center(child: CupertinoActivityIndicator())
        : ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: const [
              _TopicsWidget(),
              _Repositories(),
            ],
          );
  }
}

class _TopicsWidget extends ConsumerWidget {
  const _TopicsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final topics = ref.watch(homeProvider).topics ?? [];

    final cards = topics
        .map((topic) => TopicsCard(
              prefixIcon: Image.asset('assets/icon_qiita.png', height: 60),
              suffixArea: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    topic.title,
                    style:
                        const TextStyle(fontSize: 18, color: Colors.blueGrey),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    topic.summary ?? '',
                    style:
                        const TextStyle(fontSize: 18, color: Colors.blueGrey),
                  ),
                ],
              ),
              onPressed: () => launchUrl(Uri.parse(topic.url)),
            ))
        .toList();

    /// render
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Text(
            'Topics',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 140,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: cards.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: cards[index],
              );
            },
          ),
        ),
      ],
    );
  }
}

class _Repositories extends ConsumerWidget {
  const _Repositories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final repos = ref.watch(homeProvider).repos;
    final cards = repos?.map((repo) => ReposCard(repo: repo)).toList() ?? [];

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 24),
            child: Text('Body', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 140,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cards.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: cards[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
