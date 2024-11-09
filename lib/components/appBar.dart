import 'package:flutter/material.dart';
import 'package:waterdelivery/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waterdelivery/components/Text-style.dart';

class appBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackButton;

  
  final VoidCallback? onBackPressed;

  const appBar({
    Key? key,
    required this.title,
    this.showBackButton = true,
    
    this.onBackPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.appColor,
      elevation: 0,
      centerTitle: true,
      title: textStyle(text: title, fontSize: 20.sp, fontWeight: FontWeight.w500, color: AppColors.whiteColor),
      leading: showBackButton
          ? IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: onBackPressed ?? () => Navigator.pop(context),
            )
          : null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
