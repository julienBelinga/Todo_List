import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Colors.amber[300],
      child: Text(text),
    );
  }
}
