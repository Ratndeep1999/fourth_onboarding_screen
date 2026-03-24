import 'package:flutter/material.dart';
import 'package:fourth_onboarding_screen/utils/constants/app_icons.dart';
import 'package:fourth_onboarding_screen/utils/constants/app_texts.dart';
import 'package:lottie/lottie.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// Lottie Image
            Lottie.asset(AppIcons.kOnboarding_icon1, height: 300, width: 300),
            const SizedBox(height: 30),

            /// Title
            Text(
              AppTexts.kOnBoardingTitle1,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 28,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 30),

            /// Description
            Text(
              AppTexts.kOnBoardingDesc1,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(height: 30),

            //
            Row(),
          ],
        ),
      ),
    );
  }
}
