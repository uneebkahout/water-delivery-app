import 'package:flutter/material.dart';
import 'package:waterdelivery/components/appBar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waterdelivery/constants/colors.dart';
import 'package:waterdelivery/components/Text-style.dart';
import 'package:waterdelivery/components/text-field.dart';
import 'package:waterdelivery/components/custom-button.dart';
import 'package:waterdelivery/screens/auth/reset-password-%20verification.dart';
import 'package:waterdelivery/screens/auth/sign-up.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
      appBar: appBar(title: 'Sign In'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 50.h),
                ContainerWidget(textField(
                  hintText: 'Enter your User Name',
                  lableText: 'User name',
                  controller: nameController, 
                )),
                

                SizedBox(
                  height: 10.h,
                ),
                ContainerWidget(passwordTextField(
                    'Enter your Password', 'Password', passwordController)),
                SizedBox(
                  height: 10,
                ),
                CustomButton(
                  text: 'Sign In',
                  onPressed: () {},
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => resetPasswordVerfication()));
                    },
                    child: textStyle(
                      text: "Reset Your Password",
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.blackColor,
                    )),
                SizedBox(
                  height: 5.h,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()));
                    },
                    child: textStyle(
                      text: "Don't have an account? Sign Up",
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
