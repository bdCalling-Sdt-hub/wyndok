import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wyndok/utils/app_colors.dart';
import 'package:wyndok/view/common_widgets/text/custom_text.dart';

class ProfileItem extends StatelessWidget {
  ProfileItem({
    super.key,
    required this.icon,
    required this.title,
    this.disableDivider = false,
    this.onTap,
  });

  final IconData icon;
  final String title;
  final bool disableDivider;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            Row(
              children: [
                Icon(icon),
                CustomText(
                  text: title,
                  color: AppColors.greyscale700,
                  fontWeight: FontWeight.w400,
                  fontSize: 18.sp,
                  left: 16.w,
                ),
                const Spacer(),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 20.sp,
                )
              ],
            ),
            disableDivider ? const SizedBox() : const Divider()
          ],
        ),
      ),
    );
  }
}
