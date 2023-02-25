import 'package:flutter_application_school/config/app_config.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginProvider extends GetConnect {
  final box = GetStorage();

  @override
  void onInit() {
    httpClient.baseUrl = AppConfig.env.apiAuth;
  }

  LoginProvider() {
    onInit();
  }

  Future<bool> login(String email, String password) async {
    try {
      final res = await post(
          '/signin/email-password', {'email': email, 'password': password});
      if (res.statusCode == 200) {
        final session = res.body['session'];
        box.write(AppConfig.accessToken, session[AppConfig.accessToken]);
      }
      return res.statusCode == 200;
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
