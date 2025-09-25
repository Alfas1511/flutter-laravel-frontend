import 'package:flutter/material.dart';
import 'package:flutter_laravel_sample/models/slide.dart';
import 'package:flutter_laravel_sample/resources/app_colours.dart';
import 'package:flutter_laravel_sample/resources/app_strings.dart';
import 'package:flutter_laravel_sample/resources/app_styles.dart';
import 'package:flutter_laravel_sample/screens/components/ui/button.dart';

class WalkThroughScreen extends StatefulWidget {
  const WalkThroughScreen({super.key});

  @override
  State<WalkThroughScreen> createState() => _WalkThroughScreenState();
}

class _WalkThroughScreenState extends State<WalkThroughScreen> {
  PageController pageController = PageController();

  List<SlideModel> slides = [
    SlideModel(
      AppStrings.walkThroughTitle1,
      AppStrings.walkThroughDescription1,
      "assets/images/walkthrough_logo_1.jpg",
    ),
    SlideModel(
      AppStrings.walkThroughTitle2,
      AppStrings.walkThroughDescription2,
      "assets/images/walkthrough_logo_2.jpg",
    ),
    SlideModel(
      AppStrings.walkThroughTitle3,
      AppStrings.walkThroughDescription3,
      "assets/images/walkthrough_logo_3.jpg",
    ),
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColours.bgColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: PageView.builder(
              itemBuilder: (context, index) {
                return ListView(
                  padding: EdgeInsets.all(48),
                  shrinkWrap: true,
                  children: [
                    // const SizedBox(height: 48),
                    Image.asset(slides[index].image),
                    const SizedBox(height: 20),
                    Text(
                      slides[index].title,
                      style: AppStyles.titletwo(),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      slides[index].description,
                      style: AppStyles.description(
                        color: AppColours.lightColorText,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                );
              },
              controller: pageController,
              itemCount: slides.length,
              onPageChanged: (index) => setState(() => currentPage = index),
            ),
          ),

          // const SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                indicatorWidget(),

                const SizedBox(height: 20),

                ButtonComponent(label: AppStrings.signUp),

                const SizedBox(height: 20),

                ButtonComponent(
                  label: AppStrings.logIn,
                  type: ButtonType.secondary,
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget indicatorWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Icon(Icons.circle, size: 16, color: AppColours.primaryColour),
        // const SizedBox(width: 8),
        // Icon(Icons.circle, size: 16, color: AppColours.primaryColourLight),
        // const SizedBox(width: 8),
        // Icon(Icons.circle, size: 16, color: AppColours.primaryColourLight),
        for (int i = 0; i < slides.length; i++) ...[
          InkWell(
            onTap: () => {
              if (i != currentPage)
                pageController.animateToPage(
                  i,
                  duration: const Duration(microseconds: 500),
                  curve: Curves.easeOut,
                ),
            },
            child: Icon(
              Icons.circle,
              size: currentPage == i ? 16 : 8,
              color: currentPage == i
                  ? AppColours.primaryColour
                  : AppColours.primaryColourLight,
            ),
          ),
          if (i < slides.length - 1) const SizedBox(width: 8),
        ],
      ],
    );
  }
}
