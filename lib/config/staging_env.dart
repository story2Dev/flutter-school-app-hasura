part of 'app_env.dart';

class StagingEnv implements BaseEnv {
  @override
  // TODO: implement apiAuth
  String get apiAuth => 'http://localhost:4000';

  @override
  // TODO: implement apiUrl
  String get apiUrl => 'http://localhost:8080/v1/graphql';

  @override
  // TODO: implement reportErrors
  bool get reportErrors => false;

  @override
  // TODO: implement trackEvent
  bool get trackEvent => false;
}
