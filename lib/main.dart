import 'package:flutter/material.dart';
import 'package:fourth_onboarding_screen/core/services/shared_pref_service.dart';
import 'core/app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final isSeen = await SharedPrefService.getOnboardingStatus();
  runApp(App(isSeen: isSeen));
}
