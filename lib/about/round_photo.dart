import 'package:flutter/material.dart';

class RoundPhoto extends StatelessWidget {
  const RoundPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    double imgWidth = MediaQuery.of(context).size.width / 2;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: UnconstrainedBox(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 250, maxHeight: 250),
          child: Stack(
            children: [
              Container(
                width: imgWidth,
                height: imgWidth,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'lib/assets/github_small.png',
                  fit: BoxFit.scaleDown,
                  color: Colors.grey.withAlpha(150),
                  colorBlendMode: BlendMode.color,
                ),
              ),
              // Container(
              //   width: imgWidth,
              //   height: imgWidth,
              //   clipBehavior: Clip.antiAlias,
              //   decoration: BoxDecoration(
              //     shape: BoxShape.circle,
              //     color: Colors.grey.withAlpha(50),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
