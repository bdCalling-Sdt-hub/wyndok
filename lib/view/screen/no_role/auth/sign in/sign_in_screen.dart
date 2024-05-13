import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wyndok/core/app_routes.dart';
import 'package:wyndok/utils/app_colors.dart';
import 'package:wyndok/view/common_widgets/button/custom_button.dart';

import '../../../../../utils/app_icons.dart';
import '../../../../common_widgets/image/custom_image.dart';
import '../../../../common_widgets/text/custom_text.dart';
import '../../../../common_widgets/text_field/custom_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
        child: Column(
          children: [
            Center(
              child: CustomImage(
                imageSrc: AppIcons.logo,
                height: 70.h,
              ),
            ),
            CustomText(
              text: "Login to Your Account".tr,
              fontSize: 32.sp,
              bottom: 20.h,
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomTextField(
              prefixIcon: const Icon(Icons.mail),
              labelText: "Email".tr,
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomTextField(
              prefixIcon: const Icon(Icons.lock),
              isPassword: true,
              labelText: "Password".tr,
            ),
            SizedBox(
              height: 24.h,
            ),
            CustomButton(
              titleText: "Sign in".tr,
              onTap: () => Get.toNamed(AppRoutes.patientsHome),
            ),
            GestureDetector(
              onTap: () => Get.toNamed(AppRoutes.forgotPassword),
              child: CustomText(
                text: "Forgot the password".tr,
                top: 24.h,
                color: AppColors.blue,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
