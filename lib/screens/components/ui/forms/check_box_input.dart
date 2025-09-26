import 'package:flutter/material.dart';
import 'package:flutter_laravel_sample/resources/app_colours.dart';
import 'package:flutter_laravel_sample/resources/app_spacing.dart';
import 'package:flutter_laravel_sample/resources/app_strings.dart';
import 'package:flutter_laravel_sample/resources/app_styles.dart';

class CheckBoxInputComponent extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const CheckBoxInputComponent({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  State<CheckBoxInputComponent> createState() => _CheckBoxInputComponentState();
}

class _CheckBoxInputComponentState extends State<CheckBoxInputComponent> {
  late bool value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
          scale: 1.5,
          child: Checkbox(
            activeColor: AppColours.primaryColour,
            checkColor: Colors.white,
            side: BorderSide(color: AppColours.primaryColour),
            value: value,
            onChanged: (bool? newValue) {
              setState(() => value = newValue!);
              widget.onChanged(value);
            },
          ),
        ),
        Expanded(
          child: Text.rich(
            style: AppStyles.medium(size: 14),
            TextSpan(
              text: AppStrings.agreeText,
              children: [
                WidgetSpan(child: AppSpacing.horizontal(size: 1)),
                TextSpan(
                  text: AppStrings.termsAndPrivacy,
                  style: AppStyles.medium(
                    size: 14,
                    color: AppColours.primaryColour,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    value = widget.value;
  }
}
