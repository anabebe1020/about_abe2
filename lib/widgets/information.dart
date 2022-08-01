import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InformationItem extends StatelessWidget {
  final IconData icon;
  final bool isLinked;
  final String text;
  final String url;

  const InformationItem({
    Key? key,
    required this.icon,
    required this.isLinked,
    required this.text,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(icon),
          isLinked
              ? InkWell(
                  highlightColor: Colors.amber,
                  splashColor: Colors.amber,
                  child: Text(text),
                  onTap: () async {
                    if (await canLaunchUrl(Uri.parse(url))) {
                      await launchUrl(Uri.parse(url));
                    }
                  },
                )
              : Text(text)
        ],
      ),
    );
  }
}
