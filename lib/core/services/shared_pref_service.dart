import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService {
  /// Singleton class
  SharedPrefService._internal();

  static final SharedPrefService _instance = SharedPrefService._internal();

  static SharedPrefService get instance => _instance;

  /// Onboarding key
  static const String _onboardingKey = "onboarding_status";

  /// Set Onboarding Status
  static Future<void> setOnboardingStatus() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_onboardingKey, true);
  }

  /// Get Onboarding Status
  static Future<bool> getOnboardingStatus() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_onboardingKey) ?? false;
  }

  /// Clear Onboarding Status
  static Future<void> clearOnboardingStatus() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_onboardingKey);
  }
}
