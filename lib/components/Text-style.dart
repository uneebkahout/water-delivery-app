import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class textStyle extends StatelessWidget {
  const textStyle({
    super.key,
    this.text,
    this.fontSize,
    this.color,
    this.fontWeight,
  });
  final String? text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? "text",
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize ?? 19.sp,
        color: color,
      ),
    );
  }
}
