import 'package:about_abe_2/common/sns_icons.dart';
import 'package:about_abe_2/models/github/repos.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TopicsCard extends StatelessWidget {
  final double width;
  final Widget prefixIcon;
  final Widget suffixArea;
  final void Function()? onPressed;

  const TopicsCard({
    Key? key,
    this.width = 300.0,
    required this.prefixIcon,
    required this.suffixArea,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white.withOpacity(0.9),
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        onTap: onPressed,
        child: SizedBox(
          width: width,
          height: 100,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: prefixIcon,
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: suffixArea,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ReposCard extends StatelessWidget {
  final double width;
  final GitHubRepoModel repo;

  const ReposCard({
    Key? key,
    this.width = 300.0,
    required this.repo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(color: Colors.blueGrey, fontSize: 18);

    return Material(
      color: Colors.white.withOpacity(0.9),
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        onTap: () => launchUrl(Uri.parse(repo.url)),
        child: SizedBox(
          width: width,
          height: 100,
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Icon(SNSIcons.github, color: Colors.black),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(repo.name, style: textStyle),
                      Row(
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.star,
                                  color: Colors.orangeAccent),
                              const SizedBox(width: 4),
                              Text(repo.stars.toString(), style: textStyle),
                            ],
                          ),
                          const SizedBox(width: 18),
                          repo.language != 'null'
                              ? Text(repo.language, style: textStyle)
                              : Container(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
