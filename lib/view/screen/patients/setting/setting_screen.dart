import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wyndok/controllers/patients/setting_controller.dart';
import 'package:wyndok/core/app_routes.dart';
import 'package:wyndok/utils/app_colors.dart';
import 'package:wyndok/view/screen/patients/setting/widget/delete_account.dart';

import '../../../common_widgets/text/custom_text.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomText(
          text: "Settings".tr,
          fontSize: 20.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: GetBuilder<SettingController>(
        builder: (controller) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              children: [
                SizedBox(
                  height: 70.h,
                ),
                GestureDetector(
                  onTap: () => Get.toNamed(AppRoutes.changePassword),
                  child: Container(
                    height: 52.h,
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    decoration: BoxDecoration(
                        color: AppColors.blueLight,
                        borderRadius: BorderRadius.circular(4.r)),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.lock_outline_rounded,
                          color: AppColors.greyscale700,
                        ),
                        CustomText(
                          text: "Change Password".tr,
                          color: AppColors.greyscale500,
                          left: 12.w,
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.greyscale700,
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => PopUp.deletePopUp(),
                  child: Container(
                    height: 52.h,
                    margin: EdgeInsets.only(top: 16.h),
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    decoration: BoxDecoration(
                        color: AppColors.blueLight,
                        borderRadius: BorderRadius.circular(4.r)),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.delete_outline_rounded,
                          color: AppColors.greyscale700,
                        ),
                        CustomText(
                          text: "Delete account".tr,
                          color: AppColors.greyscale500,
                          left: 12.w,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
