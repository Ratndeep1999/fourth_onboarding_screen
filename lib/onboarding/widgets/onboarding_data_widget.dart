import 'package:flutter/material.dart';
import 'package:fourth_onboarding_screen/onboarding/data/onboarding_data.dart';
import 'package:lottie/lottie.dart';

class OnboardingDataWidget extends StatelessWidget {
  const OnboardingDataWidget({
    super.key,
    required this.pageCtrl,
    required this.onPageChanged,
  });

  final PageController pageCtrl;
  final Function(int) onPageChanged;

  @override
  Widget build(ctx) {
    return Expanded(
      child: PageView.builder(
        controller: pageCtrl,
        onPageChanged: onPageChanged,
        itemCount: onboardingData.length,
        itemBuilder: (ctx, index) {
          /// Get Specific PAge Data
          final item = onboardingData[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// Lottie Image
              Lottie.asset(item.icon, height: 300, width: 300),
              const SizedBox(height: 60),

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
              const SizedBox(height: 40),

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
    );
  }
}
