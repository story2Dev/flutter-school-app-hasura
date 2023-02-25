import 'package:flutter_application_school/provider/login_provider.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final showPassword = false.obs;
  final logginIn = false.obs;

  final loginProvider = LoginProvider();

  void login(String email, String password) async {
    logginIn.toggle();
    await Future.delayed(const Duration(seconds: 2));
    final isLoged = await loginProvider.login(email, password);
    logginIn.toggle();
    if (isLoged) {
      Get.offAndToNamed('/');
    } else {
      Get.snackbar('Login', 'email or password fail!',
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
