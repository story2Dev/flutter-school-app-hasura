import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'config/config.dart';
import 'screens/screen.dart';
import 'bindings/binding.dart';

void main() {
  // get env from string when run app
  Environment.initEnv(const String.fromEnvironment('ENVIRONMENT',
      defaultValue: Environment.dev));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppConfig.name,
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      // home: const LoginScreen(),
      initialRoute: '/login',
      getPages: [
        GetPage(name: '/', page: () => const HomeScreen()),
        GetPage(
            name: '/login',
            page: () => const LoginScreen(),
            binding: LoginBinding()),
      ],
    );
  }
}
