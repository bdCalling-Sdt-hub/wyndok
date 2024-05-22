import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wyndok/utils/app_colors.dart';
import 'package:wyndok/view/common_widgets/text/custom_text.dart';

class WeekItem extends StatelessWidget {
  const WeekItem({super.key, required this.title, required this.isSelected});

  final String title;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: isSelected ? AppColors.black : AppColors.transparent,
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(color: AppColors.blue, width: 0.5)),
      child: Center(
        child: CustomText(
          text: title,
          fontWeight: FontWeight.w600,
          fontSize: 16.sp,
          color: isSelected ? AppColors.white : AppColors.greyscale,
        ),
      ),
    );
  }
}
