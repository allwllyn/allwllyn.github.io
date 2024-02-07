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
                ios: true,
                android: true,
                title: 'Event Mapr',
                img1: 'lib/assets/event_1.png',
                img2: 'lib/assets/event_2.png',
                img3: 'lib/assets/event_3.png',
                coreFeatures:
                    'Map for laying out tables, Information/ graph page, ability to export csv of financial info',
                technologies:
                    ' Flutter, Dart, Firebase, Google Cloud Messaging, Google Cloud Functions, Github'),
          ),
          const SliverToBoxAdapter(
            child: AppShowcase(
                ios: false,
                android: true,
                title: 'Votebot',
                img1: 'lib/assets/poster_1.png',
                img2: 'lib/assets/poster_2.png',
                img3: 'lib/assets/poster_3.png',
                coreFeatures:
                    'Candidates upload posters, judges can views posters and submit scores, admin can run result function to show winner ',
                technologies: ' Android, Kotlin, Firebase, Github, Figma'),
          ),
          const SliverToBoxAdapter(
            child: AppShowcase(
                ios: true,
                android: true,
                title: 'Seat Finder',
                img1: 'lib/assets/seat_1.png',
                img2: 'lib/assets/seat_2.png',
                img3: 'lib/assets/seat_3.png',
                coreFeatures:
                    'Students around campus can share open seats at their table, someone looking for somewhere to search open seats by location',
                technologies: ' Flutter, Dart, Firebase, Github'),
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
