import 'package:flutter/material.dart';
import 'package:flutter_laravel_sample/resources/app_colours.dart';
import 'package:flutter_laravel_sample/resources/app_styles.dart';

class TextInputComponent extends StatefulWidget {
  final String label;
  TextInputComponent({super.key, required this.label});

  @override
  State<TextInputComponent> createState() => _TextInputComponentState();
}

class _TextInputComponentState extends State<TextInputComponent> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: widget.label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          // ignore: deprecated_member_use
          borderSide: BorderSide(color: AppColours.light20.withOpacity(0.2)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          // ignore: deprecated_member_use
          borderSide: BorderSide(color: AppColours.light20.withOpacity(0.2)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          // ignore: deprecated_member_use
          borderSide: BorderSide(color: AppColours.primaryColour),
        ),
      ),
    );
  }
}
