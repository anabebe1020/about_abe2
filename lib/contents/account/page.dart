import 'package:about_abe_2/widgets/face_circle.dart';
import 'package:about_abe_2/widgets/headline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AccountPage extends ConsumerWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      children: const [
        _MeWidget(name: 'Ryousuke Abe'),
        _Introduction(),
        _Information(),
      ],
    );
  }
}

class _MeWidget extends StatelessWidget {
  final String? imageUrl;
  final String name;
  const _MeWidget({Key? key, this.imageUrl, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: FaceCircle(imageUrl: imageUrl),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(name),
            ),
          ),
        ],
      ),
    );
  }
}

class _Introduction extends StatelessWidget {
  const _Introduction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Headline(text: 'Introduction'),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            child: Text('sample introduction text.',
                style: TextStyle(fontSize: 18)),
          ),
        ],
      ),
    );
  }
}

class _Information extends StatelessWidget {
  const _Information({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Headline(text: 'Information'),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            child: Text('sample introduction text.',
                style: TextStyle(fontSize: 18)),
          ),
        ],
      ),
    );
  }
}
