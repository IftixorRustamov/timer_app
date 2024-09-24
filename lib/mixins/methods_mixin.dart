import 'dart:async';

import 'package:flutter/cupertino.dart';

import '../config/variables.dart';
import '../pages/home_page.dart';

mixin Methods on State<HomePage> {
  static Timer? _timer;

  int get totalSeconds =>
      (Variables.count1 * 10 + Variables.count2) * 60 +
      (Variables.count3 * 10 + Variables.count4);

  void setTimeFromSeconds(int seconds) {
    setState(() {
      Variables.count1 = (seconds ~/ 600) % 10;
      Variables.count2 = (seconds ~/ 60) % 10;
      Variables.count3 = (seconds ~/ 10) % 6;
      Variables.count4 = seconds % 10;
    });
  }

  void toggleTimer() {
    if (Variables.isRunning) {
      _timer?.cancel();
    } else {
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        if (totalSeconds > 0) {
          setTimeFromSeconds(totalSeconds - 1);
        } else {
          _timer?.cancel();
        }
      });
    }
    setState(() {
      Variables.isRunning = !Variables.isRunning;
    });
  }

  void decimalIncrement(int counterIndex) {
    setState(() {
      if (counterIndex == 1 && Variables.count1 < 5) {
        Variables.count1++;
      } else if (counterIndex == 3 && Variables.count3 < 5) {
        Variables.count3++;
      }
    });
  }

  void singularIncrement(int counterIndex) {
    setState(() {
      if (counterIndex == 2 && Variables.count2 < 9) {
        Variables.count2++;
      } else if (counterIndex == 4 && Variables.count4 < 9) {
        Variables.count4++;
      }
    });
  }

  void decrement(int counterIndex) {
    setState(() {
      if (counterIndex == 1 && Variables.count1 > 0) {
        Variables.count1--;
      } else if (counterIndex == 2 && Variables.count2 > 0) {
        Variables.count2--;
      } else if (counterIndex == 3 && Variables.count3 > 0) {
        Variables.count3--;
      } else if (counterIndex == 4 && Variables.count4 > 0) {
        Variables.count4--;
      }
    });
  }
}
