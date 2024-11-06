import 'package:flutter/material.dart';
import 'package:waterdelivery/constants/assets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import 'package:waterdelivery/screens/homeScreen.dart';
import 'package:waterdelivery/screens/OnBoardingScreen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool alreadyUsed = false;
  void getData() async {
    final prefs = await SharedPreferences.getInstance();
    alreadyUsed = prefs.getBool('alreadyUsed') ?? false;
  }

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    alreadyUsed ? HomeScreen() : OnboardingScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:
        
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,  
                  children: [
                    Image.asset(imgAssets.appLogo),
                     SpinKitThreeInOut(
                itemBuilder: (_, int index) {
                  return DecoratedBox(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                        color: index.isEven
                            ? const Color.fromARGB(255, 235, 244, 54)
                            : Color.fromARGB(255, 0, 108, 172)),
                  );
                },
              ),
               
                  ],
                ),
              )
         
         ),
      
    );
  }
}
  