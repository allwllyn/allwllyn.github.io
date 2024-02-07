import 'package:flutter/material.dart';
import 'package:one_dev_portfolio/home/widgets/home_button.dart';
import 'package:one_dev_portfolio/home/widgets/navigation_row.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

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
              screen: screens.about,
            ),
            backgroundColor: Colors.black,
          ),
          SliverToBoxAdapter(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Container(
                  child: const Text(
                    'Text about me',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )),
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
