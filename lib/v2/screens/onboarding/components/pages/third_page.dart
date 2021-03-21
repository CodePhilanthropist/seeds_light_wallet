import 'package:flutter/material.dart';
import 'package:seeds/constants/app_colors.dart';
import '../onboarding_pages.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OnboardingPage(
      onboardingImage: "assets/images/onboarding/onboarding3.png",
      topPadding: 50,
      title: "Regenerative Economy",
      subTitle:
          "Unite with a global movement of organisations and people to regenerate our planet and heal our economy.",
      topLeaf1: Positioned(
        right: -20,
        top: -90,
        child: Image.asset(
          'assets/images/onboarding/big_light_right_leafe.png',
          color: AppColors.lightGreen3,
        ),
      ),
      topLeaf2: Positioned(
        right: -20,
        top: 160,
        child: Image.asset(
          'assets/images/onboarding/leafe_pointing_left.png',
          color: AppColors.lightGreen3,
        ),
      ),
      bottomLeaf1: Positioned(
        right: 100,
        bottom: 90,
        child: Image.asset(
          'assets/images/onboarding/leafe_pointing_left.png',
        ),
      ),
      bottomLeaf2: Positioned(
        left: 30,
        top: 20,
        child: Image.asset(
          'assets/images/onboarding/medium_dark_left_leafe.png',
        ),
      ),
    );
  }
}
