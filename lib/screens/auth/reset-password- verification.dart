import 'package:flutter/material.dart';
import 'package:waterdelivery/components/appBar.dart';    
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waterdelivery/components/text-field.dart';
import 'package:waterdelivery/constants/colors.dart';
import 'package:waterdelivery/components/Text-style.dart';  
import 'package:waterdelivery/components/custom-button.dart';
import 'package:waterdelivery/screens/auth/verification_screen.dart';

import 'package:waterdelivery/screens/auth/sign-up.dart';

class resetPasswordVerfication extends StatefulWidget {
  const resetPasswordVerfication({super.key});

  @override
  State<resetPasswordVerfication> createState() => _resetPasswordVerficationState();
}

class _resetPasswordVerficationState extends State<resetPasswordVerfication> {
  TextEditingController phoneNumberController = TextEditingController();
  bool passwordVisible = false;
  bool isChecked = false;
  @override
  void initState() {
    passwordVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: 'Rest your Password'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 60.h,
                ),
                ContainerWidget(
                  textField(
                    controller: phoneNumberController,
                    hintText: 'Enter your phone number',
                    lableText: 'Enter your Phone Number',
                  ),
                ),
              SizedBox(
                height: 20.h,
              ),
               CustomButton(
                  text: 'Next',
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VerificationScreen()));
                  },
                ),
               
                SizedBox(
                  height: 10.h,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()));
                    },
                    child: textStyle(
                      text: "Sign In",
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.blackColor,
                    )),
                // CheckBox
              ],
            ),
          ),
        ),
      ),
    );
  }

//Container Widget
  Widget ContainerWidget(Widget child) {
    return Container(
      width: 400,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: AppColors.appColor),
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: child,
      ),
    );
  }

// Password TextFiled
  Widget passwordTextField(
      String hintTxt, String labletxt, TextEditingController controller) {
    return TextField(
      controller: controller,
      obscureText: passwordVisible,
      decoration: InputDecoration(
        hintText: hintTxt,
        labelText: labletxt,
        hintStyle: TextStyle(
          color: AppColors.greyColor,
          fontSize: 13.sp,
        ),
        suffixIcon: IconButton(
            icon: Icon(
              passwordVisible ? Icons.visibility : Icons.visibility_off,
              color: AppColors.appColor,
            ),
            onPressed: () {
              setState(() {
                passwordVisible = !passwordVisible;
              });
            }),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
