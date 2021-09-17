import 'package:flutter/material.dart';

class DefaultElevatedButton extends StatelessWidget {
  final Color onPrimary;
  final Color primary;
  final GestureTapCallback onPressed;
  final String text;
  final double minimumSizeX;
  final double minimumSizeY;
  final double paddingHorizontal;
  final double fontSize;

  const DefaultElevatedButton(
      {required this.onPrimary,
        required this.primary,
        required this.onPressed,
        required this.text,
      required this.minimumSizeX,
      required this.minimumSizeY,
      required this.paddingHorizontal,
      required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          onPrimary: onPrimary,
          primary: primary,
          minimumSize: Size(minimumSizeX, minimumSizeY),
          padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(fontSize: fontSize),
        ));
  }
}
