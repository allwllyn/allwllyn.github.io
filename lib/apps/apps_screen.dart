import 'package:flutter/material.dart';
import 'package:one_dev_portfolio/apps/widgets/app_showcase.dart';
import 'package:one_dev_portfolio/home/widgets/home_button.dart';
import 'package:one_dev_portfolio/home/widgets/navigation_row.dart';

class AppsScreen extends StatelessWidget {
  const AppsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            toolbarHeight: 62,
            automaticallyImplyLeading: false,
            pinned: true,
            title: NavigationRow(
              screen: screens.app,
            ),
            backgroundColor: Colors.black,
          ),
          const SliverToBoxAdapter(
            child: AppShowcase(
                title: 'Event Mapr',
                img1: 'lib/assets/event_1.png',
                img2: 'lib/assets/event_2.png',
                img3: 'lib/assets/event_3.png',
                coreFeatures:
                    'Map for laying out tables, Information/ graph page, ability to export csv of financial info',
                technologies:
                    ' Flutter, Dart, Firebase, Google Cloud Messaging, Google Cloud Functions, Github'),
          ),
          SliverToBoxAdapter(
            child: UnconstrainedBox(
              child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 200),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset('lib/assets/built_with.png'),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
