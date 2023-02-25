import 'package:flutter/material.dart';
import 'package:flutter_application_school/config/config.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

// ignore: must_be_immutable
class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  GetStorage box = GetStorage();

  logout() {
    box.remove(AppConfig.accessToken);
    Get.toNamed('/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          TextButton(
              onPressed: () {
                logout();
              },
              child: const Text('Logout'))
        ],
      ),
    );
  }
}
