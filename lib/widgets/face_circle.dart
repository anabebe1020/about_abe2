import 'package:flutter/material.dart';

class FaceCircle extends StatelessWidget {
  final String? imageUrl;
  const FaceCircle({Key? key, this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: imageUrl != null
            ? DecorationImage(
                image: NetworkImage(imageUrl!),
                fit: BoxFit.cover,
              )
            : const DecorationImage(
                image: AssetImage('assets/noimage.png'),
                fit: BoxFit.fill,
              ),
      ),
    );
  }
}
