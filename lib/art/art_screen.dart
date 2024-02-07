import 'package:flutter/material.dart';
import 'package:one_dev_portfolio/art/widgets/art_box.dart';
import 'package:one_dev_portfolio/home/widgets/navigation_row.dart';

class ArtScreen extends StatelessWidget {
  const ArtScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double imgWidth = MediaQuery.of(context).size.width / 2 < 500
        ? MediaQuery.of(context).size.width / 2
        : 500;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            toolbarHeight: 62,
            automaticallyImplyLeading: false,
            pinned: true,
            title: NavigationRow(
              screen: screens.art,
            ),
            backgroundColor: Colors.black,
          ),
          ArtBox(imgWidth: imgWidth, imgPath: 'lib/assets/art/watercolor.jpeg'),
          ArtBox(imgWidth: imgWidth, imgPath: 'lib/assets/art/nyc_ship.jpg'),
          ArtBox(imgWidth: imgWidth, imgPath: 'lib/assets/art/foilbox.jpg'),
          ArtBox(imgWidth: imgWidth, imgPath: 'lib/assets/art/moka.jpg'),
          ArtBox(imgWidth: imgWidth, imgPath: 'lib/assets/art/straws.jpg'),
          ArtBox(imgWidth: imgWidth, imgPath: 'lib/assets/art/pumpkin.jpg'),
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
