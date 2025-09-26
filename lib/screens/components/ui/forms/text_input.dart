import 'package:flutter/material.dart';
import 'package:flutter_laravel_sample/resources/app_colours.dart';
import 'package:flutter_laravel_sample/resources/app_spacing.dart';

class TextInputComponent extends StatefulWidget {
  final String label;
  final bool isPassword;

  TextInputComponent({super.key, required this.label, this.isPassword = false});

  @override
  State<TextInputComponent> createState() => _TextInputComponentState();
}

class _TextInputComponentState extends State<TextInputComponent> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: (widget.isPassword && showPassword),
      decoration: InputDecoration(
        labelText: widget.label,
        labelStyle: TextStyle(color: AppColours.light20),
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
        suffixIcon: widget.isPassword
            ? InkWell(
                onTap: togglePassword,
                child: Icon(
                  showPassword
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  color: AppColours.light20,
                ),
              )
            : AppSpacing.empty(),
      ),
    );
  }

  void togglePassword() => setState(() {
    showPassword = !showPassword;
  });
}
