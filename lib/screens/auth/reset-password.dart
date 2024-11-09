import 'package:flutter/material.dart';
import 'package:waterdelivery/components/appBar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waterdelivery/constants/colors.dart';
import 'package:waterdelivery/components/Text-style.dart';
import 'package:waterdelivery/components/text-field.dart';
import 'package:waterdelivery/components/custom-button.dart';
import 'package:waterdelivery/screens/auth/sign-in.dart';

class resetPassword extends StatefulWidget {
  const resetPassword({super.key});

  @override
  State<resetPassword> createState() => _resetPasswordState();
}

class _resetPasswordState extends State<resetPassword> {

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
          child: Center(
            child: Column(
              children: [
                   
                
           
                
                SizedBox(
                  height: 60.h,
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
                  text: 'Sign In',
                  onPressed: () {},
                ),
                SizedBox(
                  height: 10.h,
                ),
                

              
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
