import 'package:flutter/material.dart';
import 'package:waterdelivery/components/Text-style.dart';
import 'package:waterdelivery/constants/colors.dart'; 
  import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  
  

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    

    
  }) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 300.w,
        height: 70.h,
        decoration: BoxDecoration(
          color: AppColors.appColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: textStyle(
            text: widget.text,
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.whiteColor),
        ),
      ),
    );
  }
}
