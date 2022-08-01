import 'package:flutter/material.dart';

class TopicsCard extends StatelessWidget {
  final double width;
  final Widget prefixIcon;
  final Widget suffixArea;
  const TopicsCard({
    Key? key,
    this.width = 300.0,
    required this.prefixIcon,
    required this.suffixArea,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: prefixIcon,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: suffixArea,
            ),
          ),
        ],
      ),
    );
  }
}
