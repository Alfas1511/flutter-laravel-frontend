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
}
