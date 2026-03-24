import 'package:flutter/material.dart';
import 'package:fourth_onboarding_screen/onboarding/data/onboarding_data.dart';
import 'package:fourth_onboarding_screen/onboarding/widgets/bottom_function_widget.dart';
import 'package:fourth_onboarding_screen/onboarding/widgets/onboarding_data_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageCtrl = PageController();
  int _pageIndex = 0;

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80.0, horizontal: 16.0),
        child: Column(
          children: [
            /// Onboarding Data Widget
            OnboardingDataWidget(
              pageCtrl: _pageCtrl,
              onPageChanged: (index) => setState(() => _pageIndex = index),
            ),
            const SizedBox(height: 30),

            /// Bottom Function Widget
            BottomFunctionWidget(
              pageIndex: _pageIndex,
              onNextPress: onNextPress,
              onDotTap: onDotTap,
            ),
          ],
        ),
      ),
    );
  }

  /// Next Button Press
  void onNextPress() {
    if ((_pageIndex + 1) == onboardingData.length) {
      /// Navigate To Home Screen
      // Navigator.of(
      //   context,
      // ).pushReplacement(MaterialPageRoute(builder: () => HomeScreen()));
    } else {
      /// Next Page
      _pageCtrl.nextPage(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  /// Single Dot Click
  void onDotTap(int index) {
    _pageCtrl.animateToPage(
      index,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
