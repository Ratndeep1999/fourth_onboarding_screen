import 'package:flutter/material.dart';
import 'package:fourth_onboarding_screen/onboarding/data/onboarding_data.dart';
import 'package:fourth_onboarding_screen/utils/constants/app_icons.dart';
import 'package:fourth_onboarding_screen/utils/constants/app_texts.dart';
import 'package:lottie/lottie.dart';

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
        padding: const EdgeInsets.symmetric(vertical: 64.0, horizontal: 16.0),
        child: Column(
          children: [
            /// Onboarding Data Widget
            Expanded(
              child: PageView.builder(
                controller: _pageCtrl,
                onPageChanged: (index) => setState(() => _pageIndex = index),
                itemCount: onboardingData.length,
                itemBuilder: (ctx, index) {
                  /// Get Specific PAge Data
                  final item = onboardingData[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      /// Lottie Image
                      Lottie.asset(item.icon, height: 300, width: 300),
                      const SizedBox(height: 30),

                      /// Title
                      Text(
                        item.title,
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
                        item.desc,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: 30),

            ///
            Row(
              children: [
                /// Dot Indicator
                Row(
                  children: List.generate(
                    onboardingData.length,
                    (index) => AnimatedContainer(
                      height: false ? 16 : 32,
                      width: 8,
                      margin: EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: BoxDecoration(
                        color: false ? Colors.blue : Colors.blue.shade200,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      duration: Duration(milliseconds: 300),
                    ),
                  ),
                ),

                /// Next Button
              ],
            ),
          ],
        ),
      ),
    );
  }
}
