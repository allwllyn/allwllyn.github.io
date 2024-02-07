import 'package:flutter/material.dart';
import 'package:one_dev_portfolio/about/about_screen.dart';
import 'package:one_dev_portfolio/apps/apps_screen.dart';
import 'package:one_dev_portfolio/art/art_screen.dart';
import 'package:one_dev_portfolio/home/home_screen.dart';
import 'package:one_dev_portfolio/home/widgets/home_button.dart';

class NavigationRow extends StatelessWidget {
  const NavigationRow({required this.screen, super.key});

  final screens screen;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HomeButton(
            onTap: () {
              if (screen != screens.home) {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const HomeScreen()));
              }
            },
            text: 'Home'),
        const Spacer(),
        HomeButton(
          onTap: () {
            if (screen != screens.about) {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const AboutScreen()));
            }
          },
          text: 'About',
        ),
        HomeButton(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const AppsScreen()));
          },
          text: 'Apps',
        ),
        HomeButton(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const ArtScreen()));
          },
          text: 'Art',
        ),
      ],
    );
  }
}
