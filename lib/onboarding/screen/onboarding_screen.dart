import 'package:flutter/material.dart';
import 'package:fourth_onboarding_screen/onboarding/data/onboarding_data.dart';
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
            Row(
              children: [
                /// Dot Indicator
                Row(
                  children: List.generate(
                    onboardingData.length,
                    (index) => AnimatedContainer(
                      height: (_pageIndex == index) ? 40 : 16,
                      width: 5,
                      margin: EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: BoxDecoration(
                        color: (_pageIndex == index)
                            ? Colors.blue
                            : Colors.blue.shade200,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      duration: Duration(milliseconds: 300),
                    ),
                  ),
                ),
                Spacer(),

                /// Next Button
                FilledButton(
                  onPressed: () {},
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(20),
                  ),
                  child: Icon(Icons.arrow_forward, size: 24),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
