import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wyndok/utils/app_colors.dart';
import 'package:wyndok/view/common_widgets/text/custom_text.dart';

class DetailsItem extends StatelessWidget {
  DetailsItem(
      {super.key,
      required this.icon,
      required this.number,
      required this.title});

  final IconData icon;
  final String number;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 28.sp,
          backgroundColor: AppColors.greyscale200,
          child: ClipOval(
            child: Icon(icon, size: 30.sp,),
          ),
        ),
        CustomText(
          text: number,
          fontWeight: FontWeight.w700,
        ),
        CustomText(
          text: title,
          fontWeight: FontWeight.w400,
        )
      ],
    );
  }
}
