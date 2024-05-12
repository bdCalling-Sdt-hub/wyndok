import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_string.dart';
import 'button/custom_button.dart';
import 'text/custom_text.dart';

class NoInternet extends StatelessWidget {
  const NoInternet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("No Internet".tr),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
                child: Icon(
              Icons.wifi_off,
              size: 100,
            )),
            CustomText(
              text: "No Internet".tr,
              fontSize: 18.sp,
              top: 16.h,
            ),
            CustomText(
              text: "Check Internet".tr,
              top: 8.h,
              bottom: 20.h,
            ),
            CustomButton(
              onPressed: () => Get.back(),
              titleText: "Back".tr,
              buttonWidth: 80.w,
              buttonHeight: 40.h,
              buttonColor: AppColors.grey900,
            )
          ],
        ),
      ),
    );
  }
}
