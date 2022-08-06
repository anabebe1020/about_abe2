import 'package:about_abe_2/models/discography/model.dart';
import 'package:about_abe_2/provider/discography/provider.dart';
import 'package:about_abe_2/utils/string.dart';
import 'package:about_abe_2/widgets/empty_page.dart';
import 'package:about_abe_2/widgets/headline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const _separator = SizedBox(height: 10);

class DiscographyPage extends ConsumerWidget {
  const DiscographyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final discography = ref.watch(discographyChangeProvider);

    return discography.isNotEmpty
        ? ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            itemCount: discography.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: _DiscographyTileList(company: discography[index]),
              );
            },
          )
        : const EmptyPage();
  }
}

class _DiscographyTileList extends StatelessWidget {
  final DiscographyModel company;
  const _DiscographyTileList({Key? key, required this.company})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final carrier = company.carrier;

    return Container(
      decoration: BoxDecoration(
        color: Colors.black38,
        borderRadius: BorderRadius.circular(24),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Column(
        children: <Widget>[
          Text(
            company.name,
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: Colors.blue),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: carrier.length,
            itemBuilder: (BuildContext context, int index) {
              return _DiscographyTile(carrier: carrier[index]);
            },
            reverse: true,
          ),
          _separator,
        ],
      ),
    );
  }
}

class _DiscographyTile extends StatelessWidget {
  final CarrierModel carrier;
  const _DiscographyTile({Key? key, required this.carrier}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${carrier.to} ~ ${carrier.from}',
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: Colors.blueGrey),
          ),
          _separator,
          const Headline(text: 'Position'),
          _TextArea(text: carrier.position),
          _separator,
          const Headline(text: 'Overview'),
          _TextArea(text: carrier.overview),
          _separator,
          const Headline(text: 'Skills'),
          _TextArea(text: listToString(carrier.skills)),
        ],
      ),
    );
  }
}

class _TextArea extends StatelessWidget {
  final String text;
  const _TextArea({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Text(text, style: const TextStyle(fontSize: 18)),
    );
  }
}
