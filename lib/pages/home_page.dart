import 'package:flutter/material.dart';
import 'package:timer_app/config/variables.dart';
import 'package:timer_app/mixins/methods_mixin.dart';
import 'package:timer_app/widgets/buildTimerColumn.dart';
import 'package:timer_app/widgets/build_colon.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with Methods {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BuildTimerColumn(
                    incrementOnPressed: () => decimalIncrement(1),
                    decrementOnPressed: () => decrement(1),
                    counter: Variables.count1,
                  ),
                  BuildTimerColumn(
                    incrementOnPressed: () => singularIncrement(2),
                    decrementOnPressed: () => decrement(2),
                    counter: Variables.count2,
                  ),
                  const BuildColon(),
                  BuildTimerColumn(
                    incrementOnPressed: () => decimalIncrement(3),
                    decrementOnPressed: () => decrement(3),
                    counter: Variables.count3,
                  ),
                  BuildTimerColumn(
                      incrementOnPressed: () => singularIncrement(4),
                      decrementOnPressed: () => decrement(4),
                      counter: Variables.count4),
                ],
              ),
              const SizedBox(height: 30),
              IconButton(
                onPressed: toggleTimer,
                icon: Icon(Variables.isRunning ? Icons.pause : Icons.play_arrow,
                    size: 100),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
