import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({super.key});

  @override
  Widget build(BuildContext context) {
    double dim = MediaQuery.of(context).size.width - 16;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: UnconstrainedBox(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1000, maxHeight: 1000),
          child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                // color: Colors.deepOrangeAccent.withAlpha(20),
                image: DecorationImage(
                    image: ExactAssetImage('lib/assets/home_2.png'),
                    colorFilter:
                        ColorFilter.mode(Colors.black54, BlendMode.saturation),
                    opacity: .06,
                    fit: BoxFit.cover)),
            width: dim,
            height: dim,
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Andrew Llewellyn',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width / 12 < 83
                          ? MediaQuery.of(context).size.width / 12
                          : 83),
                ),
                Text(
                  'Flutter Developer',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width / 18 < 60
                          ? MediaQuery.of(context).size.width / 18
                          : 60),
                ),
              ],
            )),
          ),
        ),
      ),
    );
  }
}
