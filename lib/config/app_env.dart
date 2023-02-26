part 'dev_env.dart';
part 'prod_env.dart';
part 'staging_env.dart';

abstract class BaseEnv {
  String get apiUrl;
  String get apiAuth;
  bool get trackEvent;
  bool get reportErrors;
}

class Environment {
  factory Environment() {
    return _singleton;
  }

  Environment._internal();

  static final Environment _singleton = Environment._internal();

  static const String dev = 'DEV';
  static const String staging = 'STAGING';
  static const String production = 'PRODUCTION';

  static BaseEnv env = DevEnv();

  static initEnv(String environment) {
    env = _getConfig(environment);
  }

  static BaseEnv _getConfig(String environment) {
    switch (environment) {
      case Environment.production:
        return ProdEnv();
      case Environment.staging:
        return StagingEnv();
      case Environment.dev:
        return DevEnv();
      default:
        return DevEnv();
    }
  }
}
