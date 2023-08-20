import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:fox_fit_schedule/schedule/common/logger_service.dart';

class AppConfig {
  static final AppConfig _singleton = AppConfig._();

  factory AppConfig() {
    return _singleton;
  }

  AppConfig._();

  static bool get isProduction => kReleaseMode || environment.toLowerCase().startsWith('prod');

  static String get environment => dotenv.env['ENVIRONMENT'] ?? 'dev';

  static String get baseUrl => dotenv.env['BASE_URL'] ?? '';

  static String get basePath => dotenv.env['BASE_PATH'] ?? '';

  static String get apiUrl => dotenv.env['BASE_URL']! + dotenv.env['BASE_PATH']!;

  static String get authKey => dotenv.env['AUTH_KEY'] ?? '';

  Future<void> load() async {
    if (kReleaseMode) {
      await dotenv.load(fileName: 'lib/schedule/config/.env.prod');
    } else {
      await dotenv.load(fileName: 'lib/schedule/config/.env.dev');
    }

    LoggerService.ingect.i('ENVIROMENT: $environment\nAPI URL: $apiUrl');
  }
}
