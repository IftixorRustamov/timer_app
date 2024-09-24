import 'package:flutter/material.dart';
import 'package:timer_app/widgets/timer_select_button.dart';

import '../config/text.dart';
import '../config/variables.dart';

class BuildTimerColumn extends StatelessWidget {
  final void Function()? incrementOnPressed;
  final void Function()? decrementOnPressed;
  final int counter;

  const BuildTimerColumn(
      {super.key,
      required this.incrementOnPressed,
      required this.decrementOnPressed,
      required this.counter});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        !Variables.isRunning
            ? TimerSelectButton(
                onPressed: () => incrementOnPressed!(),
                icon: Icons.keyboard_arrow_up)
            : Container(),
        Text(
          counter.toString(),
          style: const TextStyle(
              color: TextConfig.color,
              fontSize: TextConfig.fontSize,
              fontWeight: TextConfig.fontWeight),
        ),
        !Variables.isRunning
            ? TimerSelectButton(
                onPressed: () => decrementOnPressed!(),
                icon: Icons.keyboard_arrow_down)
            : Container()
      ],
    );
  }
}
