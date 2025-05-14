import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {
  static String get apiBaseUrl => dotenv.env['API_BASE_URL'] ?? '';
  static String get firebaseProjectId =>
      dotenv.env['FIREBASE_PROJECT_ID'] ?? '';
  static String get environment => dotenv.env['ENVIRONMENT'] ?? 'development';

  static bool get isDevelopment => environment == 'development';
  static bool get isProduction => environment == 'production';
}
