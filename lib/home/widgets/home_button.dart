import 'package:flutter/material.dart';

enum screens { home, about, app, art }

class HomeButton extends StatefulWidget {
  const HomeButton({required this.onTap, required this.text, super.key});

  final Function onTap;
  final String text;

  @override
  State<HomeButton> createState() => _HomeButtonState();
}

@override
initState() {}

class _HomeButtonState extends State<HomeButton> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        splashFactory: NoSplash.splashFactory,
        overlayColor:
            MaterialStateProperty.resolveWith((states) => Colors.transparent),
      ),
      onHover: (changed) {
        // if (changed) {
        setState(() {
          isHovering = !isHovering;
        });
        // }
      },
      onPressed: () {
        widget.onTap();
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            height: 4,
          ),
          isHovering
              ? Container(
                  height: 20,
                  width: 5,
                  color: Colors.lightBlueAccent,
                )
              : const SizedBox(
                  height: 20,
                ),
          Text(
            widget.text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
