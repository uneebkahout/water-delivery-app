import 'package:flutter/material.dart';
import 'package:waterdelivery/components/appBar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waterdelivery/constants/colors.dart';
import 'package:waterdelivery/components/Text-style.dart';
import 'package:waterdelivery/components/text-field.dart';
import 'package:waterdelivery/components/custom-button.dart';
import 'package:waterdelivery/screens/auth/sign-in.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController phoneController = TextEditingController();
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
      appBar: appBar(title: 'Sign Up'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
                child: Center(
                  child: textStyle(
                      text: 'Sign Up with Phone Number',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.blackColor),
                ),
              ),
              SizedBox(height: 20.h),
              ContainerWidget(textField(
                hintText: 'Enter your User Name',
                lableText: 'user name',
                controller: nameController,
              )),
              SizedBox(height: 15.h),
              ContainerWidget(
                textField(
                  controller: phoneController,
                  hintText: 'Enter your phone number',
                  lableText: 'Phone Number',
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              ContainerWidget(passwordTextField(
                  'Enter your Password', 'Password', passwordController)),
              SizedBox(
                height: 10,
              ),
              ContainerWidget(passwordTextField('Confirm Your Password',
                  'confirm your Password', passwordController)),
              SizedBox(height: 20.h),
              CustomButton(
                text: 'Sign Up',
                onPressed: () {},
              ),
              SizedBox(
                height: 10.h,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignInScreen()));
                  },
                  child: textStyle(
                    text: 'Already have an account? Sign In',
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.blackColor,
                  )),
// CheckBox
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
