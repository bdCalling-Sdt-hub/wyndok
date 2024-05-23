import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wyndok/utils/app_colors.dart';
import 'package:wyndok/view/common_widgets/text/custom_text.dart';

class AppointmentRequestItem extends StatelessWidget {
  const AppointmentRequestItem(
      {super.key, required this.time, required this.text});

  final String time;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 22.h),
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
          color: AppColors.blueLight, borderRadius: BorderRadius.circular(4.r)),
      child: Row(
        children: [
          const Icon(
            Icons.date_range,
            color: AppColors.blue,
          ),
          SizedBox(
            width: 12.w,
          ),
          Flexible(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: time,
                fontSize: 18.sp,
                color: AppColors.blue,
              ),
              CustomText(
                text: text,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ],
          ))
        ],
      ),
    );
  }
}
