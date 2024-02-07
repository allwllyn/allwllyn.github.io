import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  const AppTitle(
      {required this.title,
      required this.ios,
      required this.android,
      super.key});

  final String title;
  final bool ios;
  final bool android;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 24, color: Colors.white),
          ),
          const SizedBox(
            width: 24,
          ),
          android
              ? const Icon(
                  Icons.android,
                  size: 30,
                  color: Colors.greenAccent,
                )
              : const SizedBox.shrink(),
          const SizedBox(
            width: 8,
          ),
          ios
              ? const Icon(
                  Icons.apple,
                  size: 30,
                  color: Colors.white,
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
