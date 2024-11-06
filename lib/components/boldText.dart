import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BoldTextWidget extends StatelessWidget {
  const BoldTextWidget({super.key, this.text, this.fontSize});
  final String? text;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? "text",
      style:
          TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize ?? 20.sp),
    );
  }
}
