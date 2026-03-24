import 'package:flutter/material.dart';
import 'package:fourth_onboarding_screen/onboarding/data/onboarding_data.dart';

class BottomFunctionWidget extends StatelessWidget {
  const BottomFunctionWidget({
    super.key,
    required int pageIndex,
    required this.onNextPress,
    required this.onDotTap,
  }) : _pageIndex = pageIndex;

  final int _pageIndex;
  final VoidCallback onNextPress;
  final Function(int) onDotTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Dot Indicator
        Row(
          children: List.generate(
            onboardingData.length,

            /// Single Dot
            (index) => InkWell(
              onTap: () => onDotTap(index),
              child: AnimatedContainer(
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
        ),
        Spacer(),

        /// Next Button
        FilledButton(
          onPressed: onNextPress,
          style: FilledButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: CircleBorder(),
            padding: EdgeInsets.all(20),
          ),
          child: Icon(Icons.arrow_forward, size: 24),
        ),
      ],
    );
  }
}
