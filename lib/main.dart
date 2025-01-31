import 'package:app_one/splashscreen/view/splash.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ScreenUtilInit(
            designSize: const Size(360, 800), // Set your design dimensions
            minTextAdapt: true,
            child: SplashScreen()));
  }
}
