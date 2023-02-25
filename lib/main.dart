import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get_storage/get_storage.dart';

import 'config/config.dart';
import 'screens/screen.dart';
import 'bindings/binding.dart';

void main() async {
  // get env from string when run app
  Environment.initEnv(const String.fromEnvironment('ENVIRONMENT',
      defaultValue: Environment.dev));
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  GetStorage box = GetStorage();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // box.remove(AppConfig.accessToken);
    return GetMaterialApp(
      title: AppConfig.name,
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      // home: const LoginSRcreen(),
      initialRoute: box.hasData(AppConfig.accessToken) ? '/' : '/login',
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomeScreen(),
          binding: HomeBinding(),
        ),
        GetPage(
          name: '/login',
          page: () => LoginScreen(),
          binding: LoginBinding(),
        ),
        GetPage(
          name: '/profile',
          page: () => ProfileScreen(),
        ),
      ],
    );
  }
}
