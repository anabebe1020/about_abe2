import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InformationItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final String? url;

  const InformationItem({
    Key? key,
    required this.icon,
    required this.text,
    this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = (url != null)
        ? const TextStyle(fontSize: 18, color: Colors.lightBlue)
        : const TextStyle(fontSize: 18);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 8),
          url != null
              ? InkWell(
                  highlightColor: Colors.amber,
                  splashColor: Colors.amber,
                  child: Text(text, style: textStyle),
                  onTap: () async {
                    if (await canLaunchUrl(Uri.parse(url!))) {
                      await launchUrl(Uri.parse(url!));
                    }
                  },
                )
              : Text(text, style: const TextStyle(fontSize: 18))
        ],
      ),
    );
  }
}
