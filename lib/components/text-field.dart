import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';

class textField extends StatefulWidget {
  const textField(
      {super.key,
      required this.controller,
      required this.hintText,
      this.fontSize});
  final TextEditingController controller;
  final String hintText;
  final double? fontSize;

  @override
  State<textField> createState() => _textFieldState();
}

class _textFieldState extends State<textField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: AppColors.greyColor,
          fontSize: widget.fontSize ?? 13.sp,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
