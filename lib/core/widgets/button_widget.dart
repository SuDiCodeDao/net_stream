import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final String imageUrl;

  const ButtonWidget(
      {super.key,
      required this.onPressed,
      required this.title,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
            child: Image.asset(
              imageUrl,
            ),
          ),
          Text(title)
        ],
      ),
    );
  }
}
