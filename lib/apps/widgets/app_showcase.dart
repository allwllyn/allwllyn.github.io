import 'package:flutter/material.dart';
import 'package:one_dev_portfolio/apps/widgets/app_title.dart';

class AppShowcase extends StatelessWidget {
  const AppShowcase(
      {required this.title,
      required this.ios,
      required this.android,
      required this.img1,
      required this.img2,
      required this.img3,
      required this.coreFeatures,
      required this.technologies,
      super.key});

  final String title;
  final bool ios;
  final bool android;
  final String img1;
  final String img2;
  final String img3;
  final String coreFeatures;
  final String technologies;

  @override
  Widget build(BuildContext context) {
    double imgWidth = MediaQuery.of(context).size.width / 3.25 < 500
        ? MediaQuery.of(context).size.width / 3.25
        : 500;
    return Container(
      width: 400,
      margin: const EdgeInsets.fromLTRB(32, 16, 32, 16),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.withAlpha(20), width: 3)),
      child: Column(children: [
        AppTitle(
          title: title,
          ios: ios,
          android: android,
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: imgWidth, child: Image.asset(img1)),
              const SizedBox(
                width: 24,
              ),
              SizedBox(height: imgWidth, child: Image.asset(img2)),
              const SizedBox(
                width: 24,
              ),
              SizedBox(height: imgWidth, child: Image.asset(img3)),
            ],
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800),
          child: Text(
            'Core Features: $coreFeatures',
            style: const TextStyle(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800),
          child: Text(
            'Technologies: $technologies',
            style: const TextStyle(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 24,
        )
      ]),
    );
  }
}
