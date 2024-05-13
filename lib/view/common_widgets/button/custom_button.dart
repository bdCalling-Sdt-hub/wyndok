import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String titleText;
  final Color titleColor;
  final Color buttonColor;
  final Color? borderColor;
  final double? borderWidth;
  final double? titleSize;
  final FontWeight titleWeight;
  final double? buttonRadius;
  final double? buttonHeight;
  final double? buttonWidth;

  const CustomButton(
      {this.onTap,
      required this.titleText,
      this.titleColor = AppColors.white,
      this.buttonColor = AppColors.primaryColor,
      this.titleSize,
      this.buttonRadius,
      this.titleWeight = FontWeight.w700,
      this.buttonHeight,
      this.borderWidth,
      this.buttonWidth = double.infinity,
      this.borderColor = AppColors.primaryColor,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonHeight ?? 58.h,
      width: buttonWidth,
      child: ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(buttonColor),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(buttonRadius ?? 50.r),
                side: BorderSide(
                    color: borderColor ?? AppColors.primaryColor,
                    width: borderWidth ?? 1.w),
              ),
            ),
            elevation: MaterialStateProperty.all(0)),
        child: Text(
          titleText,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: GoogleFonts.roboto(
              color: titleColor,
              fontSize: titleSize ?? 16.sp,
              fontWeight: titleWeight),
        ),
      ),
    );
  }
}
