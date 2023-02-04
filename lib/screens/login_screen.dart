import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_school/config/app_color.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  void loginAction() {
    Get.offAllNamed('/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Sign in your account'),
                const SizedBox(height: 10),
                Text(
                  'View score and exam',
                  style: TextStyle(
                    fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
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
            const TextField(
              decoration: InputDecoration(
                label: Text('Email'),
              ),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                label: Text('Password'),
              ),
            ),
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
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: loginAction,
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.all(15)),
                  elevation: MaterialStateProperty.all(2.0),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(primaryColor),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: primaryColor),
                    ),
                  ),
                ),
                child: const Text('Login'),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
