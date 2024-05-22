import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wyndok/controllers/auth/sign_up_controller.dart';
import 'package:wyndok/core/app_routes.dart';
import 'package:wyndok/utils/app_colors.dart';
import 'package:wyndok/view/common_widgets/button/custom_button.dart';

import '../../../../common_widgets/text/custom_text.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyUser extends StatelessWidget {
  const VerifyUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: "Forgot Password".tr,
          fontWeight: FontWeight.w700,
          fontSize: 24.sp,
        ),
      ),
      body: GetBuilder<SignUpController>(
        builder: (controller) {
          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 20.w),
            child: Column(
              children: [
                Center(
                  child: CustomText(
                    text: "${"Code has been send to".tr} 01999528645",
                    fontSize: 18.sp,
                    top: 100.h,
                    bottom: 60.h,
                  ),
                ),
                Flexible(
                  flex: 0,
                  child: PinCodeTextField(
                    autoDisposeControllers: false,
                    cursorColor: AppColors.black,
                    appContext: (context),
                    autoFocus: true,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(8),
                      fieldHeight: 60.h,
                      fieldWidth: 80.w,
                      activeFillColor: AppColors.transparent,
                      selectedFillColor: AppColors.orangeLightHover,
                      inactiveFillColor: AppColors.greyscale,
                      borderWidth: 0.5.w,
                      selectedColor: AppColors.transparent,
                      activeColor: AppColors.transparent,
                      inactiveColor: AppColors.transparent,
                    ),
                    length: 4,
                    keyboardType: TextInputType.number,
                    autovalidateMode: AutovalidateMode.disabled,
                    enableActiveFill: true,
                  ),
                ),
                CustomText(
                  text: "${"Resend code in".tr}  55",
                  top: 60.h,
                  bottom: 100.h,
                  fontSize: 18.sp,
                ),
                CustomButton(
                  titleText: "Verify".tr,
                  onTap: () => Get.toNamed(controller.selectRole == "Patient"
                      ? AppRoutes.signIn
                      : AppRoutes.personalInformation),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
