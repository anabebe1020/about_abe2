import 'package:about_abe_2/common/sns_icons.dart';
import 'package:about_abe_2/constants/sns.dart';
import 'package:about_abe_2/models/account/model.dart';
import 'package:about_abe_2/models/github/repos.dart';
import 'package:about_abe_2/pages/account/info_item.dart';
import 'package:about_abe_2/view_provider/account/provider.dart';
import 'package:about_abe_2/widgets/cards.dart';
import 'package:about_abe_2/widgets/face_circle.dart';
import 'package:about_abe_2/widgets/headline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AccountPage extends ConsumerWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(accountProvider);

    return state.isLoading
        ? const Center(child: CupertinoActivityIndicator())
        : ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            children: [
              _MeWidget(header: state.header),
              _Introduction(introduction: state.introduction),
              _Information(information: state.information),
              _Repositories(repos: state.repos),
            ],
          );
  }
}

class _MeWidget extends StatelessWidget {
  final AccountHeaderModel? header;
  const _MeWidget({Key? key, this.header}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: FaceCircle(imageUrl: header?.imageUrl ?? ''),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(header?.name ?? ''),
            ),
          ),
        ],
      ),
    );
  }
}

class _Introduction extends StatelessWidget {
  final String? introduction;
  const _Introduction({Key? key, this.introduction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Headline(text: 'Introduction'),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            child:
                Text(introduction ?? '', style: const TextStyle(fontSize: 18)),
          ),
        ],
      ),
    );
  }
}

class _Information extends StatelessWidget {
  final AccountInfoModel? information;
  const _Information({Key? key, this.information}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Headline(text: 'Information'),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InformationItem(
                      icon: Icons.corporate_fare,
                      text: information?.company ?? '',
                    ),
                    const SizedBox(width: 24),
                    InformationItem(
                      icon: Icons.add_location_outlined,
                      text: information?.location ?? '',
                    ),
                  ],
                ),
                InformationItem(
                  icon: Icons.insert_link_outlined,
                  text: information?.link ?? '',
                  url: information?.link,
                ),
                InformationItem(
                  icon: SNSIcons.github,
                  text: information?.github ?? '',
                  url: information?.github != null
                      ? '${SnsConst().githubBaseUrl}/${information!.github}'
                      : null,
                ),
                InformationItem(
                  icon: SNSIcons.twitter,
                  text: information?.twitter ?? '',
                  url: information?.twitter != null
                      ? '${SnsConst().twitterBaseUrl}/${information!.twitter}'
                      : null,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Repositories extends StatelessWidget {
  final List<GitHubRepoModel>? repos;
  const _Repositories({Key? key, this.repos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cards = repos?.map((repo) => ReposCard(repo: repo)).toList() ?? [];

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Headline(text: 'Repositories'),
          const SizedBox(height: 8),
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
