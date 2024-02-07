import 'package:flutter/material.dart';
import 'package:one_dev_portfolio/about/round_photo.dart';
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
          const SliverToBoxAdapter(
            child: RoundPhoto(),
          ),
          SliverToBoxAdapter(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: UnconstrainedBox(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 800),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 1.5,
                      child: const Text(
                        'My journey into the world of mobile development is anything but ordinary. Starting with a background in philosophy, I transitioned through architecture before finally finding my calling in computer science. This unique blend of disciplines has shaped my approach to app development, blending analytical thinking, design sensibility, and technical expertise. I began developing apps in 2017, driven by a fascination with the creative and technical challenges it presents. In 2022, I embraced Flutter, drawn to its ability to produce cross-platform applications with rich, intuitive user interfaces and seamless performance.\n\nMy transition into Flutter development marked a pivotal point in my career, allowing me to leverage the powerful capabilities of Dart to craft applications that are not only functional but also visually appealing and user-friendly. My background in philosophy and architecture enriches my problem-solving and design skills, enabling me to approach development challenges with innovative solutions that are both aesthetically pleasing and technically sound.\n\nI find mobile app development to be an exceptionally creative and gratifying field. It merges my love for aesthetic design with the logical structure of computer science, allowing me to create digital experiences that resonate with users on multiple levels. As a Flutter Mobile Developer, I am committed to staying ahead of the curve, continuously exploring new technologies and methodologies to enhance app functionality and user engagement. With a solid foundation in computer science and a track record of successful projects, I am eager to bring my unique perspective and skills to your team, contributing to innovative mobile solutions that exceed user expectations.',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.left,
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
                    padding: const EdgeInsets.only(top: 32.0),
                    child: Image.asset('lib/assets/built_with.png'),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
