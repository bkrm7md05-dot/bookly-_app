import 'package:flutter/material.dart';
import 'package:project/Core/utils/app_router.dart';
import 'package:project/Features/Splash/presentation/views/SplashView.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router ,
      theme:  ThemeData.dark().copyWith(scaffoldBackgroundColor: Color(0xff100B20), 
      
      textTheme: ThemeData.dark().textTheme.apply(fontFamily: 'Montserrat', )
      ),
      
      
      debugShowCheckedModeBanner: false,
      
    );
  }
}
