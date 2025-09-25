import 'package:flutter/material.dart';
import 'package:flutter_laravel_sample/resources/app_routes.dart';
import 'package:flutter_laravel_sample/resources/app_strings.dart';
import 'package:flutter_laravel_sample/resources/app_styles.dart';
import 'package:flutter_laravel_sample/screens/components/ui/text_input.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.signUp, style: AppStyles.appTitleText()),
        centerTitle: true,
        leading: InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(24),
        children: [TextInputComponent(label: "Name")]),
    );
  }
}
