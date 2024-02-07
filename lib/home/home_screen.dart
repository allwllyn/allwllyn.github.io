import 'package:flutter/material.dart';
import 'package:one_dev_portfolio/home/widgets/image_card.dart';
import 'package:one_dev_portfolio/home/widgets/navigation_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            toolbarHeight: 62,
            automaticallyImplyLeading: false,
            pinned: true,
            title: NavigationRow(
              screen: screens.home,
            ),
            backgroundColor: Colors.black87,
          ),
          const SliverToBoxAdapter(
            child: Padding(
                padding: EdgeInsets.fromLTRB(0, 8, 0, 0), child: ImageCard()),
          ),
          SliverToBoxAdapter(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: UnconstrainedBox(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 1000),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8)),
                      ),
                    ),
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
