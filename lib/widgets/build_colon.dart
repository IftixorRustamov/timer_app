import 'package:flutter/cupertino.dart';

import '../config/text.dart';

class BuildColon extends StatelessWidget {
  const BuildColon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      ":",
      style: TextStyle(
        color: TextConfig.color,
        fontSize: TextConfig.fontSize,
        fontWeight: TextConfig.fontWeight,
      ),
    );
  }
}
