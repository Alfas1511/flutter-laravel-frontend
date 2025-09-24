import 'package:flutter/material.dart';
import 'package:flutter_laravel_sample/resources/app_colours.dart';
import 'package:flutter_laravel_sample/resources/app_routes.dart';
import 'package:flutter_laravel_sample/resources/app_strings.dart';
import 'package:flutter_laravel_sample/screens/onboarding/splash.dart';
import 'package:flutter_laravel_sample/screens/onboarding/walk_through_screen.dart';
import 'package:flutter_laravel_sample/screens/test_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColours.primaryColour),
        useMaterial3: true,
        fontFamily: 'Inter',
      ),
      initialRoute: AppRoutes.splash,
      routes: {
        AppRoutes.splash: (context) => const SplashScreen(),
        AppRoutes.walkthrough: (context) => WalkThroughScreen(),
        AppRoutes.test: (context) => TestScreen(),
      },
    );
  }
}
