import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wyndok/utils/app_colors.dart';
import 'package:wyndok/utils/app_images.dart';
import 'package:wyndok/view/common_widgets/image/custom_image.dart';
import 'package:wyndok/view/common_widgets/text/custom_text.dart';

class ChatListItem extends StatelessWidget {
  ChatListItem({
    super.key,
    required this.image,
    required this.name,
    required this.message,
  });

  final String image;

  final String name;

  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 14.h),
      padding: EdgeInsets.all(12.sp),
      decoration: const BoxDecoration(color: AppColors.blueLight),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30.sp,
            child: ClipOval(
              child: CustomImage(
                imageSrc: image,
                imageType: ImageType.png,
                height: 60.sp,
                width: 60.sp,
              ),
            ),
          ),
          SizedBox(
            width: 12.w,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: name,
                fontWeight: FontWeight.w600,
                fontSize: 18.sp,
              ),
              CustomText(
                text: message,
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
              ),
            ],
          ))
        ],
      ),
    );
  }
}
