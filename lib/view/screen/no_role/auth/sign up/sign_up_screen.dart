import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:wyndok/core/app_routes.dart';
import 'package:wyndok/utils/app_colors.dart';
import 'package:wyndok/utils/app_icons.dart';
import 'package:wyndok/view/common_widgets/button/custom_button.dart';
import 'package:wyndok/view/common_widgets/image/custom_image.dart';
import 'package:wyndok/view/common_widgets/text/custom_text.dart';
import 'package:wyndok/view/common_widgets/text_field/custom_text_field.dart';

import '../../../../../controllers/auth/sign_up_controller.dart';
import 'widget/already_accunt_rich_text.dart';
import 'widget/sign_up_all_filed.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: GetBuilder<SignUpController>(
          builder: (controller) {
            return SingleChildScrollView(
              padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
              child: Column(children: [
                SizedBox(
                  height: 30.h,
                ),
                Center(
                  child: CustomImage(
                    imageSrc: AppIcons.logo,
                    height: 70.h,
                  ),
                ),
                CustomText(
                  text: "Create Your Account".tr,
                  fontSize: 32.sp,
                  bottom: 20.h,
                ),
                const SignUpAllField(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: RadioListTile(
                        title: CustomText(
                          text: controller.selectedOption[0],
                          textAlign: TextAlign.start,
                        ),
                        value: controller.selectedOption[0],
                        groupValue: controller.selectRole,
                        selected: true,
                        onChanged: (value) {
                          controller.setSelectedRole(value);
                        },
                      ),
                    ),
                    Expanded(
                      child: RadioListTile(
                        contentPadding: EdgeInsets.zero,
                        activeColor: AppColors.primaryColor,
                        title: CustomText(
                          text: controller.selectedOption[1],
                          textAlign: TextAlign.start,
                        ),
                        value: controller.selectedOption[1],
                        groupValue: controller.selectRole,
                        onChanged: (value) {
                          controller.setSelectedRole(value);
                        },
                      ),
                    ),
                  ],
                ),
                CustomButton(
                  titleText: "Sign up".tr,
                  onTap: () => Get.toNamed(AppRoutes.verifyUser),
                ),
                SizedBox(
                  height: 10.h,
                ),
                AlreadyAccountRichText()
              ]),
            );
          },
        ));
  }
}
