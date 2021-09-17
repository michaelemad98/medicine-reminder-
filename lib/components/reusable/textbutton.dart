import 'package:flutter/material.dart';

class TextButtonDefult extends StatelessWidget {
   final Color primary;
       final GestureTapCallback onPressed;
    final String text;
    const TextButtonDefult({
       required this.primary,
      required this.onPressed,
      required this.text,
    });
  @override
  Widget build(BuildContext context) {
    return TextButton(
  style: TextButton.styleFrom(
    primary: primary,
  ),
  onPressed:onPressed,
  child: Text(text),
);
  }
}