import 'package:about_abe_2/widgets/cards.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      children: const [
        _TopicsWidget(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 24),
          child: Text(
            'Body',
            style: TextStyle(fontWeight: FontWeight.bold)
          ),
        ),
      ],
    );
  }
}

class _TopicsWidget extends StatelessWidget {
  const _TopicsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// state
    final topics = [
      TopicsCard(
        prefixIcon: Image.asset('assets/icon_qiita.png', height: 60),
        suffixArea: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('aaa', style: TextStyle(color: Colors.blueGrey)),
            Text('bbb', style: TextStyle(color: Colors.blueGrey)),
          ],
        ),
      ),
      TopicsCard(
        prefixIcon: Image.asset('assets/icon_qiita.png', height: 60),
        suffixArea: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('aaa', style: TextStyle(color: Colors.blueGrey)),
            Text('bbb', style: TextStyle(color: Colors.blueGrey)),
          ],
        ),
      ),
    ];

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
            itemCount: topics.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: topics[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
