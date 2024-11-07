import 'package:flutter/material.dart';
import 'package:waterdelivery/constants/assets.dart';
import 'package:waterdelivery/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waterdelivery/components/Text-style.dart';
import 'package:waterdelivery/screens/homeScreen.dart';
import 'package:waterdelivery/components/custom-button.dart';

class UsrCateogory extends StatelessWidget {
  const UsrCateogory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.appColor),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(
                imgAssets.user,
              ),
              height: 200.h,
            ),
            SizedBox(height: 10.h),
            textStyle(
              text: "As a Consumer",
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.appColor,
            ),
            SizedBox(height: 10.h),
            Image(
              image: AssetImage(imgAssets.supplier),
              height: 200.h,
            ),
            SizedBox(
              height: 10.h,
            ),
            textStyle(
              text: "As a Vendor",
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.greyColor,
            ),
            SizedBox(
              height: 20,
            ),
            textStyle(
              text: "Choose your Category",
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.blackColor,
            ),
            SizedBox(height: 10.h),
            textStyle(
              text: "Select one to define your Category",
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.greyColor,
            ),
            SizedBox(
              height: 20.h,
            ),

// Button to Navigate to nextPage
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: CustomButton(
                  text: 'Next ',
                  onPressed: () {},
                )),
          ],
        ),
      ),
    );
  }
}
