import 'package:flutter/material.dart';

class TimerSelectButton extends StatelessWidget {
  final void Function()? onPressed;
  final IconData icon;

  const TimerSelectButton(
      {super.key, required this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) => IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 55,
        ),
      );
}
