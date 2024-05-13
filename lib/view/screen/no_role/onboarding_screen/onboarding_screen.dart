import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wyndok/core/app_routes.dart';
import 'package:wyndok/utils/app_icons.dart';
import 'package:wyndok/view/common_widgets/button/custom_button.dart';
import 'package:wyndok/view/common_widgets/image/custom_image.dart';
import 'package:wyndok/view/common_widgets/text/custom_text.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
        child: Column(
          children: [
            SizedBox(
              height: 163.h,
            ),
            Center(
              child: CustomImage(
                imageSrc: AppIcons.onBrodingOmage,
                height: 200.h,
              ),
            ),
            CustomText(
              text: "Lets you in",
              fontSize: 48.sp,
              top: 57.h,
              bottom: 57.h,
            ),
            CustomButton(
              titleText: "Sign in with password".tr,
              onTap: () => Get.toNamed(AppRoutes.signIn),
            ),
            SizedBox(
              height: 24.h,
            ),
            CustomButton(
              titleText: "Sign up".tr,
              onTap: () => Get.toNamed(AppRoutes.signUp),
            ),
          ],
        ),
      ),
    );
  }
}
