class SharedPrefService {
  /// Singleton class
  SharedPrefService._internal();

  static final SharedPrefService _instance = SharedPrefService._internal();

  static SharedPrefService get instance => _instance;
}
