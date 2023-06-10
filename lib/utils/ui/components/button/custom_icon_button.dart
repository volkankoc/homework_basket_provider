import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData iconData;
  final Color color;
  const CustomIconButton(
      {super.key, required this.onPressed, required this.iconData,  this.color=Colors.black});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(iconData),
      color: color,
    );
  }
}
