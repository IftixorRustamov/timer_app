import 'package:flutter/material.dart';
import 'package:timer_app/pages/home_page.dart';

class TimerApp extends StatelessWidget {
  const TimerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
