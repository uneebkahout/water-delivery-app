import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:waterdelivery/constants/assets.dart';
import 'package:waterdelivery/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waterdelivery/components/Text-style.dart';
import 'package:waterdelivery/screens/user-category.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: OnBoardingSlider(
          totalPage: 3,
          headerBackgroundColor: AppColors.whiteColor,
          pageBackgroundColor: AppColors.whiteColor,

          centerBackground: true,

// Background Images
          background: [
            Image.asset(
              imgAssets.onboardingtruck,
              height: 450.h,
            ),
            Image.asset(
              imgAssets.onBoardingmachine,
              height: 350.h,
            ),
            Image.asset(
              imgAssets.onboard_mb,
              height: 400.h,
            ),
          ],
          speed: 2,
//Page Bodies
          pageBodies: [
            Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50.h,
                  ),
                  textStyle(
                    text: "Verified Water Tanks!",
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100.h,
                  ),
                  textStyle(
                    text: "Save upto 30% with us",
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100.h,
                  ),
                  textStyle(
                    text: "Rent a Truck Easily",
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  textStyle(
                    text: "We are here to support you",
                    fontSize: 10.sp,
                    color: AppColors.greyColor,
                  )
                ],
              ),
            ),
          ],

//finish button
          finishButtonText: 'GetStarted',
          onFinish: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => UsrCateogory()));
          },
          finishButtonStyle: FinishButtonStyle(
            backgroundColor: AppColors.appColor,
          ),

//skip button

          skipTextButton: textStyle(
            text: 'Skip',
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.appColor,
          ),
          leading: Icon(Icons.arrow_back, color: AppColors.appColor),
        ),
      ),
    );
  }
}
