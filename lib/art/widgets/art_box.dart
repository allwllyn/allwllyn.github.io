import 'package:flutter/material.dart';

class ArtBox extends StatelessWidget {
  const ArtBox({required this.imgPath, required this.imgWidth, super.key});

  final String imgPath;
  final double imgWidth;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: UnconstrainedBox(
        child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(width: imgWidth, child: Image.asset(imgPath)),
            )),
      ),
    );
  }
}
