import 'package:flutter/material.dart';
import 'package:waterdelivery/components/Text-style.dart';
import 'package:waterdelivery/components/appBar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';   
import 'package:waterdelivery/constants/colors.dart';
import 'package:waterdelivery/components/custom-button.dart';

  class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: "Verification"),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ContainerBox(textStyle(
                text: "1",
              )),
              ContainerBox(textStyle(
                text: "2",
              )),
              ContainerBox(textStyle(
                text: "3",
              )),
              ContainerBox(textStyle(
                text: "4",
              )),
              ContainerBox(textStyle(
                text: "5",
              )),
              ContainerBox(textStyle(
                text: "6",
              )),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textStyle(
                  text: "Resend OTP in 40 seconds",
                  color: Colors.black,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w700,
                ),
                TextButton(
                    onPressed: () {},
                    child: textStyle(
                      text: "Resend Code",
                      color: Colors.black,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                    )),
              ],
            ),
          ),

          SizedBox(
            height: 20.h,
          ),
          CustomButton(
            text: "Sign Up",
            onPressed: () {},
          ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                      value: isChecked,
                      activeColor: AppColors.appColor,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      }),
                  textStyle(
                    text:
                        'By signing up, you agree to our Terms of Service and Privacy Policy',
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.blackColor,
                  )
                ],
              )
          
        ],
        
      )),
    );
  }

  Widget ContainerBox(Widget child) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(15)),
      child: Center(child: child),
    );
  }
}
