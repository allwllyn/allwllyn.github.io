import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        title,
        style: const TextStyle(fontSize: 36, color: Colors.white),
      ),
    );
  }
}
