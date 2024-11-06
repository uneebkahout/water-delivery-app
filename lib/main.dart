import 'package:flutter/material.dart';
import 'package:waterdelivery/screens/splashScreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
        builder: (context, child) =>  MaterialApp(
              title: 'Water Delivery',
              debugShowCheckedModeBanner: false,
              home: SplashScreen(),
            ));
  }
}

