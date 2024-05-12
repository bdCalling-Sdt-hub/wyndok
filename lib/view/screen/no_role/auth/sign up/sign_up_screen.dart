import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:wyndok/utils/app_colors.dart';
import 'package:wyndok/utils/app_icons.dart';
import 'package:wyndok/view/common_widgets/image/custom_image.dart';
import 'package:wyndok/view/common_widgets/text/custom_text.dart';
import 'package:wyndok/view/common_widgets/text_field/custom_text_field.dart';

import 'widget/sign_up_all_filed.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
        child: Column(
          children: [
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
          ],
        ),
      ),
    );
  }
}
