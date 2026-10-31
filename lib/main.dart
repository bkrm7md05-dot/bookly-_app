import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:project/Features/Splash/presentation/views/SplashView.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme:  ThemeData.dark().copyWith(scaffoldBackgroundColor: Color(0xff100B20)),
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}
