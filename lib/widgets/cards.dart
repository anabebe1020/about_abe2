import 'package:flutter/material.dart';

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
