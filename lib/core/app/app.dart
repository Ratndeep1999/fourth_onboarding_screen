import 'package:flutter/material.dart';
import 'package:fourth_onboarding_screen/onboarding/screen/onboarding_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light,
      home: OnboardingScreen(),
    );
  }
}
