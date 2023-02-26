import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_school/config/app_color.dart';

import '../controllers/controller.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final loginController = Get.find<LoginController>();
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Sign in your account'),
                        const SizedBox(height: 10),
                        Text(
                          'View score and exam',
                          style: TextStyle(
                            fontSize: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.fontSize,
                            color: primaryColor,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 40),
                    Align(
                      child: Image.network(
                        'https://cdn-icons-png.flaticon.com/512/3429/3429402.png',
                        height: 120.0,
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      controller: email,
                      decoration: const InputDecoration(
                        label: Text('Email'),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Obx(() => TextField(
                          controller: password,
                          obscureText: loginController.showPassword.value,
                          decoration: InputDecoration(
                            label: const Text('Password'),
                            suffixIcon: IconButton(
                              icon: Icon(loginController.showPassword.value
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onPressed: () {
                                loginController.showPassword.toggle();
                              },
                            ),
                          ),
                        )),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Transform.translate(
                              offset: const Offset(-10, 0),
                              child: Radio(
                                value: false,
                                groupValue: false,
                                onChanged: (isCheck) {},
                              ),
                            ),
                            const Text('Remember me'),
                          ],
                        ),
                        SizedBox(
                            child: TextButton(
                          onPressed: () {},
                          child: const Text('Forgot password?'),
                        ))
                      ],
                    ),
                    const SizedBox(height: 30),
                    Obx(() => SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: TextButton(
                            onPressed: () {
                              loginController.login(email.text, password.text);
                            },
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  const EdgeInsets.all(15)),
                              elevation: MaterialStateProperty.all(2.0),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  primaryColor),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: primaryColor),
                                ),
                              ),
                            ),
                            child: loginController.logginIn.value
                                ? const SizedBox(
                                    width: 20,
                                    child: CircularProgressIndicator(
                                      color: Colors.white,
                                    ))
                                : const Text('Login'),
                          ),
                        ))
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
