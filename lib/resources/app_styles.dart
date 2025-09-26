import 'package:flutter/material.dart';

class AppStyles {
  static TextStyle titleX({double size = 64, Color color = Colors.black}) {
    return TextStyle(color: color, fontSize: size, fontWeight: FontWeight.bold);
  }

  static TextStyle titletwo({double size = 32, Color color = Colors.black}) {
    return TextStyle(color: color, fontSize: size, fontWeight: FontWeight.bold);
  }

  static TextStyle description({double size = 16, Color color = Colors.black}) {
    return TextStyle(color: color, fontSize: size);
  }

  static TextStyle medium({double size = 16, Color color = Colors.black}) {
    return TextStyle(color: color, fontSize: size, fontWeight: FontWeight.w500);
  }

  static TextStyle appTitleText({double size = 18, Color color = Colors.black}) {
    return TextStyle(color: color, fontSize: size, fontWeight: FontWeight.w600);
  }
}
